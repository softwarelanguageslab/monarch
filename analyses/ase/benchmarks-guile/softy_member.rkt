(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7330 #t)) g7330)))
    (meta (lambda (v) (letrec* ((g7331 v)) g7331)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7332
          (letrec*
           ((g7333
             (letrec*
              ((x-e7334 lst))
              (letrec*
               ((v1742 x-e7334))
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
                   ((x-cnd7335
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7335
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
           g7333)))
        g7332)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7336 (lambda (v) (letrec* ((g7337 v)) g7337)))) g7336)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7338
          (letrec*
           ((x7339 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7339)))))
        g7338))))
   (letrec*
    ((g7340
      (letrec*
       ((g7341
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
           ((g7342 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7343
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7344
                     (lambda (k j lst)
                       (letrec*
                        ((g7345
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7346
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7346))
                             lst))))
                        g7345))))
                   g7344)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7347
                     (letrec*
                      ((x-cnd7348
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7348
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7347)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7349
                     (letrec*
                      ((x-cnd7350
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7350
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7349)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7351
                     (letrec*
                      ((x-cnd7352
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7352
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7351)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7355 #t)) g7355)) g7269))))
                      (if x-cnd7354
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7353)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7358 #t)) g7358)) g7272))))
                      (if x-cnd7357
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7356)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7360
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7359)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7362
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7361)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7364
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7363)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7365
                     (lambda (k j v)
                       (letrec*
                        ((g7366
                          (letrec*
                           ((x-cnd7367
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7367
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7366))))
                   g7365)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7368
                     (lambda (k j v)
                       (letrec*
                        ((g7369
                          (letrec*
                           ((x-cnd7370
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7370
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7374
                                (letrec*
                                 ((x7375
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7375))))
                               (x7371
                                (letrec*
                                 ((x7373
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7372
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7373 k j x7372)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7374 x7371)))))))
                        g7369))))
                   g7368)))
               (any? (lambda (v) (letrec* ((g7376 #t)) g7376)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x7378
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7378)))))
                   g7377)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7381
                                (letrec*
                                 ((x7382
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7382)))))
                              g7381))
                           g7284))))
                      (if x-cnd7380
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7379)))
               (meta (lambda (v) (letrec* ((g7383 v)) g7383)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7385
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7386
                             (letrec*
                              ((x7387
                                (letrec*
                                 ((x7389
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7388
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7389 x7388)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7387)))))
                           g7386))))
                      g7385))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7384
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7384)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7391
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7392
                             (letrec*
                              ((x7393
                                (letrec*
                                 ((x7395
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7394
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7395 x7394)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7393)))))
                           g7392))))
                      g7391))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7390
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7390)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7397
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7398
                             (letrec*
                              ((x7399
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7400
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7401 x7400)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7399)))))
                           g7398))))
                      g7397))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7396
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7396)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7403
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7404
                             (letrec*
                              ((x7405
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7406
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7407 x7406)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7405)))))
                           g7404))))
                      g7403))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7402
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7402)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7409
                        (lambda (g7305)
                          (letrec*
                           ((g7410
                             (letrec*
                              ((x7411
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7412)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7411)))))
                           g7410))))
                      g7409))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7408
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7408)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7414
                        (lambda (g7309)
                          (letrec*
                           ((g7415
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7417
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7417)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7416)))))
                           g7415))))
                      g7414))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7413
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7413)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7419
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7420
                             (letrec*
                              ((x7421
                                (letrec*
                                 ((x7423
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7422
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7423 x7422)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7421)))))
                           g7420))))
                      g7419))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7418
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7418)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7425
                        (lambda (g7318)
                          (letrec*
                           ((g7426
                             (letrec*
                              ((x7427
                                (letrec*
                                 ((x7428
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7428)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7427)))))
                           g7426))))
                      g7425))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7424
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7424)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7430
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7431
                             (letrec*
                              ((x7432
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7433
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7434 x7433)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7432)))))
                           g7431))))
                      g7430))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7429
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7429)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7435
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7435)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7436
                     (letrec*
                      ((x7437
                        (letrec*
                         ((x7438
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7438)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7437)))))
                   g7436)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7439
                     (letrec*
                      ((x7442
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7442))))
                    (g7440
                     (letrec*
                      ((x7443
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7443))))
                    (g7441
                     (letrec*
                      ((x-cnd7444
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7444
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7447
                           (letrec*
                            ((x7448
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7448))))
                          (x7445
                           (letrec*
                            ((x7446
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7446)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7447 x7445)))))))
                   g7441)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x7450
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7450)))))
                   g7449)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x7452
                        (letrec*
                         ((x7453
                           (letrec*
                            ((x7454
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7454)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7453)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7452)))))
                   g7451)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x7456
                        (letrec*
                         ((x7457
                           (letrec*
                            ((x7458
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7458)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7457)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7456)))))
                   g7455)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x7462
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7462))))
                    (g7460
                     (letrec*
                      ((x7463
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7463))))
                    (g7461
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
                       ((g7464
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7465 res))
                       g7465))))
                   g7461)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7467
                        (letrec*
                         ((x7468
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7468)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7467)))))
                   g7466)))
               (cdaadr
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
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7472)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7471)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7470)))))
                   g7469)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x7475
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7475))))
                    (g7474
                     (letrec*
                      ((x-cnd7476
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7476
                        #f
                        (letrec*
                         ((x-cnd7477
                           (letrec*
                            ((x7478
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7478 k)))))
                         (if x-cnd7477
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7479
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7479)))))))))
                   g7474)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7481)))))
                   g7480)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7484
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7484))))
                    (g7483
                     (letrec*
                      ((x-cnd7485
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7485
                        ""
                        (letrec*
                         ((x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7489))))
                          (x7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7487)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7488 x7486)))))))
                   g7483)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7493))))
                    (g7491
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7494))))
                    (g7492
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7495
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7495))))
                   g7492)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7497
                        (letrec*
                         ((x7498
                           (letrec*
                            ((x7499
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7499)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7498)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7497)))))
                   g7496)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7503
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7503))))
                    (g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7504))))
                    (g7502
                     (letrec*
                      ((x-cnd7505
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7505
                        x
                        (letrec*
                         ((x7507
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7506
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7507 x7506)))))))
                   g7502)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7508
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7508)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7509
                     (letrec*
                      ((x-cnd7510
                        (letrec*
                         ((x7511 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7511)))))
                      (if x-cnd7510
                        (letrec*
                         ((x7512 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7512)))
                        #f))))
                   g7509)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7513
                     (letrec*
                      ((x7515
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7515))))
                    (g7514
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7516
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7517 (if val7243 val7243 #f)))
                             g7517)))))
                       g7516))))
                   g7514)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7519
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7519 9)))))
                      (letrec*
                       ((g7520
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7521
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7521 10)))))
                            (letrec*
                             ((g7522
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7523
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7523 32))))))
                             g7522)))))
                       g7520))))
                   g7518)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x7525
                        (letrec*
                         ((x7526
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7526)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7525)))))
                   g7524)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x7529
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7529))))
                    (g7528
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7528)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7530 #f)) g7530)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7532)))))
                   g7531)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7535))))
                    (g7534
                     (letrec*
                      ((x-cnd7536
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7536
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7534)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7538
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7540
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7539
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7540 x7539)))))
                            (letrec*
                             ((g7541
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7544
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7543
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7542
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7544 x7543 x7542)))))
                                  (letrec*
                                   ((g7545
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7553
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7552
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7549
                                             (letrec*
                                              ((x7551
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7550
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7551 x7550))))
                                            (x7546
                                             (letrec*
                                              ((x7548
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7547
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7548 x7547)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7553 x7552 x7549 x7546)))))
                                        (letrec*
                                         ((g7554
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7570
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7569
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7555
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7556
                                                    (letrec*
                                                     ((x7567
                                                       (letrec*
                                                        ((x7568
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
                                                          (= x7568 n))))
                                                      (x7557
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7558
                                                               (letrec*
                                                                ((x7565
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7559
                                                                  (letrec*
                                                                   ((x7562
                                                                     (letrec*
                                                                      ((x7564
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
                                                                       (x7563
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
                                                                         x7564
                                                                         x7563))))
                                                                    (x7560
                                                                     (letrec*
                                                                      ((x7561
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
                                                                         x7561)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7562
                                                                          x7560)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7565
                                                                      x7559)))))
                                                             g7558))))
                                                        (letrec*
                                                         ((g7566
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7566))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7567 x7557)))))
                                                  g7556))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7570 x7569 x7555))))))
                                         g7554)))))
                                   g7545)))))
                             g7541)))))
                       g7538))))
                   g7537)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7571
                     (letrec*
                      ((x7572
                        (letrec*
                         ((x7573
                           (letrec*
                            ((x7574
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7574)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7573)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7572)))))
                   g7571)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7575
                     (letrec*
                      ((x7576
                        (letrec*
                         ((x7577
                           (letrec*
                            ((x7578
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7578)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7577)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7576)))))
                   g7575)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7579
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7579)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7582
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7582))))
                    (g7581
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7583
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7584 (if val7251 val7251 #f)))
                             g7584)))))
                       g7583))))
                   g7581)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7589))))
                    (g7587
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
                       ((g7590
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7591 res))
                       g7591))))
                   g7587)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7592
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7592)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7598
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7598))))
                   g7595)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7599
                     (letrec*
                      ((x7600
                        (letrec*
                         ((x7601
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7601)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7600)))))
                   g7599)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7603
                        (letrec*
                         ((x7604
                           (letrec*
                            ((x7605
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7605)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7604)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7603)))))
                   g7602)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7608)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7607)))))
                   g7606)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7610)))))
                   g7609)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7617)))))
                   g7614)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (letrec*
                            ((x7621
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7621)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7620)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7619)))))
                   g7618)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7624))))
                    (g7623
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7623)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7625
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7625)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7629
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7629)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7632))))
                    (g7631
                     (letrec*
                      ((x-cnd7633
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7633
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7637))))
                          (x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7635)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7636 x7634)))))))
                   g7631)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7638
                     (letrec*
                      ((x7639
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7641)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7640)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7639)))))
                   g7638)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7642
                     (letrec*
                      ((x7643
                        (letrec*
                         ((x7644
                           (letrec*
                            ((x7645
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7645)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7644)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7643)))))
                   g7642)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7648))))
                    (g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7649)))))
                   g7647)))
               (caadar
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
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7653)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7652)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7651)))))
                   g7650)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x-cnd7659
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7659
                        (letrec*
                         ((g7660
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7660)
                        (letrec*
                         ((x-cnd7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7662)))))
                         (if x-cnd7661
                           (letrec*
                            ((g7663
                              (letrec*
                               ((x7664
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7664)))))
                            g7663)
                           (letrec*
                            ((x-cnd7665
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7666)))))
                            (if x-cnd7665
                              (letrec*
                               ((g7667
                                 (letrec*
                                  ((x7669
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7668
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7669 x7668)))))
                               g7667)
                              (letrec*
                               ((x-cnd7670
                                 (letrec*
                                  ((x7671
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7671)))))
                               (if x-cnd7670
                                 (letrec*
                                  ((g7672
                                    (letrec*
                                     ((x7675
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7674
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7673
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7675 x7674 x7673)))))
                                  g7672)
                                 (letrec*
                                  ((x-cnd7676
                                    (letrec*
                                     ((x7677
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7677)))))
                                  (if x-cnd7676
                                    (letrec*
                                     ((g7678
                                       (letrec*
                                        ((x7682
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7681
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7680
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7679
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7682 x7681 x7680 x7679)))))
                                     g7678)
                                    (letrec*
                                     ((x-cnd7683
                                       (letrec*
                                        ((x7684
                                          (letrec*
                                           ((x7685
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7685)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7684)))))
                                     (if x-cnd7683
                                       (letrec*
                                        ((g7686
                                          (letrec*
                                           ((x7692
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7690
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7689
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7687
                                             (letrec*
                                              ((x7688
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7688)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7692
                                              x7691
                                              x7690
                                              x7689
                                              x7687)))))
                                        g7686)
                                       (letrec*
                                        ((x-cnd7693
                                          (letrec*
                                           ((x7694
                                             (letrec*
                                              ((x7695
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7695)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7694)))))
                                        (if x-cnd7693
                                          (letrec*
                                           ((g7696
                                             (letrec*
                                              ((x7704
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7703
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7702
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7701
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7699
                                                (letrec*
                                                 ((x7700
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7700))))
                                               (x7697
                                                (letrec*
                                                 ((x7698
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7698)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7704
                                                 x7703
                                                 x7702
                                                 x7701
                                                 x7699
                                                 x7697)))))
                                           g7696)
                                          (letrec*
                                           ((x-cnd7705
                                             (letrec*
                                              ((x7706
                                                (letrec*
                                                 ((x7707
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7707)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7706)))))
                                           (if x-cnd7705
                                             (letrec*
                                              ((g7708
                                                (letrec*
                                                 ((x7718
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7717
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7716
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7715
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7713
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7714))))
                                                  (x7711
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7712))))
                                                  (x7709
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7710)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7718
                                                    x7717
                                                    x7716
                                                    x7715
                                                    x7713
                                                    x7711
                                                    x7709)))))
                                              g7708)
                                             (letrec*
                                              ((g7719
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7719)))))))))))))))))))
                   g7656)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7722
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7722))))
                    (g7721
                     (letrec*
                      ((x-cnd7723
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7723
                        #f
                        (letrec*
                         ((x-cnd7724
                           (letrec*
                            ((x7725
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7725 e)))))
                         (if x-cnd7724
                           l
                           (letrec*
                            ((x7726
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7726)))))))))
                   g7721)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7728
                        (letrec*
                         ((x7729
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7730)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7729)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7728)))))
                   g7727)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7732
                        (letrec*
                         ((x7733
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7734)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7733)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7732)))))
                   g7731)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7735
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7735)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7738
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7738))))
                    (g7737
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7737)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7740
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7740))))
                   g7739)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7742)))))
                   g7741)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7746
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7744
                           (letrec*
                            ((x7745
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7745)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7746 x7744)))))
                      (letrec*
                       ((g7747
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7747))))
                   g7743)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (letrec*
                         ((x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7751)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7750)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7749)))))
                   g7748)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x-cnd7753
                        (letrec*
                         ((x7754 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7754 c)))))
                      (if x-cnd7753
                        (letrec*
                         ((x7755 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7755)))
                        #f))))
                   g7752)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7758))))
                    (g7757
                     (letrec*
                      ((x-cnd7759
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7759
                        #f
                        (letrec*
                         ((x-cnd7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7761 k)))))
                         (if x-cnd7760
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7762)))))))))
                   g7757)))
               (not (lambda (x) (letrec* ((g7763 (if x #f #t))) g7763)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7764
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7764)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7767))))
                    (g7766
                     (letrec*
                      ((x-cnd7768
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7768
                        #f
                        (letrec*
                         ((x-cnd7769
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7770 e)))))
                         (if x-cnd7769
                           l
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7771)))))))))
                   g7766)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7773
                        (letrec*
                         ((x7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7775)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7774)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7773)))))
                   g7772)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7779
                             (letrec*
                              ((x-cnd7780
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7780
                                0
                                (letrec*
                                 ((x7781
                                   (letrec*
                                    ((x7782
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7782)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7781)))))))
                           g7779))))
                      (letrec*
                       ((g7783
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7783))))
                   g7777)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7787))))
                    (g7785
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7789
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7789))))
                   g7786)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7791)))))
                   g7790)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (letrec*
                         ((x7794
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7794)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7793)))))
                   g7792)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7797))))
                    (g7796
                     (letrec*
                      ((x-cnd7798
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7798
                        #f
                        (letrec*
                         ((x-cnd7799
                           (letrec*
                            ((x7800
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7800 k)))))
                         (if x-cnd7799
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7801)))))))))
                   g7796)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7803)))))
                   g7802)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7807))))
                    (g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7809)))))
                   g7806)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7811
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7811))))
                   g7810)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x-cnd7817
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7817
                        #t
                        (letrec*
                         ((x-cnd7818
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7818
                           (letrec*
                            ((g7819
                              (letrec*
                               ((x7821
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7821))))
                             (g7820
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7822)))))
                            g7820)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7814)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7825))))
                    (g7824
                     (letrec*
                      ((x-cnd7826
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7826
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7824)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7830))))
                    (g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7832
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7832))))
                   g7829)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (letrec*
                         ((x7835
                           (letrec*
                            ((x7836
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7836)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7835)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7834)))))
                   g7833)))
               (newline (lambda () (letrec* ((g7837 #f)) g7837)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (letrec*
                         ((x7841
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7841))))
                       (x7839
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7840 x7839)))))
                   g7838)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7844))))
                    (g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7845)))))
                   g7843)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7850))))
                    (g7847
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7851))))
                    (g7848
                     (letrec*
                      ((x7852
                        (letrec*
                         ((x7853
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7853)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7852))))
                    (g7849
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7854
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7856
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7855
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7856 x7855)))))))
                   g7849)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7858
                        a
                        (letrec*
                         ((x7859
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7859)))))))
                   g7857)))
               (member
                (lambda (x l)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7861
                        empty
                        (letrec*
                         ((x-cnd7862
                           (letrec*
                            ((x7863
                              (begin
                                (write '(funapp 1409 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1409 55))
                              (display "\n")
                              (equal? x x7863)))))
                         (if x-cnd7862
                           l
                           (letrec*
                            ((x7864
                              (begin
                                (write '(funapp 1412 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1412 55))
                              (display "\n")
                              (member x x7864)))))))))
                   g7860))))
              (letrec*
               ((g7865
                 (begin
                   (write '(funapp 1416 18))
                   (display "\n")
                   ((lambda (j7327 k7328 f7329)
                      (letrec*
                       ((g7866
                         (lambda ()
                           (letrec*
                            ((g7867
                              (letrec*
                               ((x7869
                                 (letrec*
                                  ((x7871
                                    (begin
                                      (write '(funapp 1425 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7870
                                    (begin
                                      (write '(funapp 1425 64))
                                      (display "\n")
                                      (listof any/c))))
                                  (begin
                                    (write '(funapp 1426 33))
                                    (display "\n")
                                    (any/c x7871 x7870))))
                                (x7868
                                 (begin
                                   (write '(funapp 1427 38))
                                   (display "\n")
                                   (f7329))))
                               (begin
                                 (write '(funapp 1428 30))
                                 (display "\n")
                                 (x7869 j7327 k7328 x7868)))))
                            g7867))))
                       g7866))
                    (begin (write '(funapp 1431 18)) (display "\n") 'module)
                    (begin (write '(funapp 1432 18)) (display "\n") 'importer)
                    member))))
               g7865))))
           g7343))))
       g7341)))
    g7340)))
