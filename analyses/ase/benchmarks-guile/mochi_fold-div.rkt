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
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7354
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7353)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7356
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7355)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7358
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7357)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7361 #t)) g7361)) g7269))))
                      (if x-cnd7360
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7359)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7364 #t)) g7364)) g7272))))
                      (if x-cnd7363
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7362)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7366
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7365)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7368
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7367)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7370
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7369)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7371
                     (lambda (k j v)
                       (letrec*
                        ((g7372
                          (letrec*
                           ((x-cnd7373
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7373
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7372))))
                   g7371)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7374
                     (lambda (k j v)
                       (letrec*
                        ((g7375
                          (letrec*
                           ((x-cnd7376
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7376
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7380
                                (letrec*
                                 ((x7381
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7381))))
                               (x7377
                                (letrec*
                                 ((x7379
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7378
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7379 k j x7378)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7380 x7377)))))))
                        g7375))))
                   g7374)))
               (any? (lambda (v) (letrec* ((g7382 #t)) g7382)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x7384
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7384)))))
                   g7383)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x-cnd7386
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7387
                                (letrec*
                                 ((x7388
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7388)))))
                              g7387))
                           g7284))))
                      (if x-cnd7386
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7385)))
               (meta (lambda (v) (letrec* ((g7389 v)) g7389)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7391
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7392
                             (letrec*
                              ((x7393
                                (letrec*
                                 ((x7395
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7394
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7395 x7394)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7393)))))
                           g7392))))
                      g7391))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7390
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7390)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7397
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7398
                             (letrec*
                              ((x7399
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7400
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7401 x7400)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7399)))))
                           g7398))))
                      g7397))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7396
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7396)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7403
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7404
                             (letrec*
                              ((x7405
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7406
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7407 x7406)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7405)))))
                           g7404))))
                      g7403))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7402
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7402)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7409
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7410
                             (letrec*
                              ((x7411
                                (letrec*
                                 ((x7413
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7412
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7413 x7412)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7411)))))
                           g7410))))
                      g7409))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7408
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7408)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7415
                        (lambda (g7305)
                          (letrec*
                           ((g7416
                             (letrec*
                              ((x7417
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7418)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7417)))))
                           g7416))))
                      g7415))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7414
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7414)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7420
                        (lambda (g7309)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7423
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7423)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7419)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7425
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7426
                             (letrec*
                              ((x7427
                                (letrec*
                                 ((x7429
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7428
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7429 x7428)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7427)))))
                           g7426))))
                      g7425))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7424
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7424)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7431
                        (lambda (g7318)
                          (letrec*
                           ((g7432
                             (letrec*
                              ((x7433
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7434)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7433)))))
                           g7432))))
                      g7431))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7430
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7430)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7436
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7437
                             (letrec*
                              ((x7438
                                (letrec*
                                 ((x7440
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7439
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7440 x7439)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7438)))))
                           g7437))))
                      g7436))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7435
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7435)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7441
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7441)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x7443
                        (letrec*
                         ((x7444
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7444)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7443)))))
                   g7442)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x7448
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7448))))
                    (g7446
                     (letrec*
                      ((x7449
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7449))))
                    (g7447
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7450
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7453
                           (letrec*
                            ((x7454
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7454))))
                          (x7451
                           (letrec*
                            ((x7452
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7452)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7453 x7451)))))))
                   g7447)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x7456
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7456)))))
                   g7455)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x7458
                        (letrec*
                         ((x7459
                           (letrec*
                            ((x7460
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7460)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7459)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7458)))))
                   g7457)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x7462
                        (letrec*
                         ((x7463
                           (letrec*
                            ((x7464
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7464)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7463)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7462)))))
                   g7461)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x7468
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7468))))
                    (g7466
                     (letrec*
                      ((x7469
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7469))))
                    (g7467
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
                       ((g7470
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7471 res))
                       g7471))))
                   g7467)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (letrec*
                         ((x7474
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7474)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7473)))))
                   g7472)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7476
                        (letrec*
                         ((x7477
                           (letrec*
                            ((x7478
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7478)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7477)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7476)))))
                   g7475)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7481))))
                    (g7480
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7482
                        #f
                        (letrec*
                         ((x-cnd7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7484 k)))))
                         (if x-cnd7483
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7485)))))))))
                   g7480)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7487)))))
                   g7486)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7490
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7490))))
                    (g7489
                     (letrec*
                      ((x-cnd7491
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7491
                        ""
                        (letrec*
                         ((x7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7495))))
                          (x7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7493)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7494 x7492)))))))
                   g7489)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7499))))
                    (g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7500))))
                    (g7498
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7501
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7501))))
                   g7498)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7503
                        (letrec*
                         ((x7504
                           (letrec*
                            ((x7505
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7505)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7504)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7503)))))
                   g7502)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x7509
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7509))))
                    (g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((x-cnd7511
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7511
                        x
                        (letrec*
                         ((x7513
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7512
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7513 x7512)))))))
                   g7508)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7514
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7514)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7515
                     (letrec*
                      ((x-cnd7516
                        (letrec*
                         ((x7517 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7517)))))
                      (if x-cnd7516
                        (letrec*
                         ((x7518 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7518)))
                        #f))))
                   g7515)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((x7521
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7521))))
                    (g7520
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7522
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7523 (if val7243 val7243 #f)))
                             g7523)))))
                       g7522))))
                   g7520)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7525
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7525 9)))))
                      (letrec*
                       ((g7526
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7527
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7527 10)))))
                            (letrec*
                             ((g7528
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7529
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7529 32))))))
                             g7528)))))
                       g7526))))
                   g7524)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7531
                        (letrec*
                         ((x7532
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7532)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7531)))))
                   g7530)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7535))))
                    (g7534
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7534)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7536 #f)) g7536)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7538)))))
                   g7537)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7541))))
                    (g7540
                     (letrec*
                      ((x-cnd7542
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7542
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7540)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7544
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7546
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7545
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7546 x7545)))))
                            (letrec*
                             ((g7547
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7550
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7549
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7548
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7550 x7549 x7548)))))
                                  (letrec*
                                   ((g7551
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7559
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7558
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7555
                                             (letrec*
                                              ((x7557
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7556
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7557 x7556))))
                                            (x7552
                                             (letrec*
                                              ((x7554
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7553
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7554 x7553)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7559 x7558 x7555 x7552)))))
                                        (letrec*
                                         ((g7560
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7576
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7575
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7561
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7562
                                                    (letrec*
                                                     ((x7573
                                                       (letrec*
                                                        ((x7574
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
                                                          (= x7574 n))))
                                                      (x7563
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7564
                                                               (letrec*
                                                                ((x7571
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7565
                                                                  (letrec*
                                                                   ((x7568
                                                                     (letrec*
                                                                      ((x7570
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
                                                                       (x7569
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
                                                                         x7570
                                                                         x7569))))
                                                                    (x7566
                                                                     (letrec*
                                                                      ((x7567
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
                                                                         x7567)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7568
                                                                          x7566)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7571
                                                                      x7565)))))
                                                             g7564))))
                                                        (letrec*
                                                         ((g7572
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7572))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7573 x7563)))))
                                                  g7562))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7576 x7575 x7561))))))
                                         g7560)))))
                                   g7551)))))
                             g7547)))))
                       g7544))))
                   g7543)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7580)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7579)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7578)))))
                   g7577)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7582
                        (letrec*
                         ((x7583
                           (letrec*
                            ((x7584
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7584)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7583)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7582)))))
                   g7581)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7585
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7585)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7588))))
                    (g7587
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7589
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7590 (if val7251 val7251 #f)))
                             g7590)))))
                       g7589))))
                   g7587)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7595))))
                    (g7593
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
                       ((g7596
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7597 res))
                       g7597))))
                   g7593)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7598
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7598)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7604
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7604))))
                   g7601)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (letrec*
                            ((x7611
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7611)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7610)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7609)))))
                   g7608)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7614)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7613)))))
                   g7612)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7623)))))
                   g7620)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (letrec*
                            ((x7627
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7627)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7626)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7630))))
                    (g7629
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7629)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7631
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7631)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7635
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7635)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7638))))
                    (g7637
                     (letrec*
                      ((x-cnd7639
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7639
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7643))))
                          (x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7641)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7642 x7640)))))))
                   g7637)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7647)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7646)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7645)))))
                   g7644)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7651)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7650)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7649)))))
                   g7648)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7654))))
                    (g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7655)))))
                   g7653)))
               (caadar
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
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7659)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7658)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7657)))))
                   g7656)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x-cnd7665
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7665
                        (letrec*
                         ((g7666
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7666)
                        (letrec*
                         ((x-cnd7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7668)))))
                         (if x-cnd7667
                           (letrec*
                            ((g7669
                              (letrec*
                               ((x7670
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7670)))))
                            g7669)
                           (letrec*
                            ((x-cnd7671
                              (letrec*
                               ((x7672
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7672)))))
                            (if x-cnd7671
                              (letrec*
                               ((g7673
                                 (letrec*
                                  ((x7675
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7674
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7675 x7674)))))
                               g7673)
                              (letrec*
                               ((x-cnd7676
                                 (letrec*
                                  ((x7677
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7677)))))
                               (if x-cnd7676
                                 (letrec*
                                  ((g7678
                                    (letrec*
                                     ((x7681
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7680
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7679
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7681 x7680 x7679)))))
                                  g7678)
                                 (letrec*
                                  ((x-cnd7682
                                    (letrec*
                                     ((x7683
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7683)))))
                                  (if x-cnd7682
                                    (letrec*
                                     ((g7684
                                       (letrec*
                                        ((x7688
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7687
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7686
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7685
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7688 x7687 x7686 x7685)))))
                                     g7684)
                                    (letrec*
                                     ((x-cnd7689
                                       (letrec*
                                        ((x7690
                                          (letrec*
                                           ((x7691
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7691)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7690)))))
                                     (if x-cnd7689
                                       (letrec*
                                        ((g7692
                                          (letrec*
                                           ((x7698
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7693
                                             (letrec*
                                              ((x7694
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7694)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7698
                                              x7697
                                              x7696
                                              x7695
                                              x7693)))))
                                        g7692)
                                       (letrec*
                                        ((x-cnd7699
                                          (letrec*
                                           ((x7700
                                             (letrec*
                                              ((x7701
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7701)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7700)))))
                                        (if x-cnd7699
                                          (letrec*
                                           ((g7702
                                             (letrec*
                                              ((x7710
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7709
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7708
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7707
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7705
                                                (letrec*
                                                 ((x7706
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7706))))
                                               (x7703
                                                (letrec*
                                                 ((x7704
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7704)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7710
                                                 x7709
                                                 x7708
                                                 x7707
                                                 x7705
                                                 x7703)))))
                                           g7702)
                                          (letrec*
                                           ((x-cnd7711
                                             (letrec*
                                              ((x7712
                                                (letrec*
                                                 ((x7713
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7713)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7712)))))
                                           (if x-cnd7711
                                             (letrec*
                                              ((g7714
                                                (letrec*
                                                 ((x7724
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7723
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7722
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7721
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7719
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7720))))
                                                  (x7717
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7718))))
                                                  (x7715
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7716)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7724
                                                    x7723
                                                    x7722
                                                    x7721
                                                    x7719
                                                    x7717
                                                    x7715)))))
                                              g7714)
                                             (letrec*
                                              ((g7725
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7725)))))))))))))))))))
                   g7662)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7728
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7728))))
                    (g7727
                     (letrec*
                      ((x-cnd7729
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7729
                        #f
                        (letrec*
                         ((x-cnd7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7731 e)))))
                         (if x-cnd7730
                           l
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7732)))))))))
                   g7727)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7735)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7738
                        (letrec*
                         ((x7739
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7739)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7738)))))
                   g7737)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7741
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7741)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7744))))
                    (g7743
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7743)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7746
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7746))))
                   g7745)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7748)))))
                   g7747)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7752
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7751)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7752 x7750)))))
                      (letrec*
                       ((g7753
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7753))))
                   g7749)))
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
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7757)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7756)))))
                      (begin
                        (write '(funapp 1161 23))
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
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7760 c)))))
                      (if x-cnd7759
                        (letrec*
                         ((x7761 #\9))
                         (begin
                           (write '(funapp 1170 48))
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
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (letrec*
                      ((x-cnd7765
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7765
                        #f
                        (letrec*
                         ((x-cnd7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7767 k)))))
                         (if x-cnd7766
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7768)))))))))
                   g7763)))
               (not (lambda (x) (letrec* ((g7769 (if x #f #t))) g7769)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7770
                     (begin
                       (write '(funapp 1192 50))
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
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7774
                        #f
                        (letrec*
                         ((x-cnd7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7776 e)))))
                         (if x-cnd7775
                           l
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
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
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7781)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7780)))))
                      (begin
                        (write '(funapp 1218 23))
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
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
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
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7786
                                0
                                (letrec*
                                 ((x7787
                                   (letrec*
                                    ((x7788
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7788)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7787)))))))
                           g7785))))
                      (letrec*
                       ((g7789
                         (begin
                           (write '(funapp 1239 40))
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
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7793))))
                    (g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7795
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
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
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
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
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7800)))))
                      (begin
                        (write '(funapp 1264 23))
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
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7803))))
                    (g7802
                     (letrec*
                      ((x-cnd7804
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7804
                        #f
                        (letrec*
                         ((x-cnd7805
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7806 k)))))
                         (if x-cnd7805
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
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
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
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
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7815)))))
                   g7812)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7817
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
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
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x-cnd7823
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7823
                        #t
                        (letrec*
                         ((x-cnd7824
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7824
                           (letrec*
                            ((g7825
                              (letrec*
                               ((x7827
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7827))))
                             (g7826
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7828)))))
                            g7826)
                           (begin
                             (write '(funapp 1322 27))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7831))))
                    (g7830
                     (letrec*
                      ((x-cnd7832
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7832
                        (begin
                          (write '(funapp 1329 67))
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
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7836))))
                    (g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7838
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
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
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7842)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7841)))))
                      (begin
                        (write '(funapp 1352 23))
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
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7847))))
                       (x7845
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
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
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7850))))
                    (g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
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
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7856))))
                    (g7853
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7857))))
                    (g7854
                     (letrec*
                      ((x7858
                        (letrec*
                         ((x7859
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7859)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7858))))
                    (g7855
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7860
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7862
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7861
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
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
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7864
                        a
                        (letrec*
                         ((x7865
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7865)))))))
                   g7863)))
               (foldl
                (lambda (f z l)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7867
                        z
                        (letrec*
                         ((x7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1408 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1408 61))
                              (display "\n")
                              (f z x7870))))
                          (x7868
                           (begin
                             (write '(funapp 1409 34))
                             (display "\n")
                             (cdr l))))
                         (begin
                           (write '(funapp 1410 26))
                           (display "\n")
                           (foldl f x7869 x7868)))))))
                   g7866)))
               (randpos
                (lambda (rand)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((n
                        (begin
                          (write '(funapp 1417 27))
                          (display "\n")
                          (rand))))
                      (letrec*
                       ((g7872
                         (letrec*
                          ((x-cnd7873
                            (begin
                              (write '(funapp 1421 39))
                              (display "\n")
                              (> n 0))))
                          (if x-cnd7873
                            n
                            (begin
                              (write '(funapp 1422 43))
                              (display "\n")
                              (randpos rand))))))
                       g7872))))
                   g7871)))
               (mk-list
                (lambda (rand n)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x-cnd7875
                        (begin
                          (write '(funapp 1430 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7875
                        empty
                        (letrec*
                         ((x7878
                           (begin
                             (write '(funapp 1434 34))
                             (display "\n")
                             (randpos rand)))
                          (x7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1436 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1436 55))
                              (display "\n")
                              (mk-list rand x7877)))))
                         (begin
                           (write '(funapp 1437 26))
                           (display "\n")
                           (cons x7878 x7876)))))))
                   g7874)))
               (main
                (lambda (rand n m)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7880
                        (begin
                          (write '(funapp 1443 39))
                          (display "\n")
                          (mk-list rand n))))
                      (begin
                        (write '(funapp 1443 58))
                        (display "\n")
                        (foldl / m x7880)))))
                   g7879))))
              (letrec*
               ((g7881
                 (letrec*
                  ((x7885
                    (begin
                      (write '(funapp 1449 21))
                      (display "\n")
                      ((lambda (j7330 k7331 f7332)
                         (letrec*
                          ((g7886
                            (lambda (g7327 g7328 g7329)
                              (letrec*
                               ((g7887
                                 (letrec*
                                  ((x7888
                                    (letrec*
                                     ((x7891
                                       (begin
                                         (write '(funapp 1459 38))
                                         (display "\n")
                                         ((lambda (j7333 k7334 f7335)
                                            (letrec*
                                             ((g7892
                                               (lambda ()
                                                 (letrec*
                                                  ((g7893
                                                    (letrec*
                                                     ((x7894
                                                       (begin
                                                         (write
                                                          '(funapp 1466 58))
                                                         (display "\n")
                                                         (f7335))))
                                                     (begin
                                                       (write
                                                        '(funapp 1467 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7333
                                                        k7334
                                                        x7894)))))
                                                  g7893))))
                                             g7892))
                                          j7330
                                          k7331
                                          g7327)))
                                      (x7890
                                       (begin
                                         (write '(funapp 1476 44))
                                         (display "\n")
                                         (integer?/c j7330 k7331 g7328)))
                                      (x7889
                                       (begin
                                         (write '(funapp 1477 44))
                                         (display "\n")
                                         (integer?/c j7330 k7331 g7329))))
                                     (begin
                                       (write '(funapp 1478 36))
                                       (display "\n")
                                       (f7332 x7891 x7890 x7889)))))
                                  (begin
                                    (write '(funapp 1479 33))
                                    (display "\n")
                                    (real?/c j7330 k7331 x7888)))))
                               g7887))))
                          g7886))
                       (begin (write '(funapp 1482 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1483 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7884 (input))
                   (x7883 (input))
                   (x7882 (input)))
                  (begin
                    (write '(funapp 1488 19))
                    (display "\n")
                    (x7885 x7884 x7883 x7882)))))
               g7881))))
           g7349))))
       g7347)))
    g7346)))
