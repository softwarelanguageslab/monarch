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
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7358
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7357)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7360
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7359)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7362
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7361)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7365 #t)) g7365)) g7269))))
                      (if x-cnd7364
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7363)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7368 #t)) g7368)) g7272))))
                      (if x-cnd7367
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7366)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7370
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7369)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7372
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7371)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7374
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7373)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7375
                     (lambda (k j v)
                       (letrec*
                        ((g7376
                          (letrec*
                           ((x-cnd7377
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7377
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7376))))
                   g7375)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7378
                     (lambda (k j v)
                       (letrec*
                        ((g7379
                          (letrec*
                           ((x-cnd7380
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7380
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7384
                                (letrec*
                                 ((x7385
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7385))))
                               (x7381
                                (letrec*
                                 ((x7383
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7382
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7383 k j x7382)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7384 x7381)))))))
                        g7379))))
                   g7378)))
               (any? (lambda (v) (letrec* ((g7386 #t)) g7386)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7387
                     (letrec*
                      ((x7388
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7388)))))
                   g7387)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7389
                     (letrec*
                      ((x-cnd7390
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7391
                                (letrec*
                                 ((x7392
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7392)))))
                              g7391))
                           g7284))))
                      (if x-cnd7390
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7389)))
               (meta (lambda (v) (letrec* ((g7393 v)) g7393)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7395
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7396
                             (letrec*
                              ((x7397
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7398
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7399 x7398)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7397)))))
                           g7396))))
                      g7395))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7394
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7394)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7401
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7402
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7404
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7405 x7404)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7403)))))
                           g7402))))
                      g7401))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7400
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7400)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7407
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7408
                             (letrec*
                              ((x7409
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7410
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7411 x7410)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7409)))))
                           g7408))))
                      g7407))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7406
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7406)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7413
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7414
                             (letrec*
                              ((x7415
                                (letrec*
                                 ((x7417
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7416
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7417 x7416)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7415)))))
                           g7414))))
                      g7413))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7412
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7412)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7419
                        (lambda (g7305)
                          (letrec*
                           ((g7420
                             (letrec*
                              ((x7421
                                (letrec*
                                 ((x7422
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7422)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7421)))))
                           g7420))))
                      g7419))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7418
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7418)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7424
                        (lambda (g7309)
                          (letrec*
                           ((g7425
                             (letrec*
                              ((x7426
                                (letrec*
                                 ((x7427
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7427)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7426)))))
                           g7425))))
                      g7424))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7423
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7423)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7429
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7430
                             (letrec*
                              ((x7431
                                (letrec*
                                 ((x7433
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7432
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7433 x7432)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7431)))))
                           g7430))))
                      g7429))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7428
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7428)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7435
                        (lambda (g7318)
                          (letrec*
                           ((g7436
                             (letrec*
                              ((x7437
                                (letrec*
                                 ((x7438
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7438)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7437)))))
                           g7436))))
                      g7435))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7434
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7434)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7440
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7441
                             (letrec*
                              ((x7442
                                (letrec*
                                 ((x7444
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7443
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7444 x7443)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7442)))))
                           g7441))))
                      g7440))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7439
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7439)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7445
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7445)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x7447
                        (letrec*
                         ((x7448
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7448)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7447)))))
                   g7446)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x7452
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7452))))
                    (g7450
                     (letrec*
                      ((x7453
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7453))))
                    (g7451
                     (letrec*
                      ((x-cnd7454
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7454
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7457
                           (letrec*
                            ((x7458
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7458))))
                          (x7455
                           (letrec*
                            ((x7456
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7456)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7457 x7455)))))))
                   g7451)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x7460
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7460)))))
                   g7459)))
               (cadadr
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7464)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7463)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7462)))))
                   g7461)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7468)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7467)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7466)))))
                   g7465)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7472
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7472))))
                    (g7470
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7473))))
                    (g7471
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
                       ((g7474
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7475 res))
                       g7475))))
                   g7471)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7477
                        (letrec*
                         ((x7478
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7478)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7477)))))
                   g7476)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7480
                        (letrec*
                         ((x7481
                           (letrec*
                            ((x7482
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7482)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7481)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7480)))))
                   g7479)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7485))))
                    (g7484
                     (letrec*
                      ((x-cnd7486
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7486
                        #f
                        (letrec*
                         ((x-cnd7487
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7488 k)))))
                         (if x-cnd7487
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7489)))))))))
                   g7484)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7491)))))
                   g7490)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7494))))
                    (g7493
                     (letrec*
                      ((x-cnd7495
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7495
                        ""
                        (letrec*
                         ((x7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7499))))
                          (x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7497)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7498 x7496)))))))
                   g7493)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7503
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7503))))
                    (g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7504))))
                    (g7502
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7505
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7505))))
                   g7502)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x7507
                        (letrec*
                         ((x7508
                           (letrec*
                            ((x7509
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7509)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7508)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7507)))))
                   g7506)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7513))))
                    (g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7514))))
                    (g7512
                     (letrec*
                      ((x-cnd7515
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7515
                        x
                        (letrec*
                         ((x7517
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7516
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7517 x7516)))))))
                   g7512)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7518
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7518)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((x-cnd7520
                        (letrec*
                         ((x7521 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7521)))))
                      (if x-cnd7520
                        (letrec*
                         ((x7522 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7522)))
                        #f))))
                   g7519)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7523
                     (letrec*
                      ((x7525
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7525))))
                    (g7524
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7526
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7527 (if val7243 val7243 #f)))
                             g7527)))))
                       g7526))))
                   g7524)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7529
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7529 9)))))
                      (letrec*
                       ((g7530
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7531
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7531 10)))))
                            (letrec*
                             ((g7532
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7533
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7533 32))))))
                             g7532)))))
                       g7530))))
                   g7528)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7535
                        (letrec*
                         ((x7536
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7536)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7535)))))
                   g7534)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7539))))
                    (g7538
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7538)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7540 #f)) g7540)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7542)))))
                   g7541)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7545))))
                    (g7544
                     (letrec*
                      ((x-cnd7546
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7546
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7544)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7548
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7550
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7549
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7550 x7549)))))
                            (letrec*
                             ((g7551
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7554
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7553
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7552
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7554 x7553 x7552)))))
                                  (letrec*
                                   ((g7555
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7563
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7562
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7559
                                             (letrec*
                                              ((x7561
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7560
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7561 x7560))))
                                            (x7556
                                             (letrec*
                                              ((x7558
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7557
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7558 x7557)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7563 x7562 x7559 x7556)))))
                                        (letrec*
                                         ((g7564
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7580
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7579
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7565
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7566
                                                    (letrec*
                                                     ((x7577
                                                       (letrec*
                                                        ((x7578
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
                                                          (= x7578 n))))
                                                      (x7567
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7568
                                                               (letrec*
                                                                ((x7575
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7569
                                                                  (letrec*
                                                                   ((x7572
                                                                     (letrec*
                                                                      ((x7574
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
                                                                       (x7573
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
                                                                         x7574
                                                                         x7573))))
                                                                    (x7570
                                                                     (letrec*
                                                                      ((x7571
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
                                                                         x7571)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7572
                                                                          x7570)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7575
                                                                      x7569)))))
                                                             g7568))))
                                                        (letrec*
                                                         ((g7576
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7576))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7577 x7567)))))
                                                  g7566))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7580 x7579 x7565))))))
                                         g7564)))))
                                   g7555)))))
                             g7551)))))
                       g7548))))
                   g7547)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7584)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7583)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7582)))))
                   g7581)))
               (caaddr
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
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7588)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7587)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7586)))))
                   g7585)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7589
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7589)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7592))))
                    (g7591
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7593
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7594 (if val7251 val7251 #f)))
                             g7594)))))
                       g7593))))
                   g7591)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7599))))
                    (g7597
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
                       ((g7600
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7601 res))
                       g7601))))
                   g7597)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7602
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7602)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7606))))
                    (g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7608
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7608))))
                   g7605)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (letrec*
                            ((x7615
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7615)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7618)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7627)))))
                   g7624)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (letrec*
                            ((x7631
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7631)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7629)))))
                   g7628)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7633)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7635
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7635)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7637)))))
                   g7636)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7639
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7639)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7642))))
                    (g7641
                     (letrec*
                      ((x-cnd7643
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7643
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7647))))
                          (x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7645)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7646 x7644)))))))
                   g7641)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7651)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7650)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7649)))))
                   g7648)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7655)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7654)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7653)))))
                   g7652)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7658))))
                    (g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7659)))))
                   g7657)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7661
                        (letrec*
                         ((x7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7663)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7662)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7661)))))
                   g7660)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x-cnd7669
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7669
                        (letrec*
                         ((g7670
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7670)
                        (letrec*
                         ((x-cnd7671
                           (letrec*
                            ((x7672
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7672)))))
                         (if x-cnd7671
                           (letrec*
                            ((g7673
                              (letrec*
                               ((x7674
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7674)))))
                            g7673)
                           (letrec*
                            ((x-cnd7675
                              (letrec*
                               ((x7676
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7676)))))
                            (if x-cnd7675
                              (letrec*
                               ((g7677
                                 (letrec*
                                  ((x7679
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7678
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7679 x7678)))))
                               g7677)
                              (letrec*
                               ((x-cnd7680
                                 (letrec*
                                  ((x7681
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7681)))))
                               (if x-cnd7680
                                 (letrec*
                                  ((g7682
                                    (letrec*
                                     ((x7685
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7684
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7683
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7685 x7684 x7683)))))
                                  g7682)
                                 (letrec*
                                  ((x-cnd7686
                                    (letrec*
                                     ((x7687
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7687)))))
                                  (if x-cnd7686
                                    (letrec*
                                     ((g7688
                                       (letrec*
                                        ((x7692
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7691
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7690
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7689
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7692 x7691 x7690 x7689)))))
                                     g7688)
                                    (letrec*
                                     ((x-cnd7693
                                       (letrec*
                                        ((x7694
                                          (letrec*
                                           ((x7695
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7695)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7694)))))
                                     (if x-cnd7693
                                       (letrec*
                                        ((g7696
                                          (letrec*
                                           ((x7702
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7701
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7697
                                             (letrec*
                                              ((x7698
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7698)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7702
                                              x7701
                                              x7700
                                              x7699
                                              x7697)))))
                                        g7696)
                                       (letrec*
                                        ((x-cnd7703
                                          (letrec*
                                           ((x7704
                                             (letrec*
                                              ((x7705
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7705)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7704)))))
                                        (if x-cnd7703
                                          (letrec*
                                           ((g7706
                                             (letrec*
                                              ((x7714
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7713
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7712
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7711
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7709
                                                (letrec*
                                                 ((x7710
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7710))))
                                               (x7707
                                                (letrec*
                                                 ((x7708
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7708)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7714
                                                 x7713
                                                 x7712
                                                 x7711
                                                 x7709
                                                 x7707)))))
                                           g7706)
                                          (letrec*
                                           ((x-cnd7715
                                             (letrec*
                                              ((x7716
                                                (letrec*
                                                 ((x7717
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7717)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7716)))))
                                           (if x-cnd7715
                                             (letrec*
                                              ((g7718
                                                (letrec*
                                                 ((x7728
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7727
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7726
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7725
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7723
                                                   (letrec*
                                                    ((x7724
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7724))))
                                                  (x7721
                                                   (letrec*
                                                    ((x7722
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7722))))
                                                  (x7719
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7720)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7728
                                                    x7727
                                                    x7726
                                                    x7725
                                                    x7723
                                                    x7721
                                                    x7719)))))
                                              g7718)
                                             (letrec*
                                              ((g7729
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7729)))))))))))))))))))
                   g7666)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7732))))
                    (g7731
                     (letrec*
                      ((x-cnd7733
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7733
                        #f
                        (letrec*
                         ((x-cnd7734
                           (letrec*
                            ((x7735
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7735 e)))))
                         (if x-cnd7734
                           l
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7736)))))))))
                   g7731)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7740)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7739)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7738)))))
                   g7737)))
               (cadddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7744)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7743)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7745
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7745)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7748))))
                    (g7747
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7747)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7750
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7750))))
                   g7749)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7752)))))
                   g7751)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7756
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7755)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7756 x7754)))))
                      (letrec*
                       ((g7757
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7757))))
                   g7753)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7761)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x-cnd7763
                        (letrec*
                         ((x7764 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7764 c)))))
                      (if x-cnd7763
                        (letrec*
                         ((x7765 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7765)))
                        #f))))
                   g7762)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        #f
                        (letrec*
                         ((x-cnd7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7771 k)))))
                         (if x-cnd7770
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7772)))))))))
                   g7767)))
               (not (lambda (x) (letrec* ((g7773 (if x #f #t))) g7773)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7774
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7774)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7777))))
                    (g7776
                     (letrec*
                      ((x-cnd7778
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7778
                        #f
                        (letrec*
                         ((x-cnd7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7780 e)))))
                         (if x-cnd7779
                           l
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7781)))))))))
                   g7776)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7784)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7789
                             (letrec*
                              ((x-cnd7790
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7790
                                0
                                (letrec*
                                 ((x7791
                                   (letrec*
                                    ((x7792
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7792)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7791)))))))
                           g7789))))
                      (letrec*
                       ((g7793
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7793))))
                   g7787)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7799
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7799))))
                   g7796)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7801)))))
                   g7800)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (letrec*
                         ((x7804
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7804)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7803)))))
                   g7802)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7807))))
                    (g7806
                     (letrec*
                      ((x-cnd7808
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7808
                        #f
                        (letrec*
                         ((x-cnd7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7810 k)))))
                         (if x-cnd7809
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7811)))))))))
                   g7806)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7813)))))
                   g7812)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7819)))))
                   g7816)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7821
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7821))))
                   g7820)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7827
                        #t
                        (letrec*
                         ((x-cnd7828
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7828
                           (letrec*
                            ((g7829
                              (letrec*
                               ((x7831
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7831))))
                             (g7830
                              (letrec*
                               ((x7832
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7832)))))
                            g7830)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7824)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7835))))
                    (g7834
                     (letrec*
                      ((x-cnd7836
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7836
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7834)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7840))))
                    (g7838
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7841))))
                    (g7839
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7842
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7842))))
                   g7839)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7844
                        (letrec*
                         ((x7845
                           (letrec*
                            ((x7846
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7846)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7845)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7844)))))
                   g7843)))
               (newline (lambda () (letrec* ((g7847 #f)) g7847)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7851))))
                       (x7849
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7850 x7849)))))
                   g7848)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7855)))))
                   g7853)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7860))))
                    (g7857
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7861))))
                    (g7858
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7863)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7862))))
                    (g7859
                     (letrec*
                      ((x-cnd7864
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7864
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7866
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7865
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7866 x7865)))))))
                   g7859)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x-cnd7868
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7868
                        a
                        (letrec*
                         ((x7869
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7869)))))))
                   g7867)))
               (f
                (lambda (g x)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (>= x 0))))
                      (if x-cnd7871
                        (begin (write '(funapp 1406 25)) (display "\n") (g x))
                        (letrec*
                         ((x7873
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1410 37))
                                (display "\n")
                                (x)))
                             (x7874
                              (begin
                                (write '(funapp 1410 49))
                                (display "\n")
                                (f g x))))
                            (begin
                              (write '(funapp 1411 29))
                              (display "\n")
                              (λ x7875 x7874))))
                          (x7872
                           (begin
                             (write '(funapp 1412 34))
                             (display "\n")
                             (g x))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (f x7873 x7872)))))))
                   g7870)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7876
                     (begin
                       (write '(funapp 1415 51))
                       (display "\n")
                       (f add1 n))))
                   g7876))))
              (letrec*
               ((g7877
                 (letrec*
                  ((x7881
                    (begin
                      (write '(funapp 1420 21))
                      (display "\n")
                      ((lambda (j7329 k7330 f7331)
                         (letrec*
                          ((g7882
                            (lambda (g7327 g7328)
                              (letrec*
                               ((g7883
                                 (letrec*
                                  ((x7884
                                    (letrec*
                                     ((x7886
                                       (begin
                                         (write '(funapp 1430 38))
                                         (display "\n")
                                         ((lambda (j7333 k7334 f7335)
                                            (letrec*
                                             ((g7887
                                               (lambda (g7332)
                                                 (letrec*
                                                  ((g7888
                                                    (letrec*
                                                     ((x7889
                                                       (letrec*
                                                        ((x7890
                                                          (begin
                                                            (write
                                                             '(funapp 1440 55))
                                                            (display "\n")
                                                            (integer?
                                                             j7333
                                                             k7334
                                                             g7332))))
                                                        (begin
                                                          (write
                                                           '(funapp 1444 53))
                                                          (display "\n")
                                                          (f7335 x7890)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1445 50))
                                                       (display "\n")
                                                       (integer?
                                                        j7333
                                                        k7334
                                                        x7889)))))
                                                  g7888))))
                                             g7887))
                                          j7329
                                          k7330
                                          g7327)))
                                      (x7885
                                       (begin
                                         (write '(funapp 1454 44))
                                         (display "\n")
                                         (integer? j7329 k7330 g7328))))
                                     (begin
                                       (write '(funapp 1455 36))
                                       (display "\n")
                                       (f7331 x7886 x7885)))))
                                  (begin
                                    (write '(funapp 1456 33))
                                    (display "\n")
                                    (integer? j7329 k7330 x7884)))))
                               g7883))))
                          g7882))
                       (begin (write '(funapp 1459 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1460 21))
                         (display "\n")
                         'importer)
                       f)))
                   (x7880 (input))
                   (x7879 (input)))
                  (begin
                    (write '(funapp 1464 19))
                    (display "\n")
                    (x7881 x7880 x7879))))
                (g7878
                 (letrec*
                  ((x7892
                    (begin
                      (write '(funapp 1468 21))
                      (display "\n")
                      ((lambda (j7337 k7338 f7339)
                         (letrec*
                          ((g7893
                            (lambda (g7336)
                              (letrec*
                               ((g7894
                                 (letrec*
                                  ((x7897
                                    (letrec*
                                     ((x7898
                                       (begin
                                         (write '(funapp 1477 44))
                                         (display "\n")
                                         (>=/c 0))))
                                     (begin
                                       (write '(funapp 1478 36))
                                       (display "\n")
                                       (and/c integer? x7898))))
                                   (x7895
                                    (letrec*
                                     ((x7896
                                       (begin
                                         (write '(funapp 1481 44))
                                         (display "\n")
                                         (integer? j7337 k7338 g7336))))
                                     (begin
                                       (write '(funapp 1482 36))
                                       (display "\n")
                                       (f7339 x7896)))))
                                  (begin
                                    (write '(funapp 1483 33))
                                    (display "\n")
                                    (x7897 j7337 k7338 x7895)))))
                               g7894))))
                          g7893))
                       (begin (write '(funapp 1486 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1487 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7891 (input)))
                  (begin
                    (write '(funapp 1490 19))
                    (display "\n")
                    (x7892 x7891)))))
               g7878))))
           g7353))))
       g7351)))
    g7350)))
