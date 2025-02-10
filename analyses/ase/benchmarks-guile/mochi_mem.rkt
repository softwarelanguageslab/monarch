(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7344 #t)) g7344)))
    (meta (lambda (v) (letrec* ((g7345 v)) g7345)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7346
          (letrec*
           ((g7347
             (letrec*
              ((x-e7348 lst))
              (letrec*
               ((v1742 x-e7348))
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
                   ((x-cnd7349
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7349
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
           g7347)))
        g7346)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7350 (lambda (v) (letrec* ((g7351 v)) g7351)))) g7350)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7352
          (letrec*
           ((x7353 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7353)))))
        g7352))))
   (letrec*
    ((g7354
      (letrec*
       ((g7355
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
           ((g7356 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7357
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7358
                     (lambda (k j lst)
                       (letrec*
                        ((g7359
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7360
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7360))
                             lst))))
                        g7359))))
                   g7358)))
               (real?/c
                (lambda (g7260 g7261 g7262)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7262))))
                      (if x-cnd7362
                        g7262
                        (begin
                          (write '(blame g7260 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7260)))))))
                   g7361)))
               (boolean?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7265))))
                      (if x-cnd7364
                        g7265
                        (begin
                          (write '(blame g7263 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7363)))
               (number?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7268))))
                      (if x-cnd7366
                        g7268
                        (begin
                          (write '(blame g7266 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7365)))
               (any/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7369 #t)) g7369)) g7271))))
                      (if x-cnd7368
                        g7271
                        (begin
                          (write '(blame g7269 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7367)))
               (any?/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7372 #t)) g7372)) g7274))))
                      (if x-cnd7371
                        g7274
                        (begin
                          (write '(blame g7272 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7370)))
               (cons?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7277))))
                      (if x-cnd7374
                        g7277
                        (begin
                          (write '(blame g7275 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7373)))
               (pair?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7376
                        g7280
                        (begin
                          (write '(blame g7278 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7375)))
               (integer?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7283))))
                      (if x-cnd7378
                        g7283
                        (begin
                          (write '(blame g7281 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7377)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7379
                     (lambda (k j v)
                       (letrec*
                        ((g7380
                          (letrec*
                           ((x-cnd7381
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7381
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7380))))
                   g7379)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7382
                     (lambda (k j v)
                       (letrec*
                        ((g7383
                          (letrec*
                           ((x-cnd7384
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7384
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7388
                                (letrec*
                                 ((x7389
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7389))))
                               (x7385
                                (letrec*
                                 ((x7387
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7386
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7387 k j x7386)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7388 x7385)))))))
                        g7383))))
                   g7382)))
               (any? (lambda (v) (letrec* ((g7390 #t)) g7390)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7391
                     (letrec*
                      ((x7392
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7392)))))
                   g7391)))
               (nonzero?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x-cnd7394
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7395
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7396)))))
                              g7395))
                           g7286))))
                      (if x-cnd7394
                        g7286
                        (begin
                          (write '(blame g7284 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7393)))
               (meta (lambda (v) (letrec* ((g7397 v)) g7397)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7289 k7290 f7291)
                     (letrec*
                      ((g7399
                        (lambda (g7287 g7288)
                          (letrec*
                           ((g7400
                             (letrec*
                              ((x7401
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7289 k7290 g7287)))
                                  (x7402
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7289 k7290 g7288))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7291 x7403 x7402)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7289 k7290 x7401)))))
                           g7400))))
                      g7399))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7398
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7398)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7294 k7295 f7296)
                     (letrec*
                      ((g7405
                        (lambda (g7292 g7293)
                          (letrec*
                           ((g7406
                             (letrec*
                              ((x7407
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7294 k7295 g7292)))
                                  (x7408
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7294 k7295 g7293))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7296 x7409 x7408)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7294 k7295 x7407)))))
                           g7406))))
                      g7405))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7404
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7404)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7299 k7300 f7301)
                     (letrec*
                      ((g7411
                        (lambda (g7297 g7298)
                          (letrec*
                           ((g7412
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7299 k7300 g7297)))
                                  (x7414
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7299 k7300 g7298))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7301 x7415 x7414)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7299 k7300 x7413)))))
                           g7412))))
                      g7411))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7410
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7410)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7304 k7305 f7306)
                     (letrec*
                      ((g7417
                        (lambda (g7302 g7303)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7304 k7305 g7302)))
                                  (x7420
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7304 k7305 g7303))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7306 x7421 x7420)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7304 k7305 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7416)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7308 k7309 f7310)
                     (letrec*
                      ((g7423
                        (lambda (g7307)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7426
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7308 k7309 g7307))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7310 x7426)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7308 k7309 x7425)))))
                           g7424))))
                      g7423))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7422
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7422)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7312 k7313 f7314)
                     (letrec*
                      ((g7428
                        (lambda (g7311)
                          (letrec*
                           ((g7429
                             (letrec*
                              ((x7430
                                (letrec*
                                 ((x7431
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7312 k7313 g7311))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7314 x7431)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7312 k7313 x7430)))))
                           g7429))))
                      g7428))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7427
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7427)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7317 k7318 f7319)
                     (letrec*
                      ((g7433
                        (lambda (g7315 g7316)
                          (letrec*
                           ((g7434
                             (letrec*
                              ((x7435
                                (letrec*
                                 ((x7437
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7317 k7318 g7315)))
                                  (x7436
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7317 k7318 g7316))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7319 x7437 x7436)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7317 k7318 x7435)))))
                           g7434))))
                      g7433))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7432
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7432)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7321 k7322 f7323)
                     (letrec*
                      ((g7439
                        (lambda (g7320)
                          (letrec*
                           ((g7440
                             (letrec*
                              ((x7441
                                (letrec*
                                 ((x7442
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7321 k7322 g7320))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7323 x7442)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7321 k7322 x7441)))))
                           g7440))))
                      g7439))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7438
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7438)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7326 k7327 f7328)
                     (letrec*
                      ((g7444
                        (lambda (g7324 g7325)
                          (letrec*
                           ((g7445
                             (letrec*
                              ((x7446
                                (letrec*
                                 ((x7448
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7326 k7327 g7324)))
                                  (x7447
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7326 k7327 g7325))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7328 x7448 x7447)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7326 k7327 x7446)))))
                           g7445))))
                      g7444))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7443
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7443)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7449
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7449)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x7451
                        (letrec*
                         ((x7452
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7452)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7451)))))
                   g7450)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x7456
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7456))))
                    (g7454
                     (letrec*
                      ((x7457
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7457))))
                    (g7455
                     (letrec*
                      ((x-cnd7458
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7458
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7461
                           (letrec*
                            ((x7462
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7462))))
                          (x7459
                           (letrec*
                            ((x7460
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7460)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7461 x7459)))))))
                   g7455)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x7464
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7464)))))
                   g7463)))
               (cadadr
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7468)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7467)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7466)))))
                   g7465)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7470
                        (letrec*
                         ((x7471
                           (letrec*
                            ((x7472
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7472)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7471)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7470)))))
                   g7469)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x7476
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7476))))
                    (g7474
                     (letrec*
                      ((x7477
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7477))))
                    (g7475
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
                       ((g7478
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7479 res))
                       g7479))))
                   g7475)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7481
                        (letrec*
                         ((x7482
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7482)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7481)))))
                   g7480)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7484
                        (letrec*
                         ((x7485
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7486)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7485)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7484)))))
                   g7483)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7489
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7489))))
                    (g7488
                     (letrec*
                      ((x-cnd7490
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7490
                        #f
                        (letrec*
                         ((x-cnd7491
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7492 k)))))
                         (if x-cnd7491
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7493)))))))))
                   g7488)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7495)))))
                   g7494)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7498))))
                    (g7497
                     (letrec*
                      ((x-cnd7499
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7499
                        ""
                        (letrec*
                         ((x7502
                           (letrec*
                            ((x7503
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7503))))
                          (x7500
                           (letrec*
                            ((x7501
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7501)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7502 x7500)))))))
                   g7497)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7504
                     (letrec*
                      ((x7507
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7507))))
                    (g7505
                     (letrec*
                      ((x7508
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7508))))
                    (g7506
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7509
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7509))))
                   g7506)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7511
                        (letrec*
                         ((x7512
                           (letrec*
                            ((x7513
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7513)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7512)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7511)))))
                   g7510)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x7517
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7517))))
                    (g7515
                     (letrec*
                      ((x7518
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7518))))
                    (g7516
                     (letrec*
                      ((x-cnd7519
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7519
                        x
                        (letrec*
                         ((x7521
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7520
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7521 x7520)))))))
                   g7516)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7522
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7522)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7523
                     (letrec*
                      ((x-cnd7524
                        (letrec*
                         ((x7525 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7525)))))
                      (if x-cnd7524
                        (letrec*
                         ((x7526 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7526)))
                        #f))))
                   g7523)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x7529
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7529))))
                    (g7528
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7530
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7531 (if val7243 val7243 #f)))
                             g7531)))))
                       g7530))))
                   g7528)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7533
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7533 9)))))
                      (letrec*
                       ((g7534
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7535
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7535 10)))))
                            (letrec*
                             ((g7536
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7537
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7537 32))))))
                             g7536)))))
                       g7534))))
                   g7532)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7539
                        (letrec*
                         ((x7540
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7540)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7539)))))
                   g7538)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7543
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7543))))
                    (g7542
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7542)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7544 #f)) g7544)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7546)))))
                   g7545)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((x7549
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7549))))
                    (g7548
                     (letrec*
                      ((x-cnd7550
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7550
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7548)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7552
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7554
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7553
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7554 x7553)))))
                            (letrec*
                             ((g7555
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7558
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7557
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7556
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7558 x7557 x7556)))))
                                  (letrec*
                                   ((g7559
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7567
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7566
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7563
                                             (letrec*
                                              ((x7565
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7564
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7565 x7564))))
                                            (x7560
                                             (letrec*
                                              ((x7562
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7561
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7562 x7561)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7567 x7566 x7563 x7560)))))
                                        (letrec*
                                         ((g7568
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7584
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7583
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7569
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7570
                                                    (letrec*
                                                     ((x7581
                                                       (letrec*
                                                        ((x7582
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
                                                          (= x7582 n))))
                                                      (x7571
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7572
                                                               (letrec*
                                                                ((x7579
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7573
                                                                  (letrec*
                                                                   ((x7576
                                                                     (letrec*
                                                                      ((x7578
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
                                                                       (x7577
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
                                                                         x7578
                                                                         x7577))))
                                                                    (x7574
                                                                     (letrec*
                                                                      ((x7575
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
                                                                         x7575)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7576
                                                                          x7574)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7579
                                                                      x7573)))))
                                                             g7572))))
                                                        (letrec*
                                                         ((g7580
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7580))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7581 x7571)))))
                                                  g7570))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7584 x7583 x7569))))))
                                         g7568)))))
                                   g7559)))))
                             g7555)))))
                       g7552))))
                   g7551)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7588)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7587)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7586)))))
                   g7585)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7590
                        (letrec*
                         ((x7591
                           (letrec*
                            ((x7592
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7592)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7591)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7590)))))
                   g7589)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7593
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7593)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7596))))
                    (g7595
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7597
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7598 (if val7251 val7251 #f)))
                             g7598)))))
                       g7597))))
                   g7595)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7603))))
                    (g7601
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
                       ((g7604
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7605 res))
                       g7605))))
                   g7601)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7606
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7606)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7610
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7610))))
                    (g7608
                     (letrec*
                      ((x7611
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7611))))
                    (g7609
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7612
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7612))))
                   g7609)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7619)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7622)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7621)))))
                   g7620)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7629))))
                    (g7627
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7630))))
                    (g7628
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7631)))))
                   g7628)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7633
                        (letrec*
                         ((x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7635)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7634)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7633)))))
                   g7632)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7638
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7638))))
                    (g7637
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7637)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7639
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7639)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7641)))))
                   g7640)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7643
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7643)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7646))))
                    (g7645
                     (letrec*
                      ((x-cnd7647
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7647
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7651))))
                          (x7648
                           (letrec*
                            ((x7649
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7649)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7650 x7648)))))))
                   g7645)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7655)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7653)))))
                   g7652)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7659)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7658)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7657)))))
                   g7656)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7660
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7662))))
                    (g7661
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7663)))))
                   g7661)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7664
                     (letrec*
                      ((x7665
                        (letrec*
                         ((x7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7667)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7666)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7665)))))
                   g7664)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7668
                     (letrec*
                      ((x7671
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7671))))
                    (g7669
                     (letrec*
                      ((x7672
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7672))))
                    (g7670
                     (letrec*
                      ((x-cnd7673
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7673
                        (letrec*
                         ((g7674
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7674)
                        (letrec*
                         ((x-cnd7675
                           (letrec*
                            ((x7676
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7676)))))
                         (if x-cnd7675
                           (letrec*
                            ((g7677
                              (letrec*
                               ((x7678
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7678)))))
                            g7677)
                           (letrec*
                            ((x-cnd7679
                              (letrec*
                               ((x7680
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7680)))))
                            (if x-cnd7679
                              (letrec*
                               ((g7681
                                 (letrec*
                                  ((x7683
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7682
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7683 x7682)))))
                               g7681)
                              (letrec*
                               ((x-cnd7684
                                 (letrec*
                                  ((x7685
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7685)))))
                               (if x-cnd7684
                                 (letrec*
                                  ((g7686
                                    (letrec*
                                     ((x7689
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7688
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7687
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7689 x7688 x7687)))))
                                  g7686)
                                 (letrec*
                                  ((x-cnd7690
                                    (letrec*
                                     ((x7691
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7691)))))
                                  (if x-cnd7690
                                    (letrec*
                                     ((g7692
                                       (letrec*
                                        ((x7696
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7695
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7694
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7693
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7696 x7695 x7694 x7693)))))
                                     g7692)
                                    (letrec*
                                     ((x-cnd7697
                                       (letrec*
                                        ((x7698
                                          (letrec*
                                           ((x7699
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7699)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7698)))))
                                     (if x-cnd7697
                                       (letrec*
                                        ((g7700
                                          (letrec*
                                           ((x7706
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7705
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7704
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7703
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7701
                                             (letrec*
                                              ((x7702
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7702)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7706
                                              x7705
                                              x7704
                                              x7703
                                              x7701)))))
                                        g7700)
                                       (letrec*
                                        ((x-cnd7707
                                          (letrec*
                                           ((x7708
                                             (letrec*
                                              ((x7709
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7709)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7708)))))
                                        (if x-cnd7707
                                          (letrec*
                                           ((g7710
                                             (letrec*
                                              ((x7718
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7717
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7716
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7715
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7713
                                                (letrec*
                                                 ((x7714
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7714))))
                                               (x7711
                                                (letrec*
                                                 ((x7712
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7712)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7718
                                                 x7717
                                                 x7716
                                                 x7715
                                                 x7713
                                                 x7711)))))
                                           g7710)
                                          (letrec*
                                           ((x-cnd7719
                                             (letrec*
                                              ((x7720
                                                (letrec*
                                                 ((x7721
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7721)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7720)))))
                                           (if x-cnd7719
                                             (letrec*
                                              ((g7722
                                                (letrec*
                                                 ((x7732
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7731
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7730
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7729
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7727
                                                   (letrec*
                                                    ((x7728
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7728))))
                                                  (x7725
                                                   (letrec*
                                                    ((x7726
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7726))))
                                                  (x7723
                                                   (letrec*
                                                    ((x7724
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7724)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7732
                                                    x7731
                                                    x7730
                                                    x7729
                                                    x7727
                                                    x7725
                                                    x7723)))))
                                              g7722)
                                             (letrec*
                                              ((g7733
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7733)))))))))))))))))))
                   g7670)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7736))))
                    (g7735
                     (letrec*
                      ((x-cnd7737
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7737
                        #f
                        (letrec*
                         ((x-cnd7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7739 e)))))
                         (if x-cnd7738
                           l
                           (letrec*
                            ((x7740
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7740)))))))))
                   g7735)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7744)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7743)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7742)))))
                   g7741)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (letrec*
                         ((x7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7748)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7747)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7749
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7749)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7752
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7752))))
                    (g7751
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7751)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7754
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7754))))
                   g7753)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7756)))))
                   g7755)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7760
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7759)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7760 x7758)))))
                      (letrec*
                       ((g7761
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7761))))
                   g7757)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7763
                        (letrec*
                         ((x7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7765)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7764)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7763)))))
                   g7762)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x-cnd7767
                        (letrec*
                         ((x7768 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7768 c)))))
                      (if x-cnd7767
                        (letrec*
                         ((x7769 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7769)))
                        #f))))
                   g7766)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (letrec*
                      ((x-cnd7773
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7773
                        #f
                        (letrec*
                         ((x-cnd7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7775 k)))))
                         (if x-cnd7774
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7776)))))))))
                   g7771)))
               (not (lambda (x) (letrec* ((g7777 (if x #f #t))) g7777)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7778
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7778)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (letrec*
                      ((x-cnd7782
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7782
                        #f
                        (letrec*
                         ((x-cnd7783
                           (letrec*
                            ((x7784
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7784 e)))))
                         (if x-cnd7783
                           l
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7785)))))))))
                   g7780)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (letrec*
                         ((x7788
                           (letrec*
                            ((x7789
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7789)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7788)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7787)))))
                   g7786)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7792))))
                    (g7791
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7793
                             (letrec*
                              ((x-cnd7794
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7794
                                0
                                (letrec*
                                 ((x7795
                                   (letrec*
                                    ((x7796
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7796)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7795)))))))
                           g7793))))
                      (letrec*
                       ((g7797
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7797))))
                   g7791)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7801))))
                    (g7799
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7802))))
                    (g7800
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7803
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7803))))
                   g7800)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7805)))))
                   g7804)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (letrec*
                         ((x7808
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7808)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7807)))))
                   g7806)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7811))))
                    (g7810
                     (letrec*
                      ((x-cnd7812
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7812
                        #f
                        (letrec*
                         ((x-cnd7813
                           (letrec*
                            ((x7814
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7814 k)))))
                         (if x-cnd7813
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7815
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7815)))))))))
                   g7810)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7817)))))
                   g7816)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7823)))))
                   g7820)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7825
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7825))))
                   g7824)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x-cnd7831
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7831
                        #t
                        (letrec*
                         ((x-cnd7832
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7832
                           (letrec*
                            ((g7833
                              (letrec*
                               ((x7835
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7835))))
                             (g7834
                              (letrec*
                               ((x7836
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7836)))))
                            g7834)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7828)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7839))))
                    (g7838
                     (letrec*
                      ((x-cnd7840
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7840
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7838)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7844))))
                    (g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7846
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7846))))
                   g7843)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7848
                        (letrec*
                         ((x7849
                           (letrec*
                            ((x7850
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7850)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7849)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7848)))))
                   g7847)))
               (newline (lambda () (letrec* ((g7851 #f)) g7851)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (letrec*
                         ((x7855
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7855))))
                       (x7853
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7854 x7853)))))
                   g7852)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7858))))
                    (g7857
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7859)))))
                   g7857)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x7864
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7864))))
                    (g7861
                     (letrec*
                      ((x7865
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7865))))
                    (g7862
                     (letrec*
                      ((x7866
                        (letrec*
                         ((x7867
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7867)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7866))))
                    (g7863
                     (letrec*
                      ((x-cnd7868
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7868
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7870
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7869
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7870 x7869)))))))
                   g7863)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7872
                        a
                        (letrec*
                         ((x7873
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7873)))))))
                   g7871)))
               (mk-list
                (lambda (n x)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x-cnd7875
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7875
                        empty
                        (letrec*
                         ((x7876
                           (letrec*
                            ((x7877
                              (begin
                                (write '(funapp 1409 45))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1409 55))
                              (display "\n")
                              (mk-list x7877 x)))))
                         (begin
                           (write '(funapp 1410 26))
                           (display "\n")
                           (cons x x7876)))))))
                   g7874)))
               (mem
                (lambda (x xs)
                  (letrec*
                   ((g7878
                     (letrec*
                      ((x-cnd7879
                        (begin
                          (write '(funapp 1417 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7879
                        #f
                        (letrec*
                         ((val7258
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1421 53))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1421 64))
                              (display "\n")
                              (= x x7880)))))
                         (letrec*
                          ((g7881
                            (if val7258
                              val7258
                              (letrec*
                               ((x7882
                                 (begin
                                   (write '(funapp 1426 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1426 59))
                                 (display "\n")
                                 (mem x x7882))))))
                          g7881))))))
                   g7878))))
              (letrec*
               ((g7883
                 (begin
                   (write '(funapp 1431 18))
                   (display "\n")
                   ((lambda (j7331 k7332 f7333)
                      (letrec*
                       ((g7885
                         (lambda (g7329 g7330)
                           (letrec*
                            ((g7886
                              (letrec*
                               ((x7334
                                 (begin
                                   (write '(funapp 1438 38))
                                   (display "\n")
                                   (integer?/c j7331 k7332 g7329)))
                                (x7335
                                 (begin
                                   (write '(funapp 1439 38))
                                   (display "\n")
                                   (integer?/c j7331 k7332 g7330))))
                               (letrec*
                                ((g7887
                                  (letrec*
                                   ((x7889
                                     (begin
                                       (write '(funapp 1444 36))
                                       (display "\n")
                                       ((lambda (_ x)
                                          (letrec*
                                           ((g7890
                                             (letrec*
                                              ((x7895
                                                (begin
                                                  (write '(funapp 1448 51))
                                                  (display "\n")
                                                  (listof integer?/c))))
                                              (begin
                                                (write '(funapp 1449 43))
                                                (display "\n")
                                                (and/c
                                                 x7895
                                                 (lambda (g7336 g7337 g7338)
                                                   (letrec*
                                                    ((g7891
                                                      (letrec*
                                                       ((x-cnd7892
                                                         (begin
                                                           (write
                                                            '(funapp 1456 52))
                                                           (display "\n")
                                                           ((lambda (l)
                                                              (letrec*
                                                               ((g7893
                                                                 (letrec*
                                                                  ((val7259
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1461
                                                                         61))
                                                                      (display
                                                                       "\n")
                                                                      (empty?
                                                                       l))))
                                                                  (letrec*
                                                                   ((g7894
                                                                     (if val7259
                                                                       val7259
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            1466
                                                                            64))
                                                                         (display
                                                                          "\n")
                                                                         (member
                                                                          x
                                                                          l)))))
                                                                   g7894))))
                                                               g7893))
                                                            g7338))))
                                                       (if x-cnd7892
                                                         g7338
                                                         (begin
                                                           (write
                                                            '(blame
                                                              g7336
                                                              1472
                                                              51))
                                                           (display "\n")
                                                           (error
                                                            (format
                                                             "contract violation, blaming ~a~%"
                                                             g7336)))))))
                                                    g7891)))))))
                                           g7890))
                                        x7334
                                        x7335)))
                                    (x7888
                                     (begin
                                       (write '(funapp 1484 42))
                                       (display "\n")
                                       (f7333 x7334 x7335))))
                                   (begin
                                     (write '(funapp 1485 34))
                                     (display "\n")
                                     (x7889 j7331 k7332 x7888)))))
                                g7887))))
                            g7886))))
                       g7885))
                    (begin (write '(funapp 1489 18)) (display "\n") 'module)
                    (begin (write '(funapp 1490 18)) (display "\n") 'importer)
                    mk-list)))
                (g7884
                 (letrec*
                  ((x7898
                    (begin
                      (write '(funapp 1495 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7899
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7900
                                 (letrec*
                                  ((x7901
                                    (letrec*
                                     ((x7904
                                       (begin
                                         (write '(funapp 1504 44))
                                         (display "\n")
                                         (integer?/c j7341 k7342 g7339)))
                                      (x7902
                                       (letrec*
                                        ((x7903
                                          (begin
                                            (write '(funapp 1507 47))
                                            (display "\n")
                                            (listof integer?/c))))
                                        (begin
                                          (write '(funapp 1508 39))
                                          (display "\n")
                                          (x7903 j7341 k7342 g7340)))))
                                     (begin
                                       (write '(funapp 1509 36))
                                       (display "\n")
                                       (f7343 x7904 x7902)))))
                                  (begin
                                    (write '(funapp 1510 33))
                                    (display "\n")
                                    (boolean?/c j7341 k7342 x7901)))))
                               g7900))))
                          g7899))
                       (begin (write '(funapp 1513 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1514 21))
                         (display "\n")
                         'importer)
                       mem)))
                   (x7897 (input))
                   (x7896 (input)))
                  (begin
                    (write '(funapp 1518 19))
                    (display "\n")
                    (x7898 x7897 x7896)))))
               g7884))))
           g7357))))
       g7355)))
    g7354)))
