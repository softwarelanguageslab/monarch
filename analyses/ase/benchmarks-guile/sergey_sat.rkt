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
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7269))))
                      (if x-cnd7354
                        g7269
                        (begin
                          (write '(blame g7267 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7353)))
               (boolean?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7272))))
                      (if x-cnd7356
                        g7272
                        (begin
                          (write '(blame g7270 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7355)))
               (number?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7275))))
                      (if x-cnd7358
                        g7275
                        (begin
                          (write '(blame g7273 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7357)))
               (any/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7361 #t)) g7361)) g7278))))
                      (if x-cnd7360
                        g7278
                        (begin
                          (write '(blame g7276 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7359)))
               (any?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7364 #t)) g7364)) g7281))))
                      (if x-cnd7363
                        g7281
                        (begin
                          (write '(blame g7279 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7362)))
               (cons?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7284))))
                      (if x-cnd7366
                        g7284
                        (begin
                          (write '(blame g7282 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7365)))
               (pair?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7287))))
                      (if x-cnd7368
                        g7287
                        (begin
                          (write '(blame g7285 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7367)))
               (integer?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7290))))
                      (if x-cnd7370
                        g7290
                        (begin
                          (write '(blame g7288 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
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
                (lambda (g7291 g7292 g7293)
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
                           g7293))))
                      (if x-cnd7386
                        g7293
                        (begin
                          (write '(blame g7291 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
                   g7385)))
               (meta (lambda (v) (letrec* ((g7389 v)) g7389)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7391
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7392
                             (letrec*
                              ((x7393
                                (letrec*
                                 ((x7395
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7394
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7298 x7395 x7394)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7393)))))
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
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7397
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7398
                             (letrec*
                              ((x7399
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7400
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7303 x7401 x7400)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7399)))))
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
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7403
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7404
                             (letrec*
                              ((x7405
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7406
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7308 x7407 x7406)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7405)))))
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
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7409
                        (lambda (g7309 g7310)
                          (letrec*
                           ((g7410
                             (letrec*
                              ((x7411
                                (letrec*
                                 ((x7413
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7311 k7312 g7309)))
                                  (x7412
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7313 x7413 x7412)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7311 k7312 x7411)))))
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
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7415
                        (lambda (g7314)
                          (letrec*
                           ((g7416
                             (letrec*
                              ((x7417
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7317 x7418)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7315 k7316 x7417)))))
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
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7420
                        (lambda (g7318)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7423
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7321 x7423)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7319 k7320 x7422)))))
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
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7425
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7426
                             (letrec*
                              ((x7427
                                (letrec*
                                 ((x7429
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7324 k7325 g7322)))
                                  (x7428
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7326 x7429 x7428)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7324 k7325 x7427)))))
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
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7431
                        (lambda (g7327)
                          (letrec*
                           ((g7432
                             (letrec*
                              ((x7433
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7330 x7434)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7328 k7329 x7433)))))
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
                  ((lambda (j7333 k7334 f7335)
                     (letrec*
                      ((g7436
                        (lambda (g7331 g7332)
                          (letrec*
                           ((g7437
                             (letrec*
                              ((x7438
                                (letrec*
                                 ((x7440
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7333 k7334 g7331)))
                                  (x7439
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7333 k7334 g7332))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7335 x7440 x7439)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7333 k7334 x7438)))))
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
                               ((x-cnd7545
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7545
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7546
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7547
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7547
                                       (letrec*
                                        ((x-cnd7548
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7548
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7549
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7550
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7550
                                             (letrec*
                                              ((x-cnd7551
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7551
                                                (letrec*
                                                 ((x-cnd7552
                                                   (letrec*
                                                    ((x7554
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7553
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7554 x7553)))))
                                                 (if x-cnd7552
                                                   (letrec*
                                                    ((x7556
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7555
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7556 x7555)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7557
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7558
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7558
                                                (letrec*
                                                 ((x-cnd7559
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7559
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7560
                                                       (letrec*
                                                        ((x-cnd7561
                                                          (letrec*
                                                           ((x7562
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
                                                             (= x7562 n)))))
                                                        (if x-cnd7561
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7563
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
                                                                    ((g7564
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7565
                                                                           (letrec*
                                                                            ((x7567
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
                                                                             (x7566
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
                                                                               x7567
                                                                               x7566)))))
                                                                         (if x-cnd7565
                                                                           (letrec*
                                                                            ((x7568
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
                                                                               x7568)))
                                                                           #f)))))
                                                                    g7564))))
                                                                g7563))))
                                                           (letrec*
                                                            ((g7569
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7569))
                                                          #f))))
                                                     g7560))
                                                   #f))
                                                #f)))))
                                         g7557)))))
                                   g7549)))))
                             g7546)))))
                       g7544))))
                   g7543)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7571
                        (letrec*
                         ((x7572
                           (letrec*
                            ((x7573
                              (begin
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7573)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7572)))))
                      (begin
                        (write '(funapp 749 23))
                        (display "\n")
                        (cdr x7571)))))
                   g7570)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7574
                     (letrec*
                      ((x7575
                        (letrec*
                         ((x7576
                           (letrec*
                            ((x7577
                              (begin
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7577)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7576)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7575)))))
                   g7574)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7578
                     (begin
                       (write '(funapp 762 53))
                       (display "\n")
                       (eq? x y))))
                   g7578)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7581
                        (begin
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7581))))
                    (g7580
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7582
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7583 (if val7252 val7252 #f)))
                             g7583)))))
                       g7582))))
                   g7580)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7587))))
                    (g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7588))))
                    (g7586
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
                       ((g7589
                         (begin
                           (write '(funapp 793 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7590 res))
                       g7590))))
                   g7586)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7591
                     (begin
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7591)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7597
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7597))))
                   g7594)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (letrec*
                         ((x7600
                           (begin
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7600)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (cdr x7599)))))
                   g7598)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7604)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 826 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (begin
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7607)))))
                      (begin
                        (write '(funapp 835 23))
                        (display "\n")
                        (car x7606)))))
                   g7605)))
               (caadr
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
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7610)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7609)))))
                   g7608)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
                        (display "\n")
                        (not x7616)))))
                   g7613)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7620)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7619)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7618)))))
                   g7617)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7623))))
                    (g7622
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7622)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7624
                     (begin
                       (write '(funapp 870 53))
                       (display "\n")
                       (memq e l))))
                   g7624)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (begin
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7626)))))
                   g7625)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7628
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7628)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7631))))
                    (g7630
                     (letrec*
                      ((x-cnd7632
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7632
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7636))))
                          (x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7634)))))
                         (begin
                           (write '(funapp 892 26))
                           (display "\n")
                           (append x7635 x7633)))))))
                   g7630)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7640)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 903 23))
                        (display "\n")
                        (car x7638)))))
                   g7637)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7643)))))
                      (begin
                        (write '(funapp 914 23))
                        (display "\n")
                        (cdr x7642)))))
                   g7641)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
                        (display "\n")
                        (= 1 x7648)))))
                   g7646)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7650
                        (letrec*
                         ((x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7652)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 931 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7658
                        (letrec*
                         ((g7659
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7659)
                        (letrec*
                         ((x-cnd7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7661)))))
                         (if x-cnd7660
                           (letrec*
                            ((g7662
                              (letrec*
                               ((x7663
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7663)))))
                            g7662)
                           (letrec*
                            ((x-cnd7664
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7665)))))
                            (if x-cnd7664
                              (letrec*
                               ((g7666
                                 (letrec*
                                  ((x7668
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7667
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7668 x7667)))))
                               g7666)
                              (letrec*
                               ((x-cnd7669
                                 (letrec*
                                  ((x7670
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7670)))))
                               (if x-cnd7669
                                 (letrec*
                                  ((g7671
                                    (letrec*
                                     ((x7674
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7673
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7672
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7674 x7673 x7672)))))
                                  g7671)
                                 (letrec*
                                  ((x-cnd7675
                                    (letrec*
                                     ((x7676
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7676)))))
                                  (if x-cnd7675
                                    (letrec*
                                     ((g7677
                                       (letrec*
                                        ((x7681
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7680
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7679
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7678
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
                                          (display "\n")
                                          (proc x7681 x7680 x7679 x7678)))))
                                     g7677)
                                    (letrec*
                                     ((x-cnd7682
                                       (letrec*
                                        ((x7683
                                          (letrec*
                                           ((x7684
                                             (begin
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7684)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7683)))))
                                     (if x-cnd7682
                                       (letrec*
                                        ((g7685
                                          (letrec*
                                           ((x7691
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7690
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7689
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7688
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7686
                                             (letrec*
                                              ((x7687
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7687)))))
                                           (begin
                                             (write '(funapp 1011 44))
                                             (display "\n")
                                             (proc
                                              x7691
                                              x7690
                                              x7689
                                              x7688
                                              x7686)))))
                                        g7685)
                                       (letrec*
                                        ((x-cnd7692
                                          (letrec*
                                           ((x7693
                                             (letrec*
                                              ((x7694
                                                (begin
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7694)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7693)))))
                                        (if x-cnd7692
                                          (letrec*
                                           ((g7695
                                             (letrec*
                                              ((x7703
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7702
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7701
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7700
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7698
                                                (letrec*
                                                 ((x7699
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7699))))
                                               (x7696
                                                (letrec*
                                                 ((x7697
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7697)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (proc
                                                 x7703
                                                 x7702
                                                 x7701
                                                 x7700
                                                 x7698
                                                 x7696)))))
                                           g7695)
                                          (letrec*
                                           ((x-cnd7704
                                             (letrec*
                                              ((x7705
                                                (letrec*
                                                 ((x7706
                                                   (begin
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7706)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7705)))))
                                           (if x-cnd7704
                                             (letrec*
                                              ((g7707
                                                (letrec*
                                                 ((x7717
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7716
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7715
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7714
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7712
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7713))))
                                                  (x7710
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7711))))
                                                  (x7708
                                                   (letrec*
                                                    ((x7709
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7709)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
                                                   (display "\n")
                                                   (proc
                                                    x7717
                                                    x7716
                                                    x7715
                                                    x7714
                                                    x7712
                                                    x7710
                                                    x7708)))))
                                              g7707)
                                             (letrec*
                                              ((g7718
                                                (begin
                                                  (write '(funapp 1089 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7718)))))))))))))))))))
                   g7655)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7721))))
                    (g7720
                     (letrec*
                      ((x-cnd7722
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7722
                        #f
                        (letrec*
                         ((x-cnd7723
                           (letrec*
                            ((x7724
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7724 e)))))
                         (if x-cnd7723
                           l
                           (letrec*
                            ((x7725
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
                              (display "\n")
                              (member e x7725)))))))))
                   g7720)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7727
                        (letrec*
                         ((x7728
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7729)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7728)))))
                      (begin
                        (write '(funapp 1117 23))
                        (display "\n")
                        (cdr x7727)))))
                   g7726)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7732)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7734
                     (begin
                       (write '(funapp 1130 53))
                       (display "\n")
                       (random 42))))
                   g7734)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7737))))
                    (g7736
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7736)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7739
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7739))))
                   g7738)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7743
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7743
                           (letrec*
                            ((x7744
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x7744)))
                           #f))))
                      (letrec*
                       ((g7745
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g7745))))
                   g7742)))
               (cddaar
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
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x7749)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x7748)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x7747)))))
                   g7746)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x-cnd7751
                        (letrec*
                         ((x7752 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x7752 c)))))
                      (if x-cnd7751
                        (letrec*
                         ((x7753 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x7753)))
                        #f))))
                   g7750)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7757
                        #f
                        (letrec*
                         ((x-cnd7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x7759 k)))))
                         (if x-cnd7758
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x7760)))))))))
                   g7755)))
               (not (lambda (x) (letrec* ((g7761 (if x #f #t))) g7761)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7762
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g7762)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        #f
                        (letrec*
                         ((x-cnd7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x7768 e)))))
                         (if x-cnd7767
                           l
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x7769)))))))))
                   g7764)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7777
                             (letrec*
                              ((x-cnd7778
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7778
                                0
                                (letrec*
                                 ((x7779
                                   (letrec*
                                    ((x7780
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x7780)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x7779)))))))
                           g7777))))
                      (letrec*
                       ((g7781
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g7781))))
                   g7775)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x7785))))
                    (g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7787
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7787))))
                   g7784)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x7789)))))
                   g7788)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x7791)))))
                   g7790)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        #f
                        (letrec*
                         ((x-cnd7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x7798 k)))))
                         (if x-cnd7797
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x7799)))))))))
                   g7794)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x7801)))))
                   g7800)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x7807)))))
                   g7804)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7809
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7809))))
                   g7808)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7815
                        #t
                        (letrec*
                         ((x-cnd7816
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7816
                           (letrec*
                            ((g7817
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x7819))))
                             (g7818
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x7820)))))
                            g7818)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g7812)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x7823))))
                    (g7822
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7824
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7822)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7830
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7830))))
                   g7827)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7832
                        (letrec*
                         ((x7833
                           (letrec*
                            ((x7834
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7834)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7833)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x7832)))))
                   g7831)))
               (newline (lambda () (letrec* ((g7835 #f)) g7835)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7838
                        (letrec*
                         ((x7839
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x7839))))
                       (x7837
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x7838 x7837)))))
                   g7836)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x7842))))
                    (g7841
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x7843)))))
                   g7841)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x7848))))
                    (g7845
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x7849))))
                    (g7846
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x7851)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x7850))))
                    (g7847
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7852
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x7853
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x7854 x7853)))))))
                   g7847)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7856
                        a
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x7857)))))))
                   g7855)))
               (phi
                (letrec*
                 ((x7883 (begin (write '(funapp 1417 26)) (display "\n") (x1)))
                  (x7858
                   (letrec*
                    ((x7882
                      (begin (write '(funapp 1420 29)) (display "\n") (x2)))
                     (x7859
                      (letrec*
                       ((x7881
                         (begin (write '(funapp 1423 32)) (display "\n") (x3)))
                        (x7860
                         (letrec*
                          ((x7880
                            (begin
                              (write '(funapp 1426 35))
                              (display "\n")
                              (x4)))
                           (x7861
                            (letrec*
                             ((x7879
                               (begin
                                 (write '(funapp 1429 38))
                                 (display "\n")
                                 (x5)))
                              (x7862
                               (letrec*
                                ((x7878
                                  (begin
                                    (write '(funapp 1432 41))
                                    (display "\n")
                                    (x6)))
                                 (x7863
                                  (letrec*
                                   ((x7877
                                     (begin
                                       (write '(funapp 1435 44))
                                       (display "\n")
                                       (x7)))
                                    (x7864
                                     (letrec*
                                      ((x-cnd7865
                                        (letrec*
                                         ((val7259 x1))
                                         (letrec*
                                          ((g7866 (if val7259 val7259 x2)))
                                          g7866))))
                                      (if x-cnd7865
                                        (letrec*
                                         ((x-cnd7867
                                           (letrec*
                                            ((val7260 x1))
                                            (letrec*
                                             ((g7868
                                               (if val7260
                                                 val7260
                                                 (letrec*
                                                  ((val7261
                                                    (begin
                                                      (write '(funapp 1454 61))
                                                      (display "\n")
                                                      (not x2))))
                                                  (letrec*
                                                   ((g7869
                                                     (if val7261
                                                       val7261
                                                       (begin
                                                         (write
                                                          '(funapp 1459 56))
                                                         (display "\n")
                                                         (not x3)))))
                                                   g7869)))))
                                             g7868))))
                                         (if x-cnd7867
                                           (letrec*
                                            ((x-cnd7870
                                              (letrec*
                                               ((val7262 x3))
                                               (letrec*
                                                ((g7871
                                                  (if val7262 val7262 x4)))
                                                g7871))))
                                            (if x-cnd7870
                                              (letrec*
                                               ((x-cnd7872
                                                 (letrec*
                                                  ((val7263
                                                    (begin
                                                      (write '(funapp 1475 61))
                                                      (display "\n")
                                                      (not x4))))
                                                  (letrec*
                                                   ((g7873
                                                     (if val7263 val7263 x1)))
                                                   g7873))))
                                               (if x-cnd7872
                                                 (letrec*
                                                  ((x-cnd7874
                                                    (letrec*
                                                     ((val7264
                                                       (begin
                                                         (write
                                                          '(funapp 1484 64))
                                                         (display "\n")
                                                         (not x2))))
                                                     (letrec*
                                                      ((g7875
                                                        (if val7264
                                                          val7264
                                                          (begin
                                                            (write
                                                             '(funapp 1489 59))
                                                            (display "\n")
                                                            (not x3)))))
                                                      g7875))))
                                                  (if x-cnd7874
                                                    (letrec*
                                                     ((val7265 x4))
                                                     (letrec*
                                                      ((g7876
                                                        (if val7265
                                                          val7265
                                                          x2)))
                                                      g7876))
                                                    #f))
                                                 #f))
                                              #f))
                                           #f))
                                        #f))))
                                   (begin
                                     (write '(funapp 1505 36))
                                     (display "\n")
                                     (λ x7877 x7864)))))
                                (begin
                                  (write '(funapp 1506 33))
                                  (display "\n")
                                  (λ x7878 x7863)))))
                             (begin
                               (write '(funapp 1507 30))
                               (display "\n")
                               (λ x7879 x7862)))))
                          (begin
                            (write '(funapp 1508 27))
                            (display "\n")
                            (λ x7880 x7861)))))
                       (begin
                         (write '(funapp 1509 24))
                         (display "\n")
                         (λ x7881 x7860)))))
                    (begin
                      (write '(funapp 1510 21))
                      (display "\n")
                      (λ x7882 x7859)))))
                 (begin
                   (write '(funapp 1511 18))
                   (display "\n")
                   (λ x7883 x7858))))
               (try
                (letrec*
                 ((x7886 (begin (write '(funapp 1514 26)) (display "\n") (f)))
                  (x7884
                   (letrec*
                    ((val7266
                      (begin (write '(funapp 1517 31)) (display "\n") (f #t))))
                    (letrec*
                     ((g7885
                       (if val7266
                         val7266
                         (begin
                           (write '(funapp 1518 58))
                           (display "\n")
                           (f #f)))))
                     g7885))))
                 (begin
                   (write '(funapp 1519 18))
                   (display "\n")
                   (λ x7886 x7884))))
               (sat-solve-7
                (letrec*
                 ((x7915 (begin (write '(funapp 1522 26)) (display "\n") (p)))
                  (x7887
                   (letrec*
                    ((x7888
                      (letrec*
                       ((x7914
                         (begin (write '(funapp 1527 32)) (display "\n") (n1)))
                        (x7889
                         (letrec*
                          ((x7890
                            (letrec*
                             ((x7913
                               (begin
                                 (write '(funapp 1532 38))
                                 (display "\n")
                                 (n2)))
                              (x7891
                               (letrec*
                                ((x7892
                                  (letrec*
                                   ((x7912
                                     (begin
                                       (write '(funapp 1537 44))
                                       (display "\n")
                                       (n3)))
                                    (x7893
                                     (letrec*
                                      ((x7894
                                        (letrec*
                                         ((x7911
                                           (begin
                                             (write '(funapp 1542 50))
                                             (display "\n")
                                             (n4)))
                                          (x7895
                                           (letrec*
                                            ((x7896
                                              (letrec*
                                               ((x7910
                                                 (begin
                                                   (write '(funapp 1547 56))
                                                   (display "\n")
                                                   (n5)))
                                                (x7897
                                                 (letrec*
                                                  ((x7898
                                                    (letrec*
                                                     ((x7909
                                                       (begin
                                                         (write
                                                          '(funapp 1552 62))
                                                         (display "\n")
                                                         (n6)))
                                                      (x7899
                                                       (letrec*
                                                        ((x7900
                                                          (letrec*
                                                           ((x7908
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1557
                                                                  68))
                                                               (display "\n")
                                                               (n7)))
                                                            (x7901
                                                             (letrec*
                                                              ((x7902
                                                                (letrec*
                                                                 ((x7903
                                                                   (letrec*
                                                                    ((x7904
                                                                      (letrec*
                                                                       ((x7905
                                                                         (letrec*
                                                                          ((x7906
                                                                            (letrec*
                                                                             ((x7907
                                                                               (begin
                                                                                 (write
                                                                                  '(funapp
                                                                                    1571
                                                                                    80))
                                                                                 (display
                                                                                  "\n")
                                                                                 (p
                                                                                  n1))))
                                                                             (begin
                                                                               (write
                                                                                '(funapp
                                                                                  1573
                                                                                  78))
                                                                               (display
                                                                                "\n")
                                                                               (x7907
                                                                                n2)))))
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               1575
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (x7906
                                                                             n3)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            1577
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x7905
                                                                          n4)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1579
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (x7904
                                                                       n5)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1581
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (x7903
                                                                    n6)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1582
                                                                   63))
                                                                (display "\n")
                                                                (x7902 n7)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1583
                                                                60))
                                                             (display "\n")
                                                             (λ x7908
                                                               x7901)))))
                                                        (begin
                                                          (write
                                                           '(funapp 1584 57))
                                                          (display "\n")
                                                          (try x7900)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1585 54))
                                                       (display "\n")
                                                       (λ x7909 x7899)))))
                                                  (begin
                                                    (write '(funapp 1586 51))
                                                    (display "\n")
                                                    (try x7898)))))
                                               (begin
                                                 (write '(funapp 1587 48))
                                                 (display "\n")
                                                 (λ x7910 x7897)))))
                                            (begin
                                              (write '(funapp 1588 45))
                                              (display "\n")
                                              (try x7896)))))
                                         (begin
                                           (write '(funapp 1589 42))
                                           (display "\n")
                                           (λ x7911 x7895)))))
                                      (begin
                                        (write '(funapp 1590 39))
                                        (display "\n")
                                        (try x7894)))))
                                   (begin
                                     (write '(funapp 1591 36))
                                     (display "\n")
                                     (λ x7912 x7893)))))
                                (begin
                                  (write '(funapp 1592 33))
                                  (display "\n")
                                  (try x7892)))))
                             (begin
                               (write '(funapp 1593 30))
                               (display "\n")
                               (λ x7913 x7891)))))
                          (begin
                            (write '(funapp 1594 27))
                            (display "\n")
                            (try x7890)))))
                       (begin
                         (write '(funapp 1595 24))
                         (display "\n")
                         (λ x7914 x7889)))))
                    (begin
                      (write '(funapp 1596 21))
                      (display "\n")
                      (try x7888)))))
                 (begin
                   (write '(funapp 1597 18))
                   (display "\n")
                   (λ x7915 x7887)))))
              (letrec*
               ((g7916
                 (begin
                   (write '(funapp 1598 32))
                   (display "\n")
                   (sat-solve-7 phi))))
               g7916))))
           g7349))))
       g7347)))
    g7346)))
