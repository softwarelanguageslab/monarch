(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7333 #t)) g7333)))
    (meta (lambda (v) (letrec* ((g7334 v)) g7334)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7335
          (letrec*
           ((g7336
             (letrec*
              ((x-e7337 lst))
              (letrec*
               ((v1742 x-e7337))
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
                   ((x-cnd7338
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7338
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
           g7336)))
        g7335)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7339 (lambda (v) (letrec* ((g7340 v)) g7340)))) g7339)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7341
          (letrec*
           ((x7342 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7342)))))
        g7341))))
   (letrec*
    ((g7343
      (letrec*
       ((g7344
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
           ((g7345 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7346
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7347
                     (lambda (k j lst)
                       (letrec*
                        ((g7348
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7349
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7349))
                             lst))))
                        g7348))))
                   g7347)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7350
                     (letrec*
                      ((x-cnd7351
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7351
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7350)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7352
                     (letrec*
                      ((x-cnd7353
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7353
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7352)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7355
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7354)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7358 #t)) g7358)) g7269))))
                      (if x-cnd7357
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7356)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7361 #t)) g7361)) g7272))))
                      (if x-cnd7360
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7359)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7363
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7362)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7365
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7364)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7367
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7366)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7368
                     (lambda (k j v)
                       (letrec*
                        ((g7369
                          (letrec*
                           ((x-cnd7370
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7370
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7369))))
                   g7368)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7371
                     (lambda (k j v)
                       (letrec*
                        ((g7372
                          (letrec*
                           ((x-cnd7373
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7373
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7377
                                (letrec*
                                 ((x7378
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7378))))
                               (x7374
                                (letrec*
                                 ((x7376
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7375
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7376 k j x7375)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7377 x7374)))))))
                        g7372))))
                   g7371)))
               (any? (lambda (v) (letrec* ((g7379 #t)) g7379)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x7381
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7381)))))
                   g7380)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x-cnd7383
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7384
                                (letrec*
                                 ((x7385
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7385)))))
                              g7384))
                           g7284))))
                      (if x-cnd7383
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7382)))
               (meta (lambda (v) (letrec* ((g7386 v)) g7386)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7388
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7389
                             (letrec*
                              ((x7390
                                (letrec*
                                 ((x7392
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7391
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7392 x7391)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7390)))))
                           g7389))))
                      g7388))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7387
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7387)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7394
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7395
                             (letrec*
                              ((x7396
                                (letrec*
                                 ((x7398
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7397
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7398 x7397)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7396)))))
                           g7395))))
                      g7394))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7393
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7393)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7400
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7401
                             (letrec*
                              ((x7402
                                (letrec*
                                 ((x7404
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7403
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7404 x7403)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7402)))))
                           g7401))))
                      g7400))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7399
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7399)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7406
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7407
                             (letrec*
                              ((x7408
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7409
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7410 x7409)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7408)))))
                           g7407))))
                      g7406))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7405
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7405)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7412
                        (lambda (g7305)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7415)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7414)))))
                           g7413))))
                      g7412))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7411
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7411)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7417
                        (lambda (g7309)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7420
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7420)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7416)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7422
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7423
                             (letrec*
                              ((x7424
                                (letrec*
                                 ((x7426
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7425
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7426 x7425)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7424)))))
                           g7423))))
                      g7422))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7421
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7421)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7428
                        (lambda (g7318)
                          (letrec*
                           ((g7429
                             (letrec*
                              ((x7430
                                (letrec*
                                 ((x7431
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7431)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7430)))))
                           g7429))))
                      g7428))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7427
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7427)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7433
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7434
                             (letrec*
                              ((x7435
                                (letrec*
                                 ((x7437
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7436
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7437 x7436)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7435)))))
                           g7434))))
                      g7433))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7432
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7432)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7438
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7438)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x7440
                        (letrec*
                         ((x7441
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7441)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7440)))))
                   g7439)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x7445
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7445))))
                    (g7443
                     (letrec*
                      ((x7446
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7446))))
                    (g7444
                     (letrec*
                      ((x-cnd7447
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7447
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7450
                           (letrec*
                            ((x7451
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7451))))
                          (x7448
                           (letrec*
                            ((x7449
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7449)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7450 x7448)))))))
                   g7444)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x7453
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7453)))))
                   g7452)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x7455
                        (letrec*
                         ((x7456
                           (letrec*
                            ((x7457
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7457)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7456)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7455)))))
                   g7454)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7461)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7460)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7459)))))
                   g7458)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x7465
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7465))))
                    (g7463
                     (letrec*
                      ((x7466
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7466))))
                    (g7464
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
                       ((g7467
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7468 res))
                       g7468))))
                   g7464)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7469
                     (letrec*
                      ((x7470
                        (letrec*
                         ((x7471
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7471)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7470)))))
                   g7469)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (letrec*
                         ((x7474
                           (letrec*
                            ((x7475
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7475)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7474)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7473)))))
                   g7472)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7478))))
                    (g7477
                     (letrec*
                      ((x-cnd7479
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7479
                        #f
                        (letrec*
                         ((x-cnd7480
                           (letrec*
                            ((x7481
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7481 k)))))
                         (if x-cnd7480
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7482
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7482)))))))))
                   g7477)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7484)))))
                   g7483)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7487))))
                    (g7486
                     (letrec*
                      ((x-cnd7488
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7488
                        ""
                        (letrec*
                         ((x7491
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7492))))
                          (x7489
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7490)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7491 x7489)))))))
                   g7486)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x7496
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7496))))
                    (g7494
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7497))))
                    (g7495
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7498
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7498))))
                   g7495)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x7500
                        (letrec*
                         ((x7501
                           (letrec*
                            ((x7502
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7502)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7501)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7500)))))
                   g7499)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7506
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7506))))
                    (g7504
                     (letrec*
                      ((x7507
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7507))))
                    (g7505
                     (letrec*
                      ((x-cnd7508
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7508
                        x
                        (letrec*
                         ((x7510
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7509
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7510 x7509)))))))
                   g7505)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7511
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7511)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x-cnd7513
                        (letrec*
                         ((x7514 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7514)))))
                      (if x-cnd7513
                        (letrec*
                         ((x7515 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7515)))
                        #f))))
                   g7512)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x7518
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7518))))
                    (g7517
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7519
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7520 (if val7243 val7243 #f)))
                             g7520)))))
                       g7519))))
                   g7517)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7521
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7522
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7522 9)))))
                      (letrec*
                       ((g7523
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7524
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7524 10)))))
                            (letrec*
                             ((g7525
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7526
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7526 32))))))
                             g7525)))))
                       g7523))))
                   g7521)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x7528
                        (letrec*
                         ((x7529
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7529)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7528)))))
                   g7527)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7532))))
                    (g7531
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7531)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7533 #f)) g7533)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7535)))))
                   g7534)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7538))))
                    (g7537
                     (letrec*
                      ((x-cnd7539
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7539
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7537)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7541
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7543
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7542
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7543 x7542)))))
                            (letrec*
                             ((g7544
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7547
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7546
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7545
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7547 x7546 x7545)))))
                                  (letrec*
                                   ((g7548
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7556
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7555
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7552
                                             (letrec*
                                              ((x7554
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7553
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7554 x7553))))
                                            (x7549
                                             (letrec*
                                              ((x7551
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7550
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7551 x7550)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7556 x7555 x7552 x7549)))))
                                        (letrec*
                                         ((g7557
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7573
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7572
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7558
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7559
                                                    (letrec*
                                                     ((x7570
                                                       (letrec*
                                                        ((x7571
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
                                                          (= x7571 n))))
                                                      (x7560
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7561
                                                               (letrec*
                                                                ((x7568
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7562
                                                                  (letrec*
                                                                   ((x7565
                                                                     (letrec*
                                                                      ((x7567
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
                                                                       (x7566
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
                                                                         x7567
                                                                         x7566))))
                                                                    (x7563
                                                                     (letrec*
                                                                      ((x7564
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
                                                                         x7564)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7565
                                                                          x7563)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7568
                                                                      x7562)))))
                                                             g7561))))
                                                        (letrec*
                                                         ((g7569
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7569))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7570 x7560)))))
                                                  g7559))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7573 x7572 x7558))))))
                                         g7557)))))
                                   g7548)))))
                             g7544)))))
                       g7541))))
                   g7540)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7577)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7576)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7575)))))
                   g7574)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7579
                        (letrec*
                         ((x7580
                           (letrec*
                            ((x7581
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7581)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7580)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7579)))))
                   g7578)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7582
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7582)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7585
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7585))))
                    (g7584
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7586
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7587 (if val7251 val7251 #f)))
                             g7587)))))
                       g7586))))
                   g7584)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7591))))
                    (g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7592))))
                    (g7590
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
                       ((g7593
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7594 res))
                       g7594))))
                   g7590)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7595
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7595)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7601
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7601))))
                   g7598)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7604)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (letrec*
                            ((x7608
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7608)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7607)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7606)))))
                   g7605)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7611)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7613
                        (letrec*
                         ((x7614
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7614)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7613)))))
                   g7612)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7620)))))
                   g7617)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7622
                        (letrec*
                         ((x7623
                           (letrec*
                            ((x7624
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7624)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7623)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7622)))))
                   g7621)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7627))))
                    (g7626
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7626)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7628
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7628)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7630)))))
                   g7629)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7632
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7632)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (letrec*
                      ((x-cnd7636
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7636
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7640))))
                          (x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7638)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7639 x7637)))))))
                   g7634)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7643)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7642)))))
                   g7641)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7648)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7647)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7646)))))
                   g7645)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7651))))
                    (g7650
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7652)))))
                   g7650)))
               (caadar
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
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7656)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7655)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7654)))))
                   g7653)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x-cnd7662
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7662
                        (letrec*
                         ((g7663
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7663)
                        (letrec*
                         ((x-cnd7664
                           (letrec*
                            ((x7665
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7665)))))
                         (if x-cnd7664
                           (letrec*
                            ((g7666
                              (letrec*
                               ((x7667
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7667)))))
                            g7666)
                           (letrec*
                            ((x-cnd7668
                              (letrec*
                               ((x7669
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7669)))))
                            (if x-cnd7668
                              (letrec*
                               ((g7670
                                 (letrec*
                                  ((x7672
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7671
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7672 x7671)))))
                               g7670)
                              (letrec*
                               ((x-cnd7673
                                 (letrec*
                                  ((x7674
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7674)))))
                               (if x-cnd7673
                                 (letrec*
                                  ((g7675
                                    (letrec*
                                     ((x7678
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7677
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7676
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7678 x7677 x7676)))))
                                  g7675)
                                 (letrec*
                                  ((x-cnd7679
                                    (letrec*
                                     ((x7680
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7680)))))
                                  (if x-cnd7679
                                    (letrec*
                                     ((g7681
                                       (letrec*
                                        ((x7685
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7684
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7683
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7682
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7685 x7684 x7683 x7682)))))
                                     g7681)
                                    (letrec*
                                     ((x-cnd7686
                                       (letrec*
                                        ((x7687
                                          (letrec*
                                           ((x7688
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7688)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7687)))))
                                     (if x-cnd7686
                                       (letrec*
                                        ((g7689
                                          (letrec*
                                           ((x7695
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7690
                                             (letrec*
                                              ((x7691
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7691)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7695
                                              x7694
                                              x7693
                                              x7692
                                              x7690)))))
                                        g7689)
                                       (letrec*
                                        ((x-cnd7696
                                          (letrec*
                                           ((x7697
                                             (letrec*
                                              ((x7698
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7698)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7697)))))
                                        (if x-cnd7696
                                          (letrec*
                                           ((g7699
                                             (letrec*
                                              ((x7707
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7706
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7705
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7704
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7702
                                                (letrec*
                                                 ((x7703
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7703))))
                                               (x7700
                                                (letrec*
                                                 ((x7701
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7701)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7707
                                                 x7706
                                                 x7705
                                                 x7704
                                                 x7702
                                                 x7700)))))
                                           g7699)
                                          (letrec*
                                           ((x-cnd7708
                                             (letrec*
                                              ((x7709
                                                (letrec*
                                                 ((x7710
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7710)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7709)))))
                                           (if x-cnd7708
                                             (letrec*
                                              ((g7711
                                                (letrec*
                                                 ((x7721
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7720
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7719
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7718
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7716
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7717))))
                                                  (x7714
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7715))))
                                                  (x7712
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7713)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7721
                                                    x7720
                                                    x7719
                                                    x7718
                                                    x7716
                                                    x7714
                                                    x7712)))))
                                              g7711)
                                             (letrec*
                                              ((g7722
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7722)))))))))))))))))))
                   g7659)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7725
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7725))))
                    (g7724
                     (letrec*
                      ((x-cnd7726
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7726
                        #f
                        (letrec*
                         ((x-cnd7727
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7728 e)))))
                         (if x-cnd7727
                           l
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7729)))))))))
                   g7724)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7732)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7731)))))
                   g7730)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (letrec*
                            ((x7737
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7736)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7735)))))
                   g7734)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7738
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7738)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7741))))
                    (g7740
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7740)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7743
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7743))))
                   g7742)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7745)))))
                   g7744)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7749
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7747
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7748)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7749 x7747)))))
                      (letrec*
                       ((g7750
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7750))))
                   g7746)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7754)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7753)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7752)))))
                   g7751)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x-cnd7756
                        (letrec*
                         ((x7757 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7757 c)))))
                      (if x-cnd7756
                        (letrec*
                         ((x7758 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7758)))
                        #f))))
                   g7755)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (letrec*
                      ((x-cnd7762
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7762
                        #f
                        (letrec*
                         ((x-cnd7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7764 k)))))
                         (if x-cnd7763
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7765)))))))))
                   g7760)))
               (not (lambda (x) (letrec* ((g7766 (if x #f #t))) g7766)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7767
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7767)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (letrec*
                      ((x-cnd7771
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7771
                        #f
                        (letrec*
                         ((x-cnd7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7773 e)))))
                         (if x-cnd7772
                           l
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7774)))))))))
                   g7769)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7782
                             (letrec*
                              ((x-cnd7783
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7783
                                0
                                (letrec*
                                 ((x7784
                                   (letrec*
                                    ((x7785
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7785)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7784)))))))
                           g7782))))
                      (letrec*
                       ((g7786
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7786))))
                   g7780)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7792
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7792))))
                   g7789)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7794)))))
                   g7793)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (letrec*
                         ((x7797
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7797)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7796)))))
                   g7795)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        #f
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7803 k)))))
                         (if x-cnd7802
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7804)))))))))
                   g7799)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7806)))))
                   g7805)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7812)))))
                   g7809)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7814
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7814))))
                   g7813)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7820
                        #t
                        (letrec*
                         ((x-cnd7821
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7821
                           (letrec*
                            ((g7822
                              (letrec*
                               ((x7824
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7824))))
                             (g7823
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7825)))))
                            g7823)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7817)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7828))))
                    (g7827
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7829
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7827)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7833))))
                    (g7831
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7834))))
                    (g7832
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7835
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7835))))
                   g7832)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7837
                        (letrec*
                         ((x7838
                           (letrec*
                            ((x7839
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7839)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7838)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7837)))))
                   g7836)))
               (newline (lambda () (letrec* ((g7840 #f)) g7840)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7843
                        (letrec*
                         ((x7844
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7844))))
                       (x7842
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7843 x7842)))))
                   g7841)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7847))))
                    (g7846
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7848)))))
                   g7846)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7853))))
                    (g7850
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7854))))
                    (g7851
                     (letrec*
                      ((x7855
                        (letrec*
                         ((x7856
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7856)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7855))))
                    (g7852
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7857
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7859
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7858
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7859 x7858)))))))
                   g7852)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7861
                        a
                        (letrec*
                         ((x7862
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7862)))))))
                   g7860)))
               (tak
                (lambda (x y z k)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x-cnd7864
                        (letrec*
                         ((x7865
                           (begin
                             (write '(funapp 1404 52))
                             (display "\n")
                             (< y x))))
                         (begin
                           (write '(funapp 1404 62))
                           (display "\n")
                           (not x7865)))))
                      (if x-cnd7864
                        (begin (write '(funapp 1406 25)) (display "\n") (k z))
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 1408 34))
                             (display "\n")
                             (- x 1))))
                         (begin
                           (write '(funapp 1409 26))
                           (display "\n")
                           (tak
                            x7871
                            y
                            z
                            (lambda (v1)
                              (letrec*
                               ((g7866
                                 (letrec*
                                  ((x7870
                                    (begin
                                      (write '(funapp 1417 41))
                                      (display "\n")
                                      (- y 1))))
                                  (begin
                                    (write '(funapp 1418 33))
                                    (display "\n")
                                    (tak
                                     x7870
                                     z
                                     x
                                     (lambda (v2)
                                       (letrec*
                                        ((g7867
                                          (letrec*
                                           ((x7869
                                             (begin
                                               (write '(funapp 1426 48))
                                               (display "\n")
                                               (- z 1))))
                                           (begin
                                             (write '(funapp 1427 40))
                                             (display "\n")
                                             (tak
                                              x7869
                                              x
                                              y
                                              (lambda (v3)
                                                (letrec*
                                                 ((g7868
                                                   (begin
                                                     (write '(funapp 1433 52))
                                                     (display "\n")
                                                     (tak v1 v2 v3 k))))
                                                 g7868)))))))
                                        g7867)))))))
                               g7866)))))))))
                   g7863)))
               (tak-main
                (lambda (x y z)
                  (letrec*
                   ((g7872
                     (letrec*
                      ((x7873
                        (letrec*
                         ((x7874
                           (begin
                             (write '(funapp 1443 48))
                             (display "\n")
                             (x))))
                         (begin
                           (write '(funapp 1443 54))
                           (display "\n")
                           (λ x7874 x)))))
                      (begin
                        (write '(funapp 1444 23))
                        (display "\n")
                        (tak x y z x7873)))))
                   g7872))))
              (letrec*
               ((g7875
                 (letrec*
                  ((x7879
                    (begin
                      (write '(funapp 1450 21))
                      (display "\n")
                      ((lambda (j7330 k7331 f7332)
                         (letrec*
                          ((g7880
                            (lambda (g7327 g7328 g7329)
                              (letrec*
                               ((g7881
                                 (letrec*
                                  ((x7882
                                    (letrec*
                                     ((x7885
                                       (begin
                                         (write '(funapp 1459 44))
                                         (display "\n")
                                         (integer?/c j7330 k7331 g7327)))
                                      (x7884
                                       (begin
                                         (write '(funapp 1460 44))
                                         (display "\n")
                                         (integer?/c j7330 k7331 g7328)))
                                      (x7883
                                       (begin
                                         (write '(funapp 1461 44))
                                         (display "\n")
                                         (integer?/c j7330 k7331 g7329))))
                                     (begin
                                       (write '(funapp 1462 36))
                                       (display "\n")
                                       (f7332 x7885 x7884 x7883)))))
                                  (begin
                                    (write '(funapp 1463 33))
                                    (display "\n")
                                    (integer?/c j7330 k7331 x7882)))))
                               g7881))))
                          g7880))
                       (begin (write '(funapp 1466 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1467 21))
                         (display "\n")
                         'importer)
                       tak-main)))
                   (x7878 (input))
                   (x7877 (input))
                   (x7876 (input)))
                  (begin
                    (write '(funapp 1472 19))
                    (display "\n")
                    (x7879 x7878 x7877 x7876)))))
               g7875))))
           g7346))))
       g7344)))
    g7343)))
