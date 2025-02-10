(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7327 #t)) g7327)))
    (meta (lambda (v) (letrec* ((g7328 v)) g7328)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7329
          (letrec*
           ((g7330
             (letrec*
              ((x-e7331 lst))
              (letrec*
               ((v1742 x-e7331))
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
                   ((x-cnd7332
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7332
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
           g7330)))
        g7329)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7333 (lambda (v) (letrec* ((g7334 v)) g7334)))) g7333)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7335
          (letrec*
           ((x7336 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7336)))))
        g7335))))
   (letrec*
    ((g7337
      (letrec*
       ((g7338
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
           ((g7339 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7340
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7341
                     (lambda (k j lst)
                       (letrec*
                        ((g7342
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7343
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7343))
                             lst))))
                        g7342))))
                   g7341)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7344
                     (letrec*
                      ((x-cnd7345
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7345
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7344)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7346
                     (letrec*
                      ((x-cnd7347
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7347
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7346)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7348
                     (letrec*
                      ((x-cnd7349
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7349
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7348)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7350
                     (letrec*
                      ((x-cnd7351
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7352 #t)) g7352)) g7269))))
                      (if x-cnd7351
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7350)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7355 #t)) g7355)) g7272))))
                      (if x-cnd7354
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7353)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7357
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7356)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7359
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7358)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7361
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7360)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7362
                     (lambda (k j v)
                       (letrec*
                        ((g7363
                          (letrec*
                           ((x-cnd7364
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7364
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7363))))
                   g7362)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7365
                     (lambda (k j v)
                       (letrec*
                        ((g7366
                          (letrec*
                           ((x-cnd7367
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7367
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7371
                                (letrec*
                                 ((x7372
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7372))))
                               (x7368
                                (letrec*
                                 ((x7370
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7369
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7370 k j x7369)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7371 x7368)))))))
                        g7366))))
                   g7365)))
               (any? (lambda (v) (letrec* ((g7373 #t)) g7373)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x7375
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7375)))))
                   g7374)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7378
                                (letrec*
                                 ((x7379
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7379)))))
                              g7378))
                           g7284))))
                      (if x-cnd7377
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7376)))
               (meta (lambda (v) (letrec* ((g7380 v)) g7380)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7382
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7383
                             (letrec*
                              ((x7384
                                (letrec*
                                 ((x7386
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7385
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7386 x7385)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7384)))))
                           g7383))))
                      g7382))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7381
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7381)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7388
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7389
                             (letrec*
                              ((x7390
                                (letrec*
                                 ((x7392
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7391
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7392 x7391)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7390)))))
                           g7389))))
                      g7388))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7387
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7387)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7394
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7395
                             (letrec*
                              ((x7396
                                (letrec*
                                 ((x7398
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7397
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7398 x7397)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7396)))))
                           g7395))))
                      g7394))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7393
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7393)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7400
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7401
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7403
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7404 x7403)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7402)))))
                           g7401))))
                      g7400))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7399
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7399)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7406
                        (lambda (g7305)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7409)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7408)))))
                           g7407))))
                      g7406))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7405
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7405)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7411
                        (lambda (g7309)
                          (letrec*
                           ((g7412
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7414)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7413)))))
                           g7412))))
                      g7411))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7410
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7410)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7416
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7417
                             (letrec*
                              ((x7418
                                (letrec*
                                 ((x7420
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7419
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7420 x7419)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7418)))))
                           g7417))))
                      g7416))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7415
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7415)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7422
                        (lambda (g7318)
                          (letrec*
                           ((g7423
                             (letrec*
                              ((x7424
                                (letrec*
                                 ((x7425
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7425)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7424)))))
                           g7423))))
                      g7422))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7421
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7421)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7427
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7428
                             (letrec*
                              ((x7429
                                (letrec*
                                 ((x7431
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7430
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7431 x7430)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7429)))))
                           g7428))))
                      g7427))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7426
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7426)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7432
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7432)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7433
                     (letrec*
                      ((x7434
                        (letrec*
                         ((x7435
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7435)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7434)))))
                   g7433)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x7439
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7439))))
                    (g7437
                     (letrec*
                      ((x7440
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7440))))
                    (g7438
                     (letrec*
                      ((x-cnd7441
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7441
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7444
                           (letrec*
                            ((x7445
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7445))))
                          (x7442
                           (letrec*
                            ((x7443
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7443)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7444 x7442)))))))
                   g7438)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x7447
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7447)))))
                   g7446)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7448
                     (letrec*
                      ((x7449
                        (letrec*
                         ((x7450
                           (letrec*
                            ((x7451
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7451)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7450)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7449)))))
                   g7448)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x7453
                        (letrec*
                         ((x7454
                           (letrec*
                            ((x7455
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7455)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7454)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7453)))))
                   g7452)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7459
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7459))))
                    (g7457
                     (letrec*
                      ((x7460
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7460))))
                    (g7458
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
                       ((g7461
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7462 res))
                       g7462))))
                   g7458)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x7464
                        (letrec*
                         ((x7465
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7465)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7464)))))
                   g7463)))
               (cdaadr
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
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7469)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7468)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7467)))))
                   g7466)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7472
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7472))))
                    (g7471
                     (letrec*
                      ((x-cnd7473
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7473
                        #f
                        (letrec*
                         ((x-cnd7474
                           (letrec*
                            ((x7475
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7475 k)))))
                         (if x-cnd7474
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7476
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7476)))))))))
                   g7471)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7478)))))
                   g7477)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7481))))
                    (g7480
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7482
                        ""
                        (letrec*
                         ((x7485
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7486))))
                          (x7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7484)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7485 x7483)))))))
                   g7480)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7490
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7490))))
                    (g7488
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7491))))
                    (g7489
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7492
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7492))))
                   g7489)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x7494
                        (letrec*
                         ((x7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7496)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7495)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7494)))))
                   g7493)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7500))))
                    (g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((x-cnd7502
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7502
                        x
                        (letrec*
                         ((x7504
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7503
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7504 x7503)))))))
                   g7499)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7505
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7505)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x-cnd7507
                        (letrec*
                         ((x7508 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7508)))))
                      (if x-cnd7507
                        (letrec*
                         ((x7509 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7509)))
                        #f))))
                   g7506)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x7512
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7512))))
                    (g7511
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7513
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7514 (if val7243 val7243 #f)))
                             g7514)))))
                       g7513))))
                   g7511)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7515
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7516
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7516 9)))))
                      (letrec*
                       ((g7517
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7518
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7518 10)))))
                            (letrec*
                             ((g7519
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7520
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7520 32))))))
                             g7519)))))
                       g7517))))
                   g7515)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((x7522
                        (letrec*
                         ((x7523
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7523)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7522)))))
                   g7521)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x7526
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7526))))
                    (g7525
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7525)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7527 #f)) g7527)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((x7529
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7529)))))
                   g7528)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7532))))
                    (g7531
                     (letrec*
                      ((x-cnd7533
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7533
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7531)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7535
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7537
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7536
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7537 x7536)))))
                            (letrec*
                             ((g7538
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7541
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7540
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7539
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7541 x7540 x7539)))))
                                  (letrec*
                                   ((g7542
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7550
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7549
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7546
                                             (letrec*
                                              ((x7548
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7547
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7548 x7547))))
                                            (x7543
                                             (letrec*
                                              ((x7545
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7544
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7545 x7544)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7550 x7549 x7546 x7543)))))
                                        (letrec*
                                         ((g7551
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7567
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7566
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7552
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7553
                                                    (letrec*
                                                     ((x7564
                                                       (letrec*
                                                        ((x7565
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
                                                          (= x7565 n))))
                                                      (x7554
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7555
                                                               (letrec*
                                                                ((x7562
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7556
                                                                  (letrec*
                                                                   ((x7559
                                                                     (letrec*
                                                                      ((x7561
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
                                                                       (x7560
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
                                                                         x7561
                                                                         x7560))))
                                                                    (x7557
                                                                     (letrec*
                                                                      ((x7558
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
                                                                         x7558)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7559
                                                                          x7557)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7562
                                                                      x7556)))))
                                                             g7555))))
                                                        (letrec*
                                                         ((g7563
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7563))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7564 x7554)))))
                                                  g7553))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7567 x7566 x7552))))))
                                         g7551)))))
                                   g7542)))))
                             g7538)))))
                       g7535))))
                   g7534)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7568
                     (letrec*
                      ((x7569
                        (letrec*
                         ((x7570
                           (letrec*
                            ((x7571
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7571)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7570)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7569)))))
                   g7568)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7572
                     (letrec*
                      ((x7573
                        (letrec*
                         ((x7574
                           (letrec*
                            ((x7575
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7575)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7574)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7573)))))
                   g7572)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7576
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7576)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7577
                     (letrec*
                      ((x7579
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7579))))
                    (g7578
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7580
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7581 (if val7251 val7251 #f)))
                             g7581)))))
                       g7580))))
                   g7578)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7585))))
                    (g7583
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7586))))
                    (g7584
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
                       ((g7587
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7588 res))
                       g7588))))
                   g7584)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7589
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7589)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7595
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7595))))
                   g7592)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7597
                        (letrec*
                         ((x7598
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7598)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7597)))))
                   g7596)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (letrec*
                         ((x7601
                           (letrec*
                            ((x7602
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7602)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7601)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7605)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7604)))))
                   g7603)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7607)))))
                   g7606)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7612
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7614)))))
                   g7611)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7618)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7621))))
                    (g7620
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7620)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7622
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7622)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7626
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7626)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7629))))
                    (g7628
                     (letrec*
                      ((x-cnd7630
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7630
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7634))))
                          (x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7632)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7633 x7631)))))))
                   g7628)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7638)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7636)))))
                   g7635)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7640
                        (letrec*
                         ((x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7642)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7641)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7640)))))
                   g7639)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7645
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7646)))))
                   g7644)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7648
                        (letrec*
                         ((x7649
                           (letrec*
                            ((x7650
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7650)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7648)))))
                   g7647)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7656
                        (letrec*
                         ((g7657
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7657)
                        (letrec*
                         ((x-cnd7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7659)))))
                         (if x-cnd7658
                           (letrec*
                            ((g7660
                              (letrec*
                               ((x7661
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7661)))))
                            g7660)
                           (letrec*
                            ((x-cnd7662
                              (letrec*
                               ((x7663
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7663)))))
                            (if x-cnd7662
                              (letrec*
                               ((g7664
                                 (letrec*
                                  ((x7666
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7665
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7666 x7665)))))
                               g7664)
                              (letrec*
                               ((x-cnd7667
                                 (letrec*
                                  ((x7668
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7668)))))
                               (if x-cnd7667
                                 (letrec*
                                  ((g7669
                                    (letrec*
                                     ((x7672
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7671
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7670
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7672 x7671 x7670)))))
                                  g7669)
                                 (letrec*
                                  ((x-cnd7673
                                    (letrec*
                                     ((x7674
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7674)))))
                                  (if x-cnd7673
                                    (letrec*
                                     ((g7675
                                       (letrec*
                                        ((x7679
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7678
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7677
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7676
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7679 x7678 x7677 x7676)))))
                                     g7675)
                                    (letrec*
                                     ((x-cnd7680
                                       (letrec*
                                        ((x7681
                                          (letrec*
                                           ((x7682
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7682)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7681)))))
                                     (if x-cnd7680
                                       (letrec*
                                        ((g7683
                                          (letrec*
                                           ((x7689
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7688
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7687
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7686
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7684
                                             (letrec*
                                              ((x7685
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7685)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7689
                                              x7688
                                              x7687
                                              x7686
                                              x7684)))))
                                        g7683)
                                       (letrec*
                                        ((x-cnd7690
                                          (letrec*
                                           ((x7691
                                             (letrec*
                                              ((x7692
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7692)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7691)))))
                                        (if x-cnd7690
                                          (letrec*
                                           ((g7693
                                             (letrec*
                                              ((x7701
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7700
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7699
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7698
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7696
                                                (letrec*
                                                 ((x7697
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7697))))
                                               (x7694
                                                (letrec*
                                                 ((x7695
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7695)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7701
                                                 x7700
                                                 x7699
                                                 x7698
                                                 x7696
                                                 x7694)))))
                                           g7693)
                                          (letrec*
                                           ((x-cnd7702
                                             (letrec*
                                              ((x7703
                                                (letrec*
                                                 ((x7704
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7704)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7703)))))
                                           (if x-cnd7702
                                             (letrec*
                                              ((g7705
                                                (letrec*
                                                 ((x7715
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7714
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7713
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7712
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7710
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7711))))
                                                  (x7708
                                                   (letrec*
                                                    ((x7709
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7709))))
                                                  (x7706
                                                   (letrec*
                                                    ((x7707
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7707)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7715
                                                    x7714
                                                    x7713
                                                    x7712
                                                    x7710
                                                    x7708
                                                    x7706)))))
                                              g7705)
                                             (letrec*
                                              ((g7716
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7716)))))))))))))))))))
                   g7653)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7717
                     (letrec*
                      ((x7719
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7719))))
                    (g7718
                     (letrec*
                      ((x-cnd7720
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7720
                        #f
                        (letrec*
                         ((x-cnd7721
                           (letrec*
                            ((x7722
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7722 e)))))
                         (if x-cnd7721
                           l
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7723)))))))))
                   g7718)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7725
                        (letrec*
                         ((x7726
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7727)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7726)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7729
                        (letrec*
                         ((x7730
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7730)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7729)))))
                   g7728)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7732
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7732)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7735
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7735))))
                    (g7734
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7734)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7737
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7737))))
                   g7736)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7743
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7742)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7743 x7741)))))
                      (letrec*
                       ((g7744
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7744))))
                   g7740)))
               (cddaar
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
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7748)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7747)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7746)))))
                   g7745)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x-cnd7750
                        (letrec*
                         ((x7751 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7751 c)))))
                      (if x-cnd7750
                        (letrec*
                         ((x7752 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7752)))
                        #f))))
                   g7749)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7755))))
                    (g7754
                     (letrec*
                      ((x-cnd7756
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7756
                        #f
                        (letrec*
                         ((x-cnd7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7758 k)))))
                         (if x-cnd7757
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7759)))))))))
                   g7754)))
               (not (lambda (x) (letrec* ((g7760 (if x #f #t))) g7760)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7761
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7761)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x7764
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7764))))
                    (g7763
                     (letrec*
                      ((x-cnd7765
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7765
                        #f
                        (letrec*
                         ((x-cnd7766
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7767 e)))))
                         (if x-cnd7766
                           l
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7768)))))))))
                   g7763)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7770
                        (letrec*
                         ((x7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7772)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7771)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7770)))))
                   g7769)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7776
                             (letrec*
                              ((x-cnd7777
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7777
                                0
                                (letrec*
                                 ((x7778
                                   (letrec*
                                    ((x7779
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7779)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7778)))))))
                           g7776))))
                      (letrec*
                       ((g7780
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7780))))
                   g7774)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7784))))
                    (g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7785))))
                    (g7783
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7786
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7786))))
                   g7783)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7788)))))
                   g7787)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (letrec*
                         ((x7791
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7791)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7790)))))
                   g7789)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7794))))
                    (g7793
                     (letrec*
                      ((x-cnd7795
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7795
                        #f
                        (letrec*
                         ((x-cnd7796
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7797 k)))))
                         (if x-cnd7796
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7798)))))))))
                   g7793)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7800)))))
                   g7799)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7804))))
                    (g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7806)))))
                   g7803)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7808
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7808))))
                   g7807)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x-cnd7814
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7814
                        #t
                        (letrec*
                         ((x-cnd7815
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7815
                           (letrec*
                            ((g7816
                              (letrec*
                               ((x7818
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7818))))
                             (g7817
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7819)))))
                            g7817)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7811)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7822))))
                    (g7821
                     (letrec*
                      ((x-cnd7823
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7823
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7821)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7827))))
                    (g7825
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7829
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7829))))
                   g7826)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7831
                        (letrec*
                         ((x7832
                           (letrec*
                            ((x7833
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7833)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7832)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7831)))))
                   g7830)))
               (newline (lambda () (letrec* ((g7834 #f)) g7834)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7837
                        (letrec*
                         ((x7838
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7838))))
                       (x7836
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7837 x7836)))))
                   g7835)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7841))))
                    (g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7842)))))
                   g7840)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7847))))
                    (g7844
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7848))))
                    (g7845
                     (letrec*
                      ((x7849
                        (letrec*
                         ((x7850
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7850)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7849))))
                    (g7846
                     (letrec*
                      ((x-cnd7851
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7851
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7853
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7852
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7853 x7852)))))))
                   g7846)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7855
                        a
                        (letrec*
                         ((x7856
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7856)))))))
                   g7854)))
               (id
                (letrec*
                 ((x7857 (begin (write '(funapp 1399 37)) (display "\n") (x))))
                 (begin (write '(funapp 1399 43)) (display "\n") (λ x7857 x))))
               (blur
                (letrec*
                 ((x7858 (begin (write '(funapp 1400 39)) (display "\n") (y))))
                 (begin (write '(funapp 1400 45)) (display "\n") (λ x7858 y))))
               (lp
                (letrec*
                 ((x7870 (begin (write '(funapp 1403 26)) (display "\n") (a)))
                  (x7859
                   (letrec*
                    ((x7869
                      (begin (write '(funapp 1406 29)) (display "\n") (n)))
                     (x7860
                      (letrec*
                       ((x-cnd7861
                         (begin
                           (write '(funapp 1409 36))
                           (display "\n")
                           (zero? n))))
                       (if x-cnd7861
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (id a))
                         (letrec*
                          ((r
                            (letrec*
                             ((x7862
                               (begin
                                 (write '(funapp 1413 48))
                                 (display "\n")
                                 (blur id))))
                             (begin
                               (write '(funapp 1413 60))
                               (display "\n")
                               (x7862 #t))))
                           (s
                            (letrec*
                             ((x7863
                               (begin
                                 (write '(funapp 1414 48))
                                 (display "\n")
                                 (blur id))))
                             (begin
                               (write '(funapp 1414 60))
                               (display "\n")
                               (x7863 #f)))))
                          (letrec*
                           ((g7864
                             (letrec*
                              ((x7865
                                (letrec*
                                 ((x7867
                                   (letrec*
                                    ((x7868
                                      (begin
                                        (write '(funapp 1421 53))
                                        (display "\n")
                                        (blur lp))))
                                    (begin
                                      (write '(funapp 1421 65))
                                      (display "\n")
                                      (x7868 s))))
                                  (x7866
                                   (begin
                                     (write '(funapp 1422 42))
                                     (display "\n")
                                     (sub1 n))))
                                 (begin
                                   (write '(funapp 1423 34))
                                   (display "\n")
                                   (x7867 x7866)))))
                              (begin
                                (write '(funapp 1424 31))
                                (display "\n")
                                (not x7865)))))
                           g7864))))))
                    (begin
                      (write '(funapp 1426 21))
                      (display "\n")
                      (λ x7869 x7860)))))
                 (begin
                   (write '(funapp 1427 18))
                   (display "\n")
                   (λ x7870 x7859)))))
              (letrec*
               ((g7871
                 (letrec*
                  ((x7872
                    (begin (write '(funapp 1429 41)) (display "\n") (lp #f))))
                  (begin (write '(funapp 1429 51)) (display "\n") (x7872 2)))))
               g7871))))
           g7340))))
       g7338)))
    g7337)))
