(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7345 #t)) g7345)))
    (meta (lambda (v) (letrec* ((g7346 v)) g7346)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7347
          (letrec*
           ((g7348
             (letrec*
              ((x-e7349 lst))
              (letrec*
               ((v1742 x-e7349))
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
                   ((x-cnd7350
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7350
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
           g7348)))
        g7347)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7351 (lambda (v) (letrec* ((g7352 v)) g7352)))) g7351)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7353
          (letrec*
           ((x7354 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7354)))))
        g7353))))
   (letrec*
    ((g7355
      (letrec*
       ((g7356
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
           ((g7357 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7358
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7359
                     (lambda (k j lst)
                       (letrec*
                        ((g7360
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7361
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7361))
                             lst))))
                        g7360))))
                   g7359)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7363
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7362)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7365
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7364)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7367
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7366)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7370 #t)) g7370)) g7269))))
                      (if x-cnd7369
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7368)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7373 #t)) g7373)) g7272))))
                      (if x-cnd7372
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7371)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7375
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7374)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7377
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7376)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7379
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7378)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7380
                     (lambda (k j v)
                       (letrec*
                        ((g7381
                          (letrec*
                           ((x-cnd7382
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7382
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7381))))
                   g7380)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7383
                     (lambda (k j v)
                       (letrec*
                        ((g7384
                          (letrec*
                           ((x-cnd7385
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7385
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7389
                                (letrec*
                                 ((x7390
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7390))))
                               (x7386
                                (letrec*
                                 ((x7388
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7387
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7388 k j x7387)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7389 x7386)))))))
                        g7384))))
                   g7383)))
               (any? (lambda (v) (letrec* ((g7391 #t)) g7391)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7392
                     (letrec*
                      ((x7393
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7393)))))
                   g7392)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7394
                     (letrec*
                      ((x-cnd7395
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7396
                                (letrec*
                                 ((x7397
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7397)))))
                              g7396))
                           g7284))))
                      (if x-cnd7395
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7394)))
               (meta (lambda (v) (letrec* ((g7398 v)) g7398)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7400
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7401
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7403
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7404 x7403)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7402)))))
                           g7401))))
                      g7400))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7399
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7399)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7406
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7409
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7410 x7409)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7408)))))
                           g7407))))
                      g7406))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7405
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7405)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7412
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7415
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7416 x7415)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7414)))))
                           g7413))))
                      g7412))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7411
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7411)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7418
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7419
                             (letrec*
                              ((x7420
                                (letrec*
                                 ((x7422
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7421
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7422 x7421)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7420)))))
                           g7419))))
                      g7418))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7417
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7417)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7424
                        (lambda (g7305)
                          (letrec*
                           ((g7425
                             (letrec*
                              ((x7426
                                (letrec*
                                 ((x7427
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7427)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7426)))))
                           g7425))))
                      g7424))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7423
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7423)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7429
                        (lambda (g7309)
                          (letrec*
                           ((g7430
                             (letrec*
                              ((x7431
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7432)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7431)))))
                           g7430))))
                      g7429))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7428
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7428)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7434
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7435
                             (letrec*
                              ((x7436
                                (letrec*
                                 ((x7438
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7437
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7438 x7437)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7436)))))
                           g7435))))
                      g7434))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7433
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7433)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7440
                        (lambda (g7318)
                          (letrec*
                           ((g7441
                             (letrec*
                              ((x7442
                                (letrec*
                                 ((x7443
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7443)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7442)))))
                           g7441))))
                      g7440))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7439
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7439)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7445
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7446
                             (letrec*
                              ((x7447
                                (letrec*
                                 ((x7449
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7448
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7449 x7448)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7447)))))
                           g7446))))
                      g7445))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7444
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7444)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7450
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7450)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x7452
                        (letrec*
                         ((x7453
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7453)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7452)))))
                   g7451)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x7457
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7457))))
                    (g7455
                     (letrec*
                      ((x7458
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7458))))
                    (g7456
                     (letrec*
                      ((x-cnd7459
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7459
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7462
                           (letrec*
                            ((x7463
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7463))))
                          (x7460
                           (letrec*
                            ((x7461
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7461)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7462 x7460)))))))
                   g7456)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x7465
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7465)))))
                   g7464)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7467
                        (letrec*
                         ((x7468
                           (letrec*
                            ((x7469
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7469)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7468)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7467)))))
                   g7466)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7471
                        (letrec*
                         ((x7472
                           (letrec*
                            ((x7473
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7473)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7472)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7471)))))
                   g7470)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7477
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7477))))
                    (g7475
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7478))))
                    (g7476
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
                       ((g7479
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7480 res))
                       g7480))))
                   g7476)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7482
                        (letrec*
                         ((x7483
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7483)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7482)))))
                   g7481)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7485
                        (letrec*
                         ((x7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7487)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7486)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7485)))))
                   g7484)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7490
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7490))))
                    (g7489
                     (letrec*
                      ((x-cnd7491
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7491
                        #f
                        (letrec*
                         ((x-cnd7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7493 k)))))
                         (if x-cnd7492
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7494
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7494)))))))))
                   g7489)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7495
                     (letrec*
                      ((x7496
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7496)))))
                   g7495)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7499))))
                    (g7498
                     (letrec*
                      ((x-cnd7500
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7500
                        ""
                        (letrec*
                         ((x7503
                           (letrec*
                            ((x7504
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7504))))
                          (x7501
                           (letrec*
                            ((x7502
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7502)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7503 x7501)))))))
                   g7498)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7505
                     (letrec*
                      ((x7508
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7508))))
                    (g7506
                     (letrec*
                      ((x7509
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7509))))
                    (g7507
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7510
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7510))))
                   g7507)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7512
                        (letrec*
                         ((x7513
                           (letrec*
                            ((x7514
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7514)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7513)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7512)))))
                   g7511)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7515
                     (letrec*
                      ((x7518
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7518))))
                    (g7516
                     (letrec*
                      ((x7519
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7519))))
                    (g7517
                     (letrec*
                      ((x-cnd7520
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7520
                        x
                        (letrec*
                         ((x7522
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7521
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7522 x7521)))))))
                   g7517)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7523
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7523)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x-cnd7525
                        (letrec*
                         ((x7526 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7526)))))
                      (if x-cnd7525
                        (letrec*
                         ((x7527 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7527)))
                        #f))))
                   g7524)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((x7530
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7530))))
                    (g7529
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7531
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7532 (if val7243 val7243 #f)))
                             g7532)))))
                       g7531))))
                   g7529)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7534
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7534 9)))))
                      (letrec*
                       ((g7535
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7536
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7536 10)))))
                            (letrec*
                             ((g7537
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7538
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7538 32))))))
                             g7537)))))
                       g7535))))
                   g7533)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7540
                        (letrec*
                         ((x7541
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7541)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7540)))))
                   g7539)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x7544
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7544))))
                    (g7543
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7543)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7545 #f)) g7545)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7546
                     (letrec*
                      ((x7547
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7547)))))
                   g7546)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x7550
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7550))))
                    (g7549
                     (letrec*
                      ((x-cnd7551
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7551
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7549)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7552
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7553
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7555
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7554
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7555 x7554)))))
                            (letrec*
                             ((g7556
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7559
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7558
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7557
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7559 x7558 x7557)))))
                                  (letrec*
                                   ((g7560
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7568
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7567
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7564
                                             (letrec*
                                              ((x7566
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7565
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7566 x7565))))
                                            (x7561
                                             (letrec*
                                              ((x7563
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7562
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7563 x7562)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7568 x7567 x7564 x7561)))))
                                        (letrec*
                                         ((g7569
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7585
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7584
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7570
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7571
                                                    (letrec*
                                                     ((x7582
                                                       (letrec*
                                                        ((x7583
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
                                                          (= x7583 n))))
                                                      (x7572
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7573
                                                               (letrec*
                                                                ((x7580
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7574
                                                                  (letrec*
                                                                   ((x7577
                                                                     (letrec*
                                                                      ((x7579
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
                                                                       (x7578
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
                                                                         x7579
                                                                         x7578))))
                                                                    (x7575
                                                                     (letrec*
                                                                      ((x7576
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
                                                                         x7576)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7577
                                                                          x7575)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7580
                                                                      x7574)))))
                                                             g7573))))
                                                        (letrec*
                                                         ((g7581
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7581))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7582 x7572)))))
                                                  g7571))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7585 x7584 x7570))))))
                                         g7569)))))
                                   g7560)))))
                             g7556)))))
                       g7553))))
                   g7552)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7587
                        (letrec*
                         ((x7588
                           (letrec*
                            ((x7589
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7589)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7588)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7587)))))
                   g7586)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7591
                        (letrec*
                         ((x7592
                           (letrec*
                            ((x7593
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7593)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7592)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7591)))))
                   g7590)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7594
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7594)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7597))))
                    (g7596
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7598
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7599 (if val7251 val7251 #f)))
                             g7599)))))
                       g7598))))
                   g7596)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7604))))
                    (g7602
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
                       ((g7605
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7606 res))
                       g7606))))
                   g7602)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7607
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7607)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7613
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7613))))
                   g7610)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7616)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7615)))))
                   g7614)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7620)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7619)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7618)))))
                   g7617)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7623)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7622)))))
                   g7621)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7626)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7631))))
                    (g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7632)))))
                   g7629)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7636)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7634)))))
                   g7633)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7639))))
                    (g7638
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7638)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7640
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7640)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7644
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7644)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (letrec*
                      ((x-cnd7648
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7648
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7652))))
                          (x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7650)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7651 x7649)))))))
                   g7646)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7654
                        (letrec*
                         ((x7655
                           (letrec*
                            ((x7656
                              (begin
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7656)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7654)))))
                   g7653)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7660)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7659)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7658)))))
                   g7657)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7663))))
                    (g7662
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7664)))))
                   g7662)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7666
                        (letrec*
                         ((x7667
                           (letrec*
                            ((x7668
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7668)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7667)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7666)))))
                   g7665)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7669
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7672))))
                    (g7670
                     (letrec*
                      ((x7673
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7673))))
                    (g7671
                     (letrec*
                      ((x-cnd7674
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7674
                        (letrec*
                         ((g7675
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7675)
                        (letrec*
                         ((x-cnd7676
                           (letrec*
                            ((x7677
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7677)))))
                         (if x-cnd7676
                           (letrec*
                            ((g7678
                              (letrec*
                               ((x7679
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7679)))))
                            g7678)
                           (letrec*
                            ((x-cnd7680
                              (letrec*
                               ((x7681
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7681)))))
                            (if x-cnd7680
                              (letrec*
                               ((g7682
                                 (letrec*
                                  ((x7684
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7683
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7684 x7683)))))
                               g7682)
                              (letrec*
                               ((x-cnd7685
                                 (letrec*
                                  ((x7686
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7686)))))
                               (if x-cnd7685
                                 (letrec*
                                  ((g7687
                                    (letrec*
                                     ((x7690
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7689
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7688
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7690 x7689 x7688)))))
                                  g7687)
                                 (letrec*
                                  ((x-cnd7691
                                    (letrec*
                                     ((x7692
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7692)))))
                                  (if x-cnd7691
                                    (letrec*
                                     ((g7693
                                       (letrec*
                                        ((x7697
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7696
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7695
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7694
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7697 x7696 x7695 x7694)))))
                                     g7693)
                                    (letrec*
                                     ((x-cnd7698
                                       (letrec*
                                        ((x7699
                                          (letrec*
                                           ((x7700
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7700)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7699)))))
                                     (if x-cnd7698
                                       (letrec*
                                        ((g7701
                                          (letrec*
                                           ((x7707
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7706
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7705
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7704
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7702
                                             (letrec*
                                              ((x7703
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7703)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7707
                                              x7706
                                              x7705
                                              x7704
                                              x7702)))))
                                        g7701)
                                       (letrec*
                                        ((x-cnd7708
                                          (letrec*
                                           ((x7709
                                             (letrec*
                                              ((x7710
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7710)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7709)))))
                                        (if x-cnd7708
                                          (letrec*
                                           ((g7711
                                             (letrec*
                                              ((x7719
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7718
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7717
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7716
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7714
                                                (letrec*
                                                 ((x7715
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7715))))
                                               (x7712
                                                (letrec*
                                                 ((x7713
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7713)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7719
                                                 x7718
                                                 x7717
                                                 x7716
                                                 x7714
                                                 x7712)))))
                                           g7711)
                                          (letrec*
                                           ((x-cnd7720
                                             (letrec*
                                              ((x7721
                                                (letrec*
                                                 ((x7722
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7722)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7721)))))
                                           (if x-cnd7720
                                             (letrec*
                                              ((g7723
                                                (letrec*
                                                 ((x7733
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7732
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7731
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7730
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7728
                                                   (letrec*
                                                    ((x7729
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7729))))
                                                  (x7726
                                                   (letrec*
                                                    ((x7727
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7727))))
                                                  (x7724
                                                   (letrec*
                                                    ((x7725
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7725)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7733
                                                    x7732
                                                    x7731
                                                    x7730
                                                    x7728
                                                    x7726
                                                    x7724)))))
                                              g7723)
                                             (letrec*
                                              ((g7734
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7734)))))))))))))))))))
                   g7671)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7737))))
                    (g7736
                     (letrec*
                      ((x-cnd7738
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7738
                        #f
                        (letrec*
                         ((x-cnd7739
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7740 e)))))
                         (if x-cnd7739
                           l
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7741)))))))))
                   g7736)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (letrec*
                         ((x7744
                           (letrec*
                            ((x7745
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7745)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7744)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7743)))))
                   g7742)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7749)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7748)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7750
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7750)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7752)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7755
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7755))))
                   g7754)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7757)))))
                   g7756)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7761
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7759
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7760)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7761 x7759)))))
                      (letrec*
                       ((g7762
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7762))))
                   g7758)))
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
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7766)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7765)))))
                      (begin
                        (write '(funapp 1161 23))
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
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7769 c)))))
                      (if x-cnd7768
                        (letrec*
                         ((x7770 #\9))
                         (begin
                           (write '(funapp 1170 48))
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
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7773))))
                    (g7772
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7774
                        #f
                        (letrec*
                         ((x-cnd7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7776 k)))))
                         (if x-cnd7775
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7777)))))))))
                   g7772)))
               (not (lambda (x) (letrec* ((g7778 (if x #f #t))) g7778)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7779
                     (begin
                       (write '(funapp 1192 50))
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
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((x-cnd7783
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7783
                        #f
                        (letrec*
                         ((x-cnd7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7785 e)))))
                         (if x-cnd7784
                           l
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
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
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7790)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7789)))))
                      (begin
                        (write '(funapp 1218 23))
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
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
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
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7795
                                0
                                (letrec*
                                 ((x7796
                                   (letrec*
                                    ((x7797
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7797)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7796)))))))
                           g7794))))
                      (letrec*
                       ((g7798
                         (begin
                           (write '(funapp 1239 40))
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
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7803))))
                    (g7801
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7804
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
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
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
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
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7809)))))
                      (begin
                        (write '(funapp 1264 23))
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
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7812))))
                    (g7811
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7813
                        #f
                        (letrec*
                         ((x-cnd7814
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7815 k)))))
                         (if x-cnd7814
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7816
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
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
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
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
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7824)))))
                   g7821)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7826
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
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
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((x-cnd7832
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7832
                        #t
                        (letrec*
                         ((x-cnd7833
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7833
                           (letrec*
                            ((g7834
                              (letrec*
                               ((x7836
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7836))))
                             (g7835
                              (letrec*
                               ((x7837
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7837)))))
                            g7835)
                           (begin
                             (write '(funapp 1322 27))
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
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (letrec*
                      ((x-cnd7841
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7841
                        (begin
                          (write '(funapp 1329 67))
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
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7846))))
                    (g7844
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7847
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
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
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7851)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7850)))))
                      (begin
                        (write '(funapp 1352 23))
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
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7856))))
                       (x7854
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
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
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7859))))
                    (g7858
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
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
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7865))))
                    (g7862
                     (letrec*
                      ((x7866
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7866))))
                    (g7863
                     (letrec*
                      ((x7867
                        (letrec*
                         ((x7868
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7868)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7867))))
                    (g7864
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7869
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7870
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
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
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7873
                        a
                        (letrec*
                         ((x7874
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7874)))))))
                   g7872)))
               (f
                (lambda (g)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7879
                        (begin (write '(funapp 1404 31)) (display "\n") (x y)))
                       (x7876
                        (letrec*
                         ((x7878
                           (begin
                             (write '(funapp 1407 34))
                             (display "\n")
                             (+ x 1)))
                          (x7877
                           (begin
                             (write '(funapp 1407 50))
                             (display "\n")
                             (+ y 1))))
                         (begin
                           (write '(funapp 1408 26))
                           (display "\n")
                           (g x7878 x7877)))))
                      (begin
                        (write '(funapp 1409 23))
                        (display "\n")
                        (λ x7879 x7876)))))
                   g7875)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x-cnd7881
                        (begin
                          (write '(funapp 1416 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7881
                        (begin
                          (write '(funapp 1418 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x7883
                           (begin
                             (write '(funapp 1420 34))
                             (display "\n")
                             (- x 1)))
                          (x7882
                           (begin
                             (write '(funapp 1420 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1421 26))
                           (display "\n")
                           (unzip x7883 x7882)))))))
                   g7880)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x-cnd7885
                        (begin
                          (write '(funapp 1428 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7885
                        (letrec*
                         ((x-cnd7886
                           (begin
                             (write '(funapp 1430 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7886
                           0
                           (begin
                             (write '(funapp 1430 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd7887
                           (begin
                             (write '(funapp 1432 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7887
                           (begin
                             (write '(funapp 1434 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x7888
                              (letrec*
                               ((x7890
                                 (begin
                                   (write '(funapp 1438 40))
                                   (display "\n")
                                   (- x 1)))
                                (x7889
                                 (begin
                                   (write '(funapp 1438 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1439 32))
                                 (display "\n")
                                 (zip x7890 x7889)))))
                            (begin
                              (write '(funapp 1440 29))
                              (display "\n")
                              (+ 1 x7888)))))))))
                   g7884)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7891
                     (begin
                       (write '(funapp 1442 51))
                       (display "\n")
                       (unzip n zip))))
                   g7891))))
              (letrec*
               ((g7892
                 (letrec*
                  ((x7895
                    (begin
                      (write '(funapp 1447 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7896
                            (lambda (g7327)
                              (letrec*
                               ((g7897
                                 (letrec*
                                  ((x7898
                                    (letrec*
                                     ((x7899
                                       (begin
                                         (write '(funapp 1457 38))
                                         (display "\n")
                                         ((lambda (j7338 k7339 f7340)
                                            (letrec*
                                             ((g7900
                                               (lambda (g7336 g7337)
                                                 (letrec*
                                                  ((g7901
                                                    (letrec*
                                                     ((x7902
                                                       (letrec*
                                                        ((x7904
                                                          (begin
                                                            (write
                                                             '(funapp 1467 55))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7338
                                                             k7339
                                                             g7336)))
                                                         (x7903
                                                          (begin
                                                            (write
                                                             '(funapp 1472 55))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7338
                                                             k7339
                                                             g7337))))
                                                        (begin
                                                          (write
                                                           '(funapp 1476 53))
                                                          (display "\n")
                                                          (f7340
                                                           x7904
                                                           x7903)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1477 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7338
                                                        k7339
                                                        x7902)))))
                                                  g7901))))
                                             g7900))
                                          j7328
                                          k7329
                                          g7327))))
                                     (begin
                                       (write '(funapp 1486 36))
                                       (display "\n")
                                       (f7330 x7899)))))
                                  (begin
                                    (write '(funapp 1487 33))
                                    (display "\n")
                                    ((lambda (j7333 k7334 f7335)
                                       (letrec*
                                        ((g7905
                                          (lambda (g7331 g7332)
                                            (letrec*
                                             ((g7906
                                               (letrec*
                                                ((x7907
                                                  (letrec*
                                                   ((x7909
                                                     (begin
                                                       (write
                                                        '(funapp 1497 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7333
                                                        k7334
                                                        g7331)))
                                                    (x7908
                                                     (begin
                                                       (write
                                                        '(funapp 1502 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7333
                                                        k7334
                                                        g7332))))
                                                   (begin
                                                     (write '(funapp 1506 48))
                                                     (display "\n")
                                                     (f7335 x7909 x7908)))))
                                                (begin
                                                  (write '(funapp 1507 45))
                                                  (display "\n")
                                                  (integer?/c
                                                   j7333
                                                   k7334
                                                   x7907)))))
                                             g7906))))
                                        g7905))
                                     j7328
                                     k7329
                                     x7898)))))
                               g7897))))
                          g7896))
                       (begin (write '(funapp 1515 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1516 21))
                         (display "\n")
                         'importer)
                       f)))
                   (x7894 (input)))
                  (begin
                    (write '(funapp 1519 19))
                    (display "\n")
                    (x7895 x7894))))
                (g7893
                 (letrec*
                  ((x7911
                    (begin
                      (write '(funapp 1523 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7912
                            (lambda (g7341)
                              (letrec*
                               ((g7913
                                 (letrec*
                                  ((x7914
                                    (letrec*
                                     ((x7915
                                       (begin
                                         (write '(funapp 1532 44))
                                         (display "\n")
                                         (integer?/c j7342 k7343 g7341))))
                                     (begin
                                       (write '(funapp 1533 36))
                                       (display "\n")
                                       (f7344 x7915)))))
                                  (begin
                                    (write '(funapp 1534 33))
                                    (display "\n")
                                    (integer?/c j7342 k7343 x7914)))))
                               g7913))))
                          g7912))
                       (begin (write '(funapp 1537 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1538 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7910 (input)))
                  (begin
                    (write '(funapp 1541 19))
                    (display "\n")
                    (x7911 x7910)))))
               g7893))))
           g7358))))
       g7356)))
    g7355)))
