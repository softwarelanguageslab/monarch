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
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7363
                        g7263
                        (begin
                          (write '(blame g7261 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7362)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7365
                        g7266
                        (begin
                          (write '(blame g7264 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7364)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7367
                        g7269
                        (begin
                          (write '(blame g7267 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7366)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7370 #t)) g7370)) g7272))))
                      (if x-cnd7369
                        g7272
                        (begin
                          (write '(blame g7270 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7368)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7373 #t)) g7373)) g7275))))
                      (if x-cnd7372
                        g7275
                        (begin
                          (write '(blame g7273 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7371)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7375
                        g7278
                        (begin
                          (write '(blame g7276 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7374)))
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7377
                        g7281
                        (begin
                          (write '(blame g7279 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7376)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7379
                        g7284
                        (begin
                          (write '(blame g7282 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
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
                (lambda (g7285 g7286 g7287)
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
                           g7287))))
                      (if x-cnd7395
                        g7287
                        (begin
                          (write '(blame g7285 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7394)))
               (meta (lambda (v) (letrec* ((g7398 v)) g7398)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7290 k7291 f7292)
                     (letrec*
                      ((g7400
                        (lambda (g7288 g7289)
                          (letrec*
                           ((g7401
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7290 k7291 g7288)))
                                  (x7403
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7290 k7291 g7289))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7292 x7404 x7403)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7290 k7291 x7402)))))
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
                  ((lambda (j7295 k7296 f7297)
                     (letrec*
                      ((g7406
                        (lambda (g7293 g7294)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7295 k7296 g7293)))
                                  (x7409
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7295 k7296 g7294))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7297 x7410 x7409)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7295 k7296 x7408)))))
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
                  ((lambda (j7300 k7301 f7302)
                     (letrec*
                      ((g7412
                        (lambda (g7298 g7299)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7300 k7301 g7298)))
                                  (x7415
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7300 k7301 g7299))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7302 x7416 x7415)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7300 k7301 x7414)))))
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
                  ((lambda (j7305 k7306 f7307)
                     (letrec*
                      ((g7418
                        (lambda (g7303 g7304)
                          (letrec*
                           ((g7419
                             (letrec*
                              ((x7420
                                (letrec*
                                 ((x7422
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7305 k7306 g7303)))
                                  (x7421
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7305 k7306 g7304))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7307 x7422 x7421)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7305 k7306 x7420)))))
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
                  ((lambda (j7309 k7310 f7311)
                     (letrec*
                      ((g7424
                        (lambda (g7308)
                          (letrec*
                           ((g7425
                             (letrec*
                              ((x7426
                                (letrec*
                                 ((x7427
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7309 k7310 g7308))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7311 x7427)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7309 k7310 x7426)))))
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
                  ((lambda (j7313 k7314 f7315)
                     (letrec*
                      ((g7429
                        (lambda (g7312)
                          (letrec*
                           ((g7430
                             (letrec*
                              ((x7431
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7313 k7314 g7312))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7315 x7432)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7313 k7314 x7431)))))
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
                  ((lambda (j7318 k7319 f7320)
                     (letrec*
                      ((g7434
                        (lambda (g7316 g7317)
                          (letrec*
                           ((g7435
                             (letrec*
                              ((x7436
                                (letrec*
                                 ((x7438
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7318 k7319 g7316)))
                                  (x7437
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7318 k7319 g7317))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7320 x7438 x7437)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7318 k7319 x7436)))))
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
                  ((lambda (j7322 k7323 f7324)
                     (letrec*
                      ((g7440
                        (lambda (g7321)
                          (letrec*
                           ((g7441
                             (letrec*
                              ((x7442
                                (letrec*
                                 ((x7443
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7322 k7323 g7321))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7324 x7443)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7322 k7323 x7442)))))
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
                  ((lambda (j7327 k7328 f7329)
                     (letrec*
                      ((g7445
                        (lambda (g7325 g7326)
                          (letrec*
                           ((g7446
                             (letrec*
                              ((x7447
                                (letrec*
                                 ((x7449
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7327 k7328 g7325)))
                                  (x7448
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7327 k7328 g7326))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7329 x7449 x7448)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7327 k7328 x7447)))))
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
                               ((x-cnd7554
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7554
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7555
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7556
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7556
                                       (letrec*
                                        ((x-cnd7557
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7557
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7558
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7559
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7559
                                             (letrec*
                                              ((x-cnd7560
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7560
                                                (letrec*
                                                 ((x-cnd7561
                                                   (letrec*
                                                    ((x7563
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7562
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7563 x7562)))))
                                                 (if x-cnd7561
                                                   (letrec*
                                                    ((x7565
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7564
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7565 x7564)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7566
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7567
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7567
                                                (letrec*
                                                 ((x-cnd7568
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7568
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7569
                                                       (letrec*
                                                        ((x-cnd7570
                                                          (letrec*
                                                           ((x7571
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
                                                             (= x7571 n)))))
                                                        (if x-cnd7570
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7572
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
                                                                    ((g7573
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7574
                                                                           (letrec*
                                                                            ((x7576
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
                                                                             (x7575
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
                                                                               x7576
                                                                               x7575)))))
                                                                         (if x-cnd7574
                                                                           (letrec*
                                                                            ((x7577
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
                                                                               x7577)))
                                                                           #f)))))
                                                                    g7573))))
                                                                g7572))))
                                                           (letrec*
                                                            ((g7578
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7578))
                                                          #f))))
                                                     g7569))
                                                   #f))
                                                #f)))))
                                         g7566)))))
                                   g7558)))))
                             g7555)))))
                       g7553))))
                   g7552)))
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
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7582)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7581)))))
                      (begin
                        (write '(funapp 749 23))
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
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7586)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7585)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7584)))))
                   g7583)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7587
                     (begin
                       (write '(funapp 762 53))
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
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7590))))
                    (g7589
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7591
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7592 (if val7252 val7252 #f)))
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
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7597))))
                    (g7595
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
                       ((g7598
                         (begin
                           (write '(funapp 793 32))
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
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7600)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7605))))
                    (g7603
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7606
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
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
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 815 23))
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
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7613)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 826 23))
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
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7616)))))
                      (begin
                        (write '(funapp 835 23))
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
                             (write '(funapp 842 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7619)))))
                      (begin
                        (write '(funapp 843 23))
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
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
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
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7629)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 862 23))
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
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7632))))
                    (g7631
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7631)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7633
                     (begin
                       (write '(funapp 870 53))
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
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7636)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7635)))))
                   g7634)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7637
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7637)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7640
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7640))))
                    (g7639
                     (letrec*
                      ((x-cnd7641
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7641
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7645))))
                          (x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7643)))))
                         (begin
                           (write '(funapp 892 26))
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
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7649)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7648)))))
                      (begin
                        (write '(funapp 903 23))
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
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7653)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7652)))))
                      (begin
                        (write '(funapp 914 23))
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
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7656))))
                    (g7655
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
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
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7661)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7660)))))
                      (begin
                        (write '(funapp 931 23))
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
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((x-cnd7667
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7667
                        (letrec*
                         ((g7668
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7668)
                        (letrec*
                         ((x-cnd7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7670)))))
                         (if x-cnd7669
                           (letrec*
                            ((g7671
                              (letrec*
                               ((x7672
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7672)))))
                            g7671)
                           (letrec*
                            ((x-cnd7673
                              (letrec*
                               ((x7674
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7674)))))
                            (if x-cnd7673
                              (letrec*
                               ((g7675
                                 (letrec*
                                  ((x7677
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7676
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7677 x7676)))))
                               g7675)
                              (letrec*
                               ((x-cnd7678
                                 (letrec*
                                  ((x7679
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7679)))))
                               (if x-cnd7678
                                 (letrec*
                                  ((g7680
                                    (letrec*
                                     ((x7683
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7682
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7681
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7683 x7682 x7681)))))
                                  g7680)
                                 (letrec*
                                  ((x-cnd7684
                                    (letrec*
                                     ((x7685
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7685)))))
                                  (if x-cnd7684
                                    (letrec*
                                     ((g7686
                                       (letrec*
                                        ((x7690
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7689
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7688
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7687
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
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
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7693)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7692)))))
                                     (if x-cnd7691
                                       (letrec*
                                        ((g7694
                                          (letrec*
                                           ((x7700
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7695
                                             (letrec*
                                              ((x7696
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7696)))))
                                           (begin
                                             (write '(funapp 1011 44))
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
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7703)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7702)))))
                                        (if x-cnd7701
                                          (letrec*
                                           ((g7704
                                             (letrec*
                                              ((x7712
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7711
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7710
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7709
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7707
                                                (letrec*
                                                 ((x7708
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7708))))
                                               (x7705
                                                (letrec*
                                                 ((x7706
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7706)))))
                                              (begin
                                                (write '(funapp 1042 47))
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
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7715)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7714)))))
                                           (if x-cnd7713
                                             (letrec*
                                              ((g7716
                                                (letrec*
                                                 ((x7726
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7725
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7724
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7723
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7721
                                                   (letrec*
                                                    ((x7722
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7722))))
                                                  (x7719
                                                   (letrec*
                                                    ((x7720
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7720))))
                                                  (x7717
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7718)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
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
                                                  (write '(funapp 1089 49))
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
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7730))))
                    (g7729
                     (letrec*
                      ((x-cnd7731
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7731
                        #f
                        (letrec*
                         ((x-cnd7732
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7733 e)))))
                         (if x-cnd7732
                           l
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
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
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7737)))))
                      (begin
                        (write '(funapp 1117 23))
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
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7742)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7741)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7743
                     (begin
                       (write '(funapp 1130 53))
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
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7746))))
                    (g7745
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7745)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7748
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7750)))))
                   g7749)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7752
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x7753)))
                           #f))))
                      (letrec*
                       ((g7754
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g7754))))
                   g7751)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x7758)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x7756)))))
                   g7755)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x-cnd7760
                        (letrec*
                         ((x7761 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x7761 c)))))
                      (if x-cnd7760
                        (letrec*
                         ((x7762 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x7762)))
                        #f))))
                   g7759)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        #f
                        (letrec*
                         ((x-cnd7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x7768 k)))))
                         (if x-cnd7767
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x7769)))))))))
                   g7764)))
               (not (lambda (x) (letrec* ((g7770 (if x #f #t))) g7770)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7771
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g7771)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (letrec*
                      ((x-cnd7775
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7775
                        #f
                        (letrec*
                         ((x-cnd7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x7777 e)))))
                         (if x-cnd7776
                           l
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x7778)))))))))
                   g7773)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7786
                             (letrec*
                              ((x-cnd7787
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7787
                                0
                                (letrec*
                                 ((x7788
                                   (letrec*
                                    ((x7789
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x7789)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x7788)))))))
                           g7786))))
                      (letrec*
                       ((g7790
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g7790))))
                   g7784)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7796
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7796))))
                   g7793)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x7798)))))
                   g7797)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x7801)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x7800)))))
                   g7799)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x7804))))
                    (g7803
                     (letrec*
                      ((x-cnd7805
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7805
                        #f
                        (letrec*
                         ((x-cnd7806
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x7807 k)))))
                         (if x-cnd7806
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x7808)))))))))
                   g7803)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x7810)))))
                   g7809)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x7816)))))
                   g7813)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7818
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7818))))
                   g7817)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7824
                        #t
                        (letrec*
                         ((x-cnd7825
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7825
                           (letrec*
                            ((g7826
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x7828))))
                             (g7827
                              (letrec*
                               ((x7829
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x7829)))))
                            g7827)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g7821)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x7832))))
                    (g7831
                     (letrec*
                      ((x-cnd7833
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7833
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7831)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7839
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7839))))
                   g7836)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7841
                        (letrec*
                         ((x7842
                           (letrec*
                            ((x7843
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7843)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7842)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x7841)))))
                   g7840)))
               (newline (lambda () (letrec* ((g7844 #f)) g7844)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7847
                        (letrec*
                         ((x7848
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x7848))))
                       (x7846
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x7847 x7846)))))
                   g7845)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x7851))))
                    (g7850
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x7852)))))
                   g7850)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x7857))))
                    (g7854
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x7858))))
                    (g7855
                     (letrec*
                      ((x7859
                        (letrec*
                         ((x7860
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x7860)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x7859))))
                    (g7856
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7861
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x7862
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x7863 x7862)))))))
                   g7856)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x-cnd7865
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7865
                        a
                        (letrec*
                         ((x7866
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x7866)))))))
                   g7864)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x-cnd7868
                        (begin
                          (write '(funapp 1420 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7868
                        empty
                        (letrec*
                         ((x7869
                           (letrec*
                            ((x7870
                              (begin
                                (write '(funapp 1425 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1425 55))
                              (display "\n")
                              (mk-list x7870 x)))))
                         (begin
                           (write '(funapp 1426 26))
                           (display "\n")
                           (cons x x7869)))))))
                   g7867)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1433 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7872
                        #f
                        (letrec*
                         ((val7259
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1437 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1437 64))
                              (display "\n")
                              (= x x7873)))))
                         (letrec*
                          ((g7874
                            (if val7259
                              val7259
                              (letrec*
                               ((x7875
                                 (begin
                                   (write '(funapp 1442 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1442 59))
                                 (display "\n")
                                 (mem x x7875))))))
                          g7874))))))
                   g7871))))
              (letrec*
               ((g7876
                 (begin
                   (write '(funapp 1447 18))
                   (display "\n")
                   ((lambda (j7332 k7333 f7334)
                      (letrec*
                       ((g7878
                         (lambda (g7330 g7331)
                           (letrec*
                            ((g7879
                              (letrec*
                               ((x7335
                                 (begin
                                   (write '(funapp 1454 38))
                                   (display "\n")
                                   (integer?/c j7332 k7333 g7330)))
                                (x7336
                                 (begin
                                   (write '(funapp 1455 38))
                                   (display "\n")
                                   (integer?/c j7332 k7333 g7331))))
                               (letrec*
                                ((g7880
                                  (letrec*
                                   ((x7882
                                     (begin
                                       (write '(funapp 1460 36))
                                       (display "\n")
                                       ((lambda (_ x)
                                          (letrec*
                                           ((g7883
                                             (letrec*
                                              ((x7888
                                                (begin
                                                  (write '(funapp 1464 51))
                                                  (display "\n")
                                                  (listof integer?/c))))
                                              (begin
                                                (write '(funapp 1465 43))
                                                (display "\n")
                                                (and/c
                                                 x7888
                                                 (lambda (g7337 g7338 g7339)
                                                   (letrec*
                                                    ((g7884
                                                      (letrec*
                                                       ((x-cnd7885
                                                         (begin
                                                           (write
                                                            '(funapp 1472 52))
                                                           (display "\n")
                                                           ((lambda (l)
                                                              (letrec*
                                                               ((g7886
                                                                 (letrec*
                                                                  ((val7260
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1477
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (empty?
                                                                       l))))
                                                                  (letrec*
                                                                   ((g7887
                                                                     (if val7260
                                                                       val7260
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            1482
                                                                            64))
                                                                         (display
                                                                          "\n")
                                                                         (member
                                                                          x
                                                                          l)))))
                                                                   g7887))))
                                                               g7886))
                                                            g7339))))
                                                       (if x-cnd7885
                                                         g7339
                                                         (begin
                                                           (write
                                                            '(blame
                                                              g7337
                                                              1488
                                                              51))
                                                           (display "\n")
                                                           (error
                                                            (format
                                                             "contract violation, blaming ~a~%"
                                                             g7337)))))))
                                                    g7884)))))))
                                           g7883))
                                        x7335
                                        x7336)))
                                    (x7881
                                     (begin
                                       (write '(funapp 1500 42))
                                       (display "\n")
                                       (f7334 x7335 x7336))))
                                   (begin
                                     (write '(funapp 1501 34))
                                     (display "\n")
                                     (x7882 j7332 k7333 x7881)))))
                                g7880))))
                            g7879))))
                       g7878))
                    (begin (write '(funapp 1505 18)) (display "\n") 'module)
                    (begin (write '(funapp 1506 18)) (display "\n") 'importer)
                    mk-list)))
                (g7877
                 (letrec*
                  ((x7891
                    (begin
                      (write '(funapp 1511 21))
                      (display "\n")
                      ((lambda (j7342 k7343 f7344)
                         (letrec*
                          ((g7892
                            (lambda (g7340 g7341)
                              (letrec*
                               ((g7893
                                 (letrec*
                                  ((x7894
                                    (letrec*
                                     ((x7897
                                       (begin
                                         (write '(funapp 1520 44))
                                         (display "\n")
                                         (integer?/c j7342 k7343 g7340)))
                                      (x7895
                                       (letrec*
                                        ((x7896
                                          (begin
                                            (write '(funapp 1523 47))
                                            (display "\n")
                                            (listof integer?/c))))
                                        (begin
                                          (write '(funapp 1524 39))
                                          (display "\n")
                                          (x7896 j7342 k7343 g7341)))))
                                     (begin
                                       (write '(funapp 1525 36))
                                       (display "\n")
                                       (f7344 x7897 x7895)))))
                                  (begin
                                    (write '(funapp 1526 33))
                                    (display "\n")
                                    (boolean?/c j7342 k7343 x7894)))))
                               g7893))))
                          g7892))
                       (begin (write '(funapp 1529 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1530 21))
                         (display "\n")
                         'importer)
                       mem)))
                   (x7890 (input))
                   (x7889 (input)))
                  (begin
                    (write '(funapp 1534 19))
                    (display "\n")
                    (x7891 x7890 x7889)))))
               g7877))))
           g7358))))
       g7356)))
    g7355)))
