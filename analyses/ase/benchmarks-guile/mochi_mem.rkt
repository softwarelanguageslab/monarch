(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7348 #t)) g7348)))
    (meta (lambda (v) (letrec* ((g7349 v)) g7349)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7350
          (letrec*
           ((g7351
             (letrec*
              ((x-e7352 lst))
              (letrec*
               ((v1742 x-e7352))
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
                   ((x-cnd7353
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7353
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
           g7351)))
        g7350)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7354 (lambda (v) (letrec* ((g7355 v)) g7355)))) g7354)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7356
          (letrec*
           ((x7357 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7357)))))
        g7356))))
   (letrec*
    ((g7358
      (letrec*
       ((g7359
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
           ((g7360 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7361
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7362
                     (lambda (k j lst)
                       (letrec*
                        ((g7363
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7364
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7364))
                             lst))))
                        g7363))))
                   g7362)))
               (real?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7263))))
                      (if x-cnd7366
                        g7263
                        (begin
                          (write '(blame g7261 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7365)))
               (boolean?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7266))))
                      (if x-cnd7368
                        g7266
                        (begin
                          (write '(blame g7264 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7367)))
               (number?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7269))))
                      (if x-cnd7370
                        g7269
                        (begin
                          (write '(blame g7267 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7369)))
               (any/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7373 #t)) g7373)) g7272))))
                      (if x-cnd7372
                        g7272
                        (begin
                          (write '(blame g7270 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7371)))
               (any?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7376 #t)) g7376)) g7275))))
                      (if x-cnd7375
                        g7275
                        (begin
                          (write '(blame g7273 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7374)))
               (cons?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7378
                        g7278
                        (begin
                          (write '(blame g7276 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7377)))
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7281))))
                      (if x-cnd7380
                        g7281
                        (begin
                          (write '(blame g7279 127 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7379)))
               (integer?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7284))))
                      (if x-cnd7382
                        g7284
                        (begin
                          (write '(blame g7282 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7381)))
               (symbol?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7287))))
                      (if x-cnd7384
                        g7287
                        (begin
                          (write '(blame g7285 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7383)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7385
                     (lambda (k j v)
                       (letrec*
                        ((g7386
                          (letrec*
                           ((x-cnd7387
                             (begin
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7387
                             (begin
                               (write '(funapp 154 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7386))))
                   g7385)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7388
                     (lambda (k j v)
                       (letrec*
                        ((g7389
                          (letrec*
                           ((x-cnd7390
                             (begin
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7390
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7394
                                (letrec*
                                 ((x7395
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7395))))
                               (x7391
                                (letrec*
                                 ((x7393
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7392
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7393 k j x7392)))))
                              (begin
                                (write '(funapp 177 31))
                                (display "\n")
                                (orig-cons x7394 x7391)))))))
                        g7389))))
                   g7388)))
               (any? (lambda (v) (letrec* ((g7396 #t)) g7396)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7397
                     (letrec*
                      ((x7398
                        (begin
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7398)))))
                   g7397)))
               (nonzero?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7399
                     (letrec*
                      ((x-cnd7400
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7401
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7402)))))
                              g7401))
                           g7290))))
                      (if x-cnd7400
                        g7290
                        (begin
                          (write '(blame g7288 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7399)))
               (meta (lambda (v) (letrec* ((g7403 v)) g7403)))
               (+
                (begin
                  (write '(funapp 203 17))
                  (display "\n")
                  ((lambda (j7293 k7294 f7295)
                     (letrec*
                      ((g7405
                        (lambda (g7291 g7292)
                          (letrec*
                           ((g7406
                             (letrec*
                              ((x7407
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7291)))
                                  (x7408
                                   (begin
                                     (write '(funapp 213 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7292))))
                                 (begin
                                   (write '(funapp 214 32))
                                   (display "\n")
                                   (f7295 x7409 x7408)))))
                              (begin
                                (write '(funapp 215 29))
                                (display "\n")
                                (number?/c j7293 k7294 x7407)))))
                           g7406))))
                      g7405))
                   (begin (write '(funapp 218 17)) (display "\n") 'server)
                   (begin (write '(funapp 219 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7404
                        (begin
                          (write '(funapp 220 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7404)))))
               (-
                (begin
                  (write '(funapp 222 17))
                  (display "\n")
                  ((lambda (j7298 k7299 f7300)
                     (letrec*
                      ((g7411
                        (lambda (g7296 g7297)
                          (letrec*
                           ((g7412
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7296)))
                                  (x7414
                                   (begin
                                     (write '(funapp 232 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7297))))
                                 (begin
                                   (write '(funapp 233 32))
                                   (display "\n")
                                   (f7300 x7415 x7414)))))
                              (begin
                                (write '(funapp 234 29))
                                (display "\n")
                                (number?/c j7298 k7299 x7413)))))
                           g7412))))
                      g7411))
                   (begin (write '(funapp 237 17)) (display "\n") 'server)
                   (begin (write '(funapp 238 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7410
                        (begin
                          (write '(funapp 239 49))
                          (display "\n")
                          (orig-- a b))))
                      g7410)))))
               (*
                (begin
                  (write '(funapp 241 17))
                  (display "\n")
                  ((lambda (j7303 k7304 f7305)
                     (letrec*
                      ((g7417
                        (lambda (g7301 g7302)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7301)))
                                  (x7420
                                   (begin
                                     (write '(funapp 251 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7302))))
                                 (begin
                                   (write '(funapp 252 32))
                                   (display "\n")
                                   (f7305 x7421 x7420)))))
                              (begin
                                (write '(funapp 253 29))
                                (display "\n")
                                (number?/c j7303 k7304 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 256 17)) (display "\n") 'server)
                   (begin (write '(funapp 257 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 258 49))
                          (display "\n")
                          (orig-* a b))))
                      g7416)))))
               (/
                (begin
                  (write '(funapp 260 17))
                  (display "\n")
                  ((lambda (j7308 k7309 f7310)
                     (letrec*
                      ((g7423
                        (lambda (g7306 g7307)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7427
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7308 k7309 g7306)))
                                  (x7426
                                   (begin
                                     (write '(funapp 270 40))
                                     (display "\n")
                                     (number?/c j7308 k7309 g7307))))
                                 (begin
                                   (write '(funapp 271 32))
                                   (display "\n")
                                   (f7310 x7427 x7426)))))
                              (begin
                                (write '(funapp 272 29))
                                (display "\n")
                                (number?/c j7308 k7309 x7425)))))
                           g7424))))
                      g7423))
                   (begin (write '(funapp 275 17)) (display "\n") 'server)
                   (begin (write '(funapp 276 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7422
                        (begin
                          (write '(funapp 277 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7422)))))
               (car
                (begin
                  (write '(funapp 279 17))
                  (display "\n")
                  ((lambda (j7312 k7313 f7314)
                     (letrec*
                      ((g7429
                        (lambda (g7311)
                          (letrec*
                           ((g7430
                             (letrec*
                              ((x7431
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 288 40))
                                     (display "\n")
                                     (pair?/c j7312 k7313 g7311))))
                                 (begin
                                   (write '(funapp 289 32))
                                   (display "\n")
                                   (f7314 x7432)))))
                              (begin
                                (write '(funapp 290 29))
                                (display "\n")
                                (any/c j7312 k7313 x7431)))))
                           g7430))))
                      g7429))
                   (begin (write '(funapp 293 17)) (display "\n") 'server)
                   (begin (write '(funapp 294 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7428
                        (begin
                          (write '(funapp 295 47))
                          (display "\n")
                          (orig-car p))))
                      g7428)))))
               (cdr
                (begin
                  (write '(funapp 297 17))
                  (display "\n")
                  ((lambda (j7316 k7317 f7318)
                     (letrec*
                      ((g7434
                        (lambda (g7315)
                          (letrec*
                           ((g7435
                             (letrec*
                              ((x7436
                                (letrec*
                                 ((x7437
                                   (begin
                                     (write '(funapp 306 40))
                                     (display "\n")
                                     (pair?/c j7316 k7317 g7315))))
                                 (begin
                                   (write '(funapp 307 32))
                                   (display "\n")
                                   (f7318 x7437)))))
                              (begin
                                (write '(funapp 308 29))
                                (display "\n")
                                (any/c j7316 k7317 x7436)))))
                           g7435))))
                      g7434))
                   (begin (write '(funapp 311 17)) (display "\n") 'server)
                   (begin (write '(funapp 312 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7433
                        (begin
                          (write '(funapp 313 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7433)))))
               (cons
                (begin
                  (write '(funapp 315 17))
                  (display "\n")
                  ((lambda (j7321 k7322 f7323)
                     (letrec*
                      ((g7439
                        (lambda (g7319 g7320)
                          (letrec*
                           ((g7440
                             (letrec*
                              ((x7441
                                (letrec*
                                 ((x7443
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7321 k7322 g7319)))
                                  (x7442
                                   (begin
                                     (write '(funapp 325 40))
                                     (display "\n")
                                     (any/c j7321 k7322 g7320))))
                                 (begin
                                   (write '(funapp 326 32))
                                   (display "\n")
                                   (f7323 x7443 x7442)))))
                              (begin
                                (write '(funapp 327 29))
                                (display "\n")
                                (pair?/c j7321 k7322 x7441)))))
                           g7440))))
                      g7439))
                   (begin (write '(funapp 330 17)) (display "\n") 'server)
                   (begin (write '(funapp 331 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7438
                        (begin
                          (write '(funapp 332 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7438)))))
               (vector-ref
                (begin
                  (write '(funapp 334 17))
                  (display "\n")
                  ((lambda (j7325 k7326 f7327)
                     (letrec*
                      ((g7445
                        (lambda (g7324)
                          (letrec*
                           ((g7446
                             (letrec*
                              ((x7447
                                (letrec*
                                 ((x7448
                                   (begin
                                     (write '(funapp 343 40))
                                     (display "\n")
                                     (vector?/c j7325 k7326 g7324))))
                                 (begin
                                   (write '(funapp 344 32))
                                   (display "\n")
                                   (f7327 x7448)))))
                              (begin
                                (write '(funapp 345 29))
                                (display "\n")
                                (integer?/c j7325 k7326 x7447)))))
                           g7446))))
                      g7445))
                   (begin (write '(funapp 348 17)) (display "\n") 'server)
                   (begin (write '(funapp 349 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7444
                        (begin
                          (write '(funapp 351 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7444)))))
               (vector-set!
                (begin
                  (write '(funapp 353 17))
                  (display "\n")
                  ((lambda (j7330 k7331 f7332)
                     (letrec*
                      ((g7450
                        (lambda (g7328 g7329)
                          (letrec*
                           ((g7451
                             (letrec*
                              ((x7452
                                (letrec*
                                 ((x7454
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (vector?/c j7330 k7331 g7328)))
                                  (x7453
                                   (begin
                                     (write '(funapp 363 40))
                                     (display "\n")
                                     (integer?/c j7330 k7331 g7329))))
                                 (begin
                                   (write '(funapp 364 32))
                                   (display "\n")
                                   (f7332 x7454 x7453)))))
                              (begin
                                (write '(funapp 365 29))
                                (display "\n")
                                (any/c j7330 k7331 x7452)))))
                           g7451))))
                      g7450))
                   (begin (write '(funapp 368 17)) (display "\n") 'server)
                   (begin (write '(funapp 369 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7449
                        (begin
                          (write '(funapp 371 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7449)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7455
                     (if cnd
                       (begin (write '(funapp 375 35)) (display "\n") '())
                       (begin
                         (write '(funapp 375 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7455)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7457
                        (letrec*
                         ((x7458
                           (begin
                             (write '(funapp 382 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 382 58))
                           (display "\n")
                           (cdr x7458)))))
                      (begin
                        (write '(funapp 383 23))
                        (display "\n")
                        (cdr x7457)))))
                   g7456)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x7462
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 389 62))
                        (display "\n")
                        (assert x7462))))
                    (g7460
                     (letrec*
                      ((x7463
                        (begin
                          (write '(funapp 390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 390 57))
                        (display "\n")
                        (assert x7463))))
                    (g7461
                     (letrec*
                      ((x-cnd7464
                        (begin
                          (write '(funapp 393 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7464
                        (begin (write '(funapp 395 24)) (display "\n") '())
                        (letrec*
                         ((x7467
                           (letrec*
                            ((x7468
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (f x7468))))
                          (x7465
                           (letrec*
                            ((x7466
                              (begin
                                (write '(funapp 398 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 398 61))
                              (display "\n")
                              (map f x7466)))))
                         (begin
                           (write '(funapp 399 26))
                           (display "\n")
                           (cons x7467 x7465)))))))
                   g7461)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7470
                        (begin
                          (write '(funapp 404 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 404 55))
                        (display "\n")
                        (cdr x7470)))))
                   g7469)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x7472
                        (letrec*
                         ((x7473
                           (letrec*
                            ((x7474
                              (begin
                                (write '(funapp 413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 413 61))
                              (display "\n")
                              (car x7474)))))
                         (begin
                           (write '(funapp 414 26))
                           (display "\n")
                           (cdr x7473)))))
                      (begin
                        (write '(funapp 415 23))
                        (display "\n")
                        (car x7472)))))
                   g7471)))
               (cdadar
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
                                (write '(funapp 424 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 424 61))
                              (display "\n")
                              (cdr x7478)))))
                         (begin
                           (write '(funapp 425 26))
                           (display "\n")
                           (car x7477)))))
                      (begin
                        (write '(funapp 426 23))
                        (display "\n")
                        (cdr x7476)))))
                   g7475)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 432 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 432 60))
                        (display "\n")
                        (assert x7482))))
                    (g7480
                     (letrec*
                      ((x7483
                        (begin
                          (write '(funapp 434 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 434 59))
                        (display "\n")
                        (assert x7483))))
                    (g7481
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 437 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 438 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7484
                         (begin
                           (write '(funapp 440 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7485 res))
                       g7485))))
                   g7481)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (letrec*
                         ((x7488
                           (begin
                             (write '(funapp 448 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 448 58))
                           (display "\n")
                           (cdr x7488)))))
                      (begin
                        (write '(funapp 449 23))
                        (display "\n")
                        (car x7487)))))
                   g7486)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7490
                        (letrec*
                         ((x7491
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 458 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 458 61))
                              (display "\n")
                              (car x7492)))))
                         (begin
                           (write '(funapp 459 26))
                           (display "\n")
                           (car x7491)))))
                      (begin
                        (write '(funapp 460 23))
                        (display "\n")
                        (cdr x7490)))))
                   g7489)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 465 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 465 57))
                        (display "\n")
                        (assert x7495))))
                    (g7494
                     (letrec*
                      ((x-cnd7496
                        (begin
                          (write '(funapp 468 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7496
                        #f
                        (letrec*
                         ((x-cnd7497
                           (letrec*
                            ((x7498
                              (begin
                                (write '(funapp 473 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 473 56))
                              (display "\n")
                              (eq? x7498 k)))))
                         (if x-cnd7497
                           (begin
                             (write '(funapp 475 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 476 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 476 55))
                              (display "\n")
                              (assq k x7499)))))))))
                   g7494)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 481 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 481 60))
                        (display "\n")
                        (= 0 x7501)))))
                   g7500)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 486 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 486 57))
                        (display "\n")
                        (assert x7504))))
                    (g7503
                     (letrec*
                      ((x-cnd7505
                        (begin
                          (write '(funapp 489 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7505
                        ""
                        (letrec*
                         ((x7508
                           (letrec*
                            ((x7509
                              (begin
                                (write '(funapp 494 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 494 55))
                              (display "\n")
                              (char->string x7509))))
                          (x7506
                           (letrec*
                            ((x7507
                              (begin
                                (write '(funapp 496 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 496 55))
                              (display "\n")
                              (list->string x7507)))))
                         (begin
                           (write '(funapp 497 26))
                           (display "\n")
                           (string-append x7508 x7506)))))))
                   g7503)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7513))))
                    (g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 503 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 503 58))
                        (display "\n")
                        (assert x7514))))
                    (g7512
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 506 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7515
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 508 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7515))))
                   g7512)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x7517
                        (letrec*
                         ((x7518
                           (letrec*
                            ((x7519
                              (begin
                                (write '(funapp 518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 518 61))
                              (display "\n")
                              (cdr x7519)))))
                         (begin
                           (write '(funapp 519 26))
                           (display "\n")
                           (cdr x7518)))))
                      (begin
                        (write '(funapp 520 23))
                        (display "\n")
                        (cdr x7517)))))
                   g7516)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x7523
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7523))))
                    (g7521
                     (letrec*
                      ((x7524
                        (begin
                          (write '(funapp 526 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 526 57))
                        (display "\n")
                        (assert x7524))))
                    (g7522
                     (letrec*
                      ((x-cnd7525
                        (begin
                          (write '(funapp 529 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7525
                        x
                        (letrec*
                         ((x7527
                           (begin
                             (write '(funapp 533 34))
                             (display "\n")
                             (cdr x)))
                          (x7526
                           (begin
                             (write '(funapp 533 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 534 26))
                           (display "\n")
                           (list-tail x7527 x7526)))))))
                   g7522)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7528
                     (begin (write '(funapp 536 49)) (display "\n") '())))
                   g7528)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((x-cnd7530
                        (letrec*
                         ((x7531 #\a))
                         (begin
                           (write '(funapp 543 48))
                           (display "\n")
                           (char-ci>=? c x7531)))))
                      (if x-cnd7530
                        (letrec*
                         ((x7532 #\z))
                         (begin
                           (write '(funapp 545 48))
                           (display "\n")
                           (char-ci<=? c x7532)))
                        #f))))
                   g7529)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 551 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 551 59))
                        (display "\n")
                        (assert x7535))))
                    (g7534
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 554 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7536
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 560 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7537 (if val7243 val7243 #f)))
                             g7537)))))
                       g7536))))
                   g7534)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7539
                           (begin
                             (write '(funapp 572 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 572 62))
                           (display "\n")
                           (= x7539 9)))))
                      (letrec*
                       ((g7540
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7541
                                 (begin
                                   (write '(funapp 580 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 581 32))
                                 (display "\n")
                                 (= x7541 10)))))
                            (letrec*
                             ((g7542
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7543
                                    (begin
                                      (write '(funapp 587 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 588 35))
                                    (display "\n")
                                    (= x7543 32))))))
                             g7542)))))
                       g7540))))
                   g7538)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x7545
                        (letrec*
                         ((x7546
                           (begin
                             (write '(funapp 597 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 597 58))
                           (display "\n")
                           (cdr x7546)))))
                      (begin
                        (write '(funapp 598 23))
                        (display "\n")
                        (cdr x7545)))))
                   g7544)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((x7549
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 603 59))
                        (display "\n")
                        (assert x7549))))
                    (g7548
                     (begin (write '(funapp 604 28)) (display "\n") (> x 0))))
                   g7548)))
               ($pc (begin (write '(funapp 606 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7550 #f)) g7550)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((x7552
                        (begin
                          (write '(funapp 612 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 612 55))
                        (display "\n")
                        (cdr x7552)))))
                   g7551)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7553
                     (letrec*
                      ((x7555
                        (begin
                          (write '(funapp 617 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 617 59))
                        (display "\n")
                        (assert x7555))))
                    (g7554
                     (letrec*
                      ((x-cnd7556
                        (begin
                          (write '(funapp 620 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7556
                        (begin
                          (write '(funapp 621 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 621 49))
                          (display "\n")
                          (floor x))))))
                   g7554)))
               ($cmp (begin (write '(funapp 623 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7557
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 629 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7558
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7559
                                 (begin
                                   (write '(funapp 637 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7559
                                 (begin
                                   (write '(funapp 638 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7560
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7561
                                       (begin
                                         (write '(funapp 646 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7561
                                       (letrec*
                                        ((x-cnd7562
                                          (begin
                                            (write '(funapp 649 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7562
                                          (begin
                                            (write '(funapp 650 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7563
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7564
                                             (begin
                                               (write '(funapp 659 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7564
                                             (letrec*
                                              ((x-cnd7565
                                                (begin
                                                  (write '(funapp 662 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7565
                                                (letrec*
                                                 ((x-cnd7566
                                                   (letrec*
                                                    ((x7568
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7567
                                                      (begin
                                                        (write
                                                         '(funapp 668 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 669 53))
                                                      (display "\n")
                                                      (equal? x7568 x7567)))))
                                                 (if x-cnd7566
                                                   (letrec*
                                                    ((x7570
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7569
                                                      (begin
                                                        (write
                                                         '(funapp 673 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 674 53))
                                                      (display "\n")
                                                      (equal? x7570 x7569)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7571
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7572
                                                (begin
                                                  (write '(funapp 683 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7572
                                                (letrec*
                                                 ((x-cnd7573
                                                   (begin
                                                     (write '(funapp 686 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7573
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 689 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7574
                                                       (letrec*
                                                        ((x-cnd7575
                                                          (letrec*
                                                           ((x7576
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  696
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 698 60))
                                                             (display "\n")
                                                             (= x7576 n)))))
                                                        (if x-cnd7575
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7577
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          707
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7578
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7579
                                                                           (letrec*
                                                                            ((x7581
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   716
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7580
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   720
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 723
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7581
                                                                               x7580)))))
                                                                         (if x-cnd7579
                                                                           (letrec*
                                                                            ((x7582
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   729
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 732
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7582)))
                                                                           #f)))))
                                                                    g7578))))
                                                                g7577))))
                                                           (letrec*
                                                            ((g7583
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   738
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7583))
                                                          #f))))
                                                     g7574))
                                                   #f))
                                                #f)))))
                                         g7571)))))
                                   g7563)))))
                             g7560)))))
                       g7558))))
                   g7557)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7585
                        (letrec*
                         ((x7586
                           (letrec*
                            ((x7587
                              (begin
                                (write '(funapp 756 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 756 61))
                              (display "\n")
                              (car x7587)))))
                         (begin
                           (write '(funapp 757 26))
                           (display "\n")
                           (car x7586)))))
                      (begin
                        (write '(funapp 758 23))
                        (display "\n")
                        (cdr x7585)))))
                   g7584)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7589
                        (letrec*
                         ((x7590
                           (letrec*
                            ((x7591
                              (begin
                                (write '(funapp 767 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 767 61))
                              (display "\n")
                              (cdr x7591)))))
                         (begin
                           (write '(funapp 768 26))
                           (display "\n")
                           (car x7590)))))
                      (begin
                        (write '(funapp 769 23))
                        (display "\n")
                        (car x7589)))))
                   g7588)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7592
                     (begin
                       (write '(funapp 771 53))
                       (display "\n")
                       (eq? x y))))
                   g7592)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 775 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 775 59))
                        (display "\n")
                        (assert x7595))))
                    (g7594
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 778 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7596
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 784 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7597 (if val7252 val7252 #f)))
                             g7597)))))
                       g7596))))
                   g7594)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 794 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 796 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 796 59))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 799 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 800 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7603
                         (begin
                           (write '(funapp 802 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7604 res))
                       g7604))))
                   g7600)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7605
                     (begin
                       (write '(funapp 805 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 805 57)) (display "\n") '())))))
                   g7605)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7609
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7609))))
                    (g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 810 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 810 58))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 813 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7611
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 815 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7611))))
                   g7608)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (begin
                             (write '(funapp 823 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 823 58))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 824 23))
                        (display "\n")
                        (cdr x7613)))))
                   g7612)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (letrec*
                            ((x7618
                              (begin
                                (write '(funapp 833 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 833 61))
                              (display "\n")
                              (cdr x7618)))))
                         (begin
                           (write '(funapp 834 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 835 23))
                        (display "\n")
                        (cdr x7616)))))
                   g7615)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (begin
                             (write '(funapp 843 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 843 58))
                           (display "\n")
                           (cdr x7621)))))
                      (begin
                        (write '(funapp 844 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (begin
                             (write '(funapp 851 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 851 58))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 852 23))
                        (display "\n")
                        (car x7623)))))
                   g7622)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7628))))
                    (g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 858 58))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 859 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 859 66))
                        (display "\n")
                        (not x7630)))))
                   g7627)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 869 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 869 61))
                              (display "\n")
                              (car x7634)))))
                         (begin
                           (write '(funapp 870 26))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (car x7632)))))
                   g7631)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 876 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 876 59))
                        (display "\n")
                        (assert x7637))))
                    (g7636
                     (begin (write '(funapp 877 28)) (display "\n") (< x 0))))
                   g7636)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7638
                     (begin
                       (write '(funapp 879 53))
                       (display "\n")
                       (memq e l))))
                   g7638)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (begin
                             (write '(funapp 885 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 885 58))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 886 23))
                        (display "\n")
                        (car x7640)))))
                   g7639)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7642
                     (begin (write '(funapp 888 51)) (display "\n") '())))
                   g7642)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 892 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 892 57))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((x-cnd7646
                        (begin
                          (write '(funapp 895 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7646
                        (begin (write '(funapp 897 24)) (display "\n") '())
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (reverse x7650))))
                          (x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 900 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 900 61))
                              (display "\n")
                              (list x7648)))))
                         (begin
                           (write '(funapp 901 26))
                           (display "\n")
                           (append x7649 x7647)))))))
                   g7644)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7652
                        (letrec*
                         ((x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 910 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 910 61))
                              (display "\n")
                              (car x7654)))))
                         (begin
                           (write '(funapp 911 26))
                           (display "\n")
                           (car x7653)))))
                      (begin
                        (write '(funapp 912 23))
                        (display "\n")
                        (car x7652)))))
                   g7651)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7656
                        (letrec*
                         ((x7657
                           (letrec*
                            ((x7658
                              (begin
                                (write '(funapp 921 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 921 61))
                              (display "\n")
                              (car x7658)))))
                         (begin
                           (write '(funapp 922 26))
                           (display "\n")
                           (cdr x7657)))))
                      (begin
                        (write '(funapp 923 23))
                        (display "\n")
                        (cdr x7656)))))
                   g7655)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 928 59))
                        (display "\n")
                        (assert x7661))))
                    (g7660
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 929 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 929 60))
                        (display "\n")
                        (= 1 x7662)))))
                   g7660)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7664
                        (letrec*
                         ((x7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 938 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 938 61))
                              (display "\n")
                              (cdr x7666)))))
                         (begin
                           (write '(funapp 939 26))
                           (display "\n")
                           (car x7665)))))
                      (begin
                        (write '(funapp 940 23))
                        (display "\n")
                        (car x7664)))))
                   g7663)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7670
                        (begin
                          (write '(funapp 946 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 946 59))
                        (display "\n")
                        (assert x7670))))
                    (g7668
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 947 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 947 60))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((x-cnd7672
                        (begin
                          (write '(funapp 950 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7672
                        (letrec*
                         ((g7673
                           (begin
                             (write '(funapp 952 42))
                             (display "\n")
                             (proc))))
                         g7673)
                        (letrec*
                         ((x-cnd7674
                           (letrec*
                            ((x7675
                              (begin
                                (write '(funapp 955 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 955 58))
                              (display "\n")
                              (null? x7675)))))
                         (if x-cnd7674
                           (letrec*
                            ((g7676
                              (letrec*
                               ((x7677
                                 (begin
                                   (write '(funapp 959 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 959 61))
                                 (display "\n")
                                 (proc x7677)))))
                            g7676)
                           (letrec*
                            ((x-cnd7678
                              (letrec*
                               ((x7679
                                 (begin
                                   (write '(funapp 963 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 963 62))
                                 (display "\n")
                                 (null? x7679)))))
                            (if x-cnd7678
                              (letrec*
                               ((g7680
                                 (letrec*
                                  ((x7682
                                    (begin
                                      (write '(funapp 968 43))
                                      (display "\n")
                                      (car args)))
                                   (x7681
                                    (begin
                                      (write '(funapp 968 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 969 35))
                                    (display "\n")
                                    (proc x7682 x7681)))))
                               g7680)
                              (letrec*
                               ((x-cnd7683
                                 (letrec*
                                  ((x7684
                                    (begin
                                      (write '(funapp 974 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 975 35))
                                    (display "\n")
                                    (null? x7684)))))
                               (if x-cnd7683
                                 (letrec*
                                  ((g7685
                                    (letrec*
                                     ((x7688
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (car args)))
                                      (x7687
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7686
                                       (begin
                                         (write '(funapp 982 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 983 38))
                                       (display "\n")
                                       (proc x7688 x7687 x7686)))))
                                  g7685)
                                 (letrec*
                                  ((x-cnd7689
                                    (letrec*
                                     ((x7690
                                       (begin
                                         (write '(funapp 988 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 989 38))
                                       (display "\n")
                                       (null? x7690)))))
                                  (if x-cnd7689
                                    (letrec*
                                     ((g7691
                                       (letrec*
                                        ((x7695
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (car args)))
                                         (x7694
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7693
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7692
                                          (begin
                                            (write '(funapp 997 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (proc x7695 x7694 x7693 x7692)))))
                                     g7691)
                                    (letrec*
                                     ((x-cnd7696
                                       (letrec*
                                        ((x7697
                                          (letrec*
                                           ((x7698
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1006 44))
                                             (display "\n")
                                             (cdr x7698)))))
                                        (begin
                                          (write '(funapp 1007 41))
                                          (display "\n")
                                          (null? x7697)))))
                                     (if x-cnd7696
                                       (letrec*
                                        ((g7699
                                          (letrec*
                                           ((x7705
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (car args)))
                                            (x7704
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7703
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7702
                                             (begin
                                               (write '(funapp 1015 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7700
                                             (letrec*
                                              ((x7701
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1019 47))
                                                (display "\n")
                                                (car x7701)))))
                                           (begin
                                             (write '(funapp 1020 44))
                                             (display "\n")
                                             (proc
                                              x7705
                                              x7704
                                              x7703
                                              x7702
                                              x7700)))))
                                        g7699)
                                       (letrec*
                                        ((x-cnd7706
                                          (letrec*
                                           ((x7707
                                             (letrec*
                                              ((x7708
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1033 47))
                                                (display "\n")
                                                (cddr x7708)))))
                                           (begin
                                             (write '(funapp 1034 44))
                                             (display "\n")
                                             (null? x7707)))))
                                        (if x-cnd7706
                                          (letrec*
                                           ((g7709
                                             (letrec*
                                              ((x7717
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7716
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7715
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7714
                                                (begin
                                                  (write '(funapp 1042 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7712
                                                (letrec*
                                                 ((x7713
                                                   (begin
                                                     (write '(funapp 1045 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1046 50))
                                                   (display "\n")
                                                   (car x7713))))
                                               (x7710
                                                (letrec*
                                                 ((x7711
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1050 50))
                                                   (display "\n")
                                                   (cadr x7711)))))
                                              (begin
                                                (write '(funapp 1051 47))
                                                (display "\n")
                                                (proc
                                                 x7717
                                                 x7716
                                                 x7715
                                                 x7714
                                                 x7712
                                                 x7710)))))
                                           g7709)
                                          (letrec*
                                           ((x-cnd7718
                                             (letrec*
                                              ((x7719
                                                (letrec*
                                                 ((x7720
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1065 50))
                                                   (display "\n")
                                                   (cdddr x7720)))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (null? x7719)))))
                                           (if x-cnd7718
                                             (letrec*
                                              ((g7721
                                                (letrec*
                                                 ((x7731
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7730
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7729
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7728
                                                   (begin
                                                     (write '(funapp 1074 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7726
                                                   (letrec*
                                                    ((x7727
                                                      (begin
                                                        (write
                                                         '(funapp 1077 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1078 53))
                                                      (display "\n")
                                                      (car x7727))))
                                                  (x7724
                                                   (letrec*
                                                    ((x7725
                                                      (begin
                                                        (write
                                                         '(funapp 1081 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1082 53))
                                                      (display "\n")
                                                      (cadr x7725))))
                                                  (x7722
                                                   (letrec*
                                                    ((x7723
                                                      (begin
                                                        (write
                                                         '(funapp 1085 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1086 53))
                                                      (display "\n")
                                                      (caddr x7723)))))
                                                 (begin
                                                   (write '(funapp 1087 50))
                                                   (display "\n")
                                                   (proc
                                                    x7731
                                                    x7730
                                                    x7729
                                                    x7728
                                                    x7726
                                                    x7724
                                                    x7722)))))
                                              g7721)
                                             (letrec*
                                              ((g7732
                                                (begin
                                                  (write '(funapp 1098 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7732)))))))))))))))))))
                   g7669)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1104 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1104 57))
                        (display "\n")
                        (assert x7735))))
                    (g7734
                     (letrec*
                      ((x-cnd7736
                        (begin
                          (write '(funapp 1107 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7736
                        #f
                        (letrec*
                         ((x-cnd7737
                           (letrec*
                            ((x7738
                              (begin
                                (write '(funapp 1112 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1112 55))
                              (display "\n")
                              (equal? x7738 e)))))
                         (if x-cnd7737
                           l
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1115 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1115 55))
                              (display "\n")
                              (member e x7739)))))))))
                   g7734)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (letrec*
                         ((x7742
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 1124 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1124 61))
                              (display "\n")
                              (cdr x7743)))))
                         (begin
                           (write '(funapp 1125 26))
                           (display "\n")
                           (cdr x7742)))))
                      (begin
                        (write '(funapp 1126 23))
                        (display "\n")
                        (cdr x7741)))))
                   g7740)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (letrec*
                         ((x7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1135 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1135 61))
                              (display "\n")
                              (cdr x7747)))))
                         (begin
                           (write '(funapp 1136 26))
                           (display "\n")
                           (cdr x7746)))))
                      (begin
                        (write '(funapp 1137 23))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7748
                     (begin
                       (write '(funapp 1139 53))
                       (display "\n")
                       (random 42))))
                   g7748)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1143 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1143 59))
                        (display "\n")
                        (assert x7751))))
                    (g7750
                     (begin (write '(funapp 1144 28)) (display "\n") (= x 0))))
                   g7750)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1151 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7753
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1153 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7753))))
                   g7752)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1159 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1159 55))
                        (display "\n")
                        (car x7755)))))
                   g7754)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7757
                           (begin
                             (write '(funapp 1169 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1171 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1171 55))
                              (display "\n")
                              (list? x7758)))
                           #f))))
                      (letrec*
                       ((g7759
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1174 52))
                             (display "\n")
                             (null? l)))))
                       g7759))))
                   g7756)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1184 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1184 61))
                              (display "\n")
                              (car x7763)))))
                         (begin
                           (write '(funapp 1185 26))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 1186 23))
                        (display "\n")
                        (cdr x7761)))))
                   g7760)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x-cnd7765
                        (letrec*
                         ((x7766 #\0))
                         (begin
                           (write '(funapp 1193 58))
                           (display "\n")
                           (char<=? x7766 c)))))
                      (if x-cnd7765
                        (letrec*
                         ((x7767 #\9))
                         (begin
                           (write '(funapp 1195 48))
                           (display "\n")
                           (char<=? c x7767)))
                        #f))))
                   g7764)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1202 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1202 57))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (letrec*
                      ((x-cnd7771
                        (begin
                          (write '(funapp 1205 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7771
                        #f
                        (letrec*
                         ((x-cnd7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1210 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1210 56))
                              (display "\n")
                              (eqv? x7773 k)))))
                         (if x-cnd7772
                           (begin
                             (write '(funapp 1212 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1213 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1213 55))
                              (display "\n")
                              (assq k x7774)))))))))
                   g7769)))
               (not (lambda (x) (letrec* ((g7775 (if x #f #t))) g7775)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7776
                     (begin
                       (write '(funapp 1217 50))
                       (display "\n")
                       (append l1 l2))))
                   g7776)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1221 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1221 57))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((x-cnd7780
                        (begin
                          (write '(funapp 1224 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7780
                        #f
                        (letrec*
                         ((x-cnd7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1229 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1229 55))
                              (display "\n")
                              (eq? x7782 e)))))
                         (if x-cnd7781
                           l
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1232 55))
                              (display "\n")
                              (memq e x7783)))))))))
                   g7778)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7785
                        (letrec*
                         ((x7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1241 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1241 61))
                              (display "\n")
                              (car x7787)))))
                         (begin
                           (write '(funapp 1242 26))
                           (display "\n")
                           (cdr x7786)))))
                      (begin
                        (write '(funapp 1243 23))
                        (display "\n")
                        (car x7785)))))
                   g7784)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
                        (display "\n")
                        (assert x7790))))
                    (g7789
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7791
                             (letrec*
                              ((x-cnd7792
                                (begin
                                  (write '(funapp 1256 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7792
                                0
                                (letrec*
                                 ((x7793
                                   (letrec*
                                    ((x7794
                                      (begin
                                        (write '(funapp 1261 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1261 63))
                                      (display "\n")
                                      (rec x7794)))))
                                 (begin
                                   (write '(funapp 1262 34))
                                   (display "\n")
                                   (+ 1 x7793)))))))
                           g7791))))
                      (letrec*
                       ((g7795
                         (begin
                           (write '(funapp 1264 40))
                           (display "\n")
                           (rec l))))
                       g7795))))
                   g7789)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7799))))
                    (g7797
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1270 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1270 58))
                        (display "\n")
                        (assert x7800))))
                    (g7798
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1273 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7801
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1275 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7801))))
                   g7798)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1281 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1281 65))
                        (display "\n")
                        (not x7803)))))
                   g7802)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7805
                        (letrec*
                         ((x7806
                           (begin
                             (write '(funapp 1288 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1288 58))
                           (display "\n")
                           (car x7806)))))
                      (begin
                        (write '(funapp 1289 23))
                        (display "\n")
                        (cdr x7805)))))
                   g7804)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
                        (display "\n")
                        (assert x7809))))
                    (g7808
                     (letrec*
                      ((x-cnd7810
                        (begin
                          (write '(funapp 1297 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7810
                        #f
                        (letrec*
                         ((x-cnd7811
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1302 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1302 56))
                              (display "\n")
                              (equal? x7812 k)))))
                         (if x-cnd7811
                           (begin
                             (write '(funapp 1304 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7813
                              (begin
                                (write '(funapp 1305 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1305 55))
                              (display "\n")
                              (assoc k x7813)))))))))
                   g7808)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1310 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1310 55))
                        (display "\n")
                        (car x7815)))))
                   g7814)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1317 63))
                        (display "\n")
                        (not x7821)))))
                   g7818)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1324 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7823
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1326 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7823))))
                   g7822)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1332 62))
                        (display "\n")
                        (assert x7827))))
                    (g7825
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1333 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1333 57))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 1336 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7829
                        #t
                        (letrec*
                         ((x-cnd7830
                           (begin
                             (write '(funapp 1340 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7830
                           (letrec*
                            ((g7831
                              (letrec*
                               ((x7833
                                 (begin
                                   (write '(funapp 1343 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1343 64))
                                 (display "\n")
                                 (f x7833))))
                             (g7832
                              (letrec*
                               ((x7834
                                 (begin
                                   (write '(funapp 1345 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1345 58))
                                 (display "\n")
                                 (for-each f x7834)))))
                            g7832)
                           (begin
                             (write '(funapp 1347 27))
                             (display "\n")
                             '())))))))
                   g7826)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1352 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1352 59))
                        (display "\n")
                        (assert x7837))))
                    (g7836
                     (letrec*
                      ((x-cnd7838
                        (begin
                          (write '(funapp 1354 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7838
                        (begin
                          (write '(funapp 1354 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7836)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7842))))
                    (g7840
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1360 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1360 58))
                        (display "\n")
                        (assert x7843))))
                    (g7841
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1363 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7844
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1365 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7844))))
                   g7841)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7846
                        (letrec*
                         ((x7847
                           (letrec*
                            ((x7848
                              (begin
                                (write '(funapp 1375 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1375 61))
                              (display "\n")
                              (cdr x7848)))))
                         (begin
                           (write '(funapp 1376 26))
                           (display "\n")
                           (cdr x7847)))))
                      (begin
                        (write '(funapp 1377 23))
                        (display "\n")
                        (car x7846)))))
                   g7845)))
               (newline (lambda () (letrec* ((g7849 #f)) g7849)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7852
                        (letrec*
                         ((x7853
                           (begin
                             (write '(funapp 1385 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1385 58))
                           (display "\n")
                           (abs x7853))))
                       (x7851
                        (begin
                          (write '(funapp 1386 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1387 23))
                        (display "\n")
                        (/ x7852 x7851)))))
                   g7850)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1393 59))
                        (display "\n")
                        (assert x7856))))
                    (g7855
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1394 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1394 56))
                        (display "\n")
                        (not x7857)))))
                   g7855)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1399 57))
                        (display "\n")
                        (assert x7862))))
                    (g7859
                     (letrec*
                      ((x7863
                        (begin
                          (write '(funapp 1400 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1400 63))
                        (display "\n")
                        (assert x7863))))
                    (g7860
                     (letrec*
                      ((x7864
                        (letrec*
                         ((x7865
                           (begin
                             (write '(funapp 1403 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1403 61))
                           (display "\n")
                           (< index x7865)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (assert x7864))))
                    (g7861
                     (letrec*
                      ((x-cnd7866
                        (begin
                          (write '(funapp 1407 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7866
                        (begin
                          (write '(funapp 1409 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7868
                           (begin
                             (write '(funapp 1411 34))
                             (display "\n")
                             (cdr l)))
                          (x7867
                           (begin
                             (write '(funapp 1411 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1412 26))
                           (display "\n")
                           (list-ref x7868 x7867)))))))
                   g7861)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x-cnd7870
                        (begin
                          (write '(funapp 1419 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7870
                        a
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 1422 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1422 57))
                           (display "\n")
                           (gcd b x7871)))))))
                   g7869)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x-cnd7873
                        (begin
                          (write '(funapp 1429 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7873
                        empty
                        (letrec*
                         ((x7874
                           (letrec*
                            ((x7875
                              (begin
                                (write '(funapp 1434 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1434 55))
                              (display "\n")
                              (mk-list x7875 x)))))
                         (begin
                           (write '(funapp 1435 26))
                           (display "\n")
                           (cons x x7874)))))))
                   g7872)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x-cnd7877
                        (begin
                          (write '(funapp 1442 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7877
                        #f
                        (letrec*
                         ((val7259
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1446 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1446 64))
                              (display "\n")
                              (= x x7878)))))
                         (letrec*
                          ((g7879
                            (if val7259
                              val7259
                              (letrec*
                               ((x7880
                                 (begin
                                   (write '(funapp 1451 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1451 59))
                                 (display "\n")
                                 (mem x x7880))))))
                          g7879))))))
                   g7876))))
              (letrec*
               ((g7881
                 (begin
                   (write '(funapp 1456 18))
                   (display "\n")
                   ((lambda (j7335 k7336 f7337)
                      (letrec*
                       ((g7883
                         (lambda (g7333 g7334)
                           (letrec*
                            ((g7884
                              (letrec*
                               ((x7338
                                 (begin
                                   (write '(funapp 1463 38))
                                   (display "\n")
                                   (integer?/c j7335 k7336 g7333)))
                                (x7339
                                 (begin
                                   (write '(funapp 1464 38))
                                   (display "\n")
                                   (integer?/c j7335 k7336 g7334))))
                               (letrec*
                                ((g7885
                                  (letrec*
                                   ((x7887
                                     (begin
                                       (write '(funapp 1469 36))
                                       (display "\n")
                                       ((lambda (_ x)
                                          (letrec*
                                           ((g7888
                                             (letrec*
                                              ((x7893
                                                (begin
                                                  (write '(funapp 1473 51))
                                                  (display "\n")
                                                  (listof integer?/c))))
                                              (begin
                                                (write '(funapp 1474 43))
                                                (display "\n")
                                                (and/c
                                                 x7893
                                                 (lambda (g7340 g7341 g7342)
                                                   (letrec*
                                                    ((g7889
                                                      (letrec*
                                                       ((x-cnd7890
                                                         (begin
                                                           (write
                                                            '(funapp 1481 52))
                                                           (display "\n")
                                                           ((lambda (l)
                                                              (letrec*
                                                               ((g7891
                                                                 (letrec*
                                                                  ((val7260
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1486
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (empty?
                                                                       l))))
                                                                  (letrec*
                                                                   ((g7892
                                                                     (if val7260
                                                                       val7260
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            1491
                                                                            64))
                                                                         (display
                                                                          "\n")
                                                                         (member
                                                                          x
                                                                          l)))))
                                                                   g7892))))
                                                               g7891))
                                                            g7342))))
                                                       (if x-cnd7890
                                                         g7342
                                                         (begin
                                                           (write
                                                            '(blame
                                                              g7340
                                                              1497
                                                              51))
                                                           (display "\n")
                                                           (error
                                                            (format
                                                             "contract violation, blaming ~a~%"
                                                             g7340)))))))
                                                    g7889)))))))
                                           g7888))
                                        x7338
                                        x7339)))
                                    (x7886
                                     (begin
                                       (write '(funapp 1509 42))
                                       (display "\n")
                                       (f7337 x7338 x7339))))
                                   (begin
                                     (write '(funapp 1510 34))
                                     (display "\n")
                                     (x7887 j7335 k7336 x7886)))))
                                g7885))))
                            g7884))))
                       g7883))
                    (begin (write '(funapp 1514 18)) (display "\n") 'module)
                    (begin (write '(funapp 1515 18)) (display "\n") 'importer)
                    mk-list)))
                (g7882
                 (letrec*
                  ((x7896
                    (begin
                      (write '(funapp 1520 21))
                      (display "\n")
                      ((lambda (j7345 k7346 f7347)
                         (letrec*
                          ((g7897
                            (lambda (g7343 g7344)
                              (letrec*
                               ((g7898
                                 (letrec*
                                  ((x7899
                                    (letrec*
                                     ((x7902
                                       (begin
                                         (write '(funapp 1529 44))
                                         (display "\n")
                                         (integer?/c j7345 k7346 g7343)))
                                      (x7900
                                       (letrec*
                                        ((x7901
                                          (begin
                                            (write '(funapp 1532 47))
                                            (display "\n")
                                            (listof integer?/c))))
                                        (begin
                                          (write '(funapp 1533 39))
                                          (display "\n")
                                          (x7901 j7345 k7346 g7344)))))
                                     (begin
                                       (write '(funapp 1534 36))
                                       (display "\n")
                                       (f7347 x7902 x7900)))))
                                  (begin
                                    (write '(funapp 1535 33))
                                    (display "\n")
                                    (boolean?/c j7345 k7346 x7899)))))
                               g7898))))
                          g7897))
                       (begin (write '(funapp 1538 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1539 21))
                         (display "\n")
                         'importer)
                       mem)))
                   (x7895 (input))
                   (x7894 (input)))
                  (begin
                    (write '(funapp 1543 19))
                    (display "\n")
                    (x7896 x7895 x7894)))))
               g7882))))
           g7361))))
       g7359)))
    g7358)))
