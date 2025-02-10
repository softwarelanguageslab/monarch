(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7335 #t)) g7335)))
    (meta (lambda (v) (letrec* ((g7336 v)) g7336)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7337
          (letrec*
           ((g7338
             (letrec*
              ((x-e7339 lst))
              (letrec*
               ((v1742 x-e7339))
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
                   ((x-cnd7340
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7340
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
           g7338)))
        g7337)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7341 (lambda (v) (letrec* ((g7342 v)) g7342)))) g7341)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7343
          (letrec*
           ((x7344 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7344)))))
        g7343))))
   (letrec*
    ((g7345
      (letrec*
       ((g7346
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
           ((g7347 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7348
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7349
                     (lambda (k j lst)
                       (letrec*
                        ((g7350
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7351
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7351))
                             lst))))
                        g7350))))
                   g7349)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7352
                     (letrec*
                      ((x-cnd7353
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7353
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7352)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7355
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7354)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7357
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7356)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7360 #t)) g7360)) g7269))))
                      (if x-cnd7359
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7358)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7363 #t)) g7363)) g7272))))
                      (if x-cnd7362
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7361)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7365
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7364)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7367
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7366)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7369
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7368)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7370
                     (lambda (k j v)
                       (letrec*
                        ((g7371
                          (letrec*
                           ((x-cnd7372
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7372
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7371))))
                   g7370)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7373
                     (lambda (k j v)
                       (letrec*
                        ((g7374
                          (letrec*
                           ((x-cnd7375
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7375
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7379
                                (letrec*
                                 ((x7380
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7380))))
                               (x7376
                                (letrec*
                                 ((x7378
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7377
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7378 k j x7377)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7379 x7376)))))))
                        g7374))))
                   g7373)))
               (any? (lambda (v) (letrec* ((g7381 #t)) g7381)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7382
                     (letrec*
                      ((x7383
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7383)))))
                   g7382)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x-cnd7385
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7386
                                (letrec*
                                 ((x7387
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7387)))))
                              g7386))
                           g7284))))
                      (if x-cnd7385
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7384)))
               (meta (lambda (v) (letrec* ((g7388 v)) g7388)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7390
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7391
                             (letrec*
                              ((x7392
                                (letrec*
                                 ((x7394
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7393
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7394 x7393)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7392)))))
                           g7391))))
                      g7390))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7389
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7389)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7396
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7397
                             (letrec*
                              ((x7398
                                (letrec*
                                 ((x7400
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7399
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7400 x7399)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7398)))))
                           g7397))))
                      g7396))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7395
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7395)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7402
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7403
                             (letrec*
                              ((x7404
                                (letrec*
                                 ((x7406
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7405
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7406 x7405)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7404)))))
                           g7403))))
                      g7402))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7401
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7401)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7408
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7409
                             (letrec*
                              ((x7410
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7411
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7412 x7411)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7410)))))
                           g7409))))
                      g7408))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7407
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7407)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7414
                        (lambda (g7305)
                          (letrec*
                           ((g7415
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7417
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7417)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7416)))))
                           g7415))))
                      g7414))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7413
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7413)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7419
                        (lambda (g7309)
                          (letrec*
                           ((g7420
                             (letrec*
                              ((x7421
                                (letrec*
                                 ((x7422
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7422)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7421)))))
                           g7420))))
                      g7419))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7418
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7418)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7424
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7425
                             (letrec*
                              ((x7426
                                (letrec*
                                 ((x7428
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7427
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7428 x7427)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7426)))))
                           g7425))))
                      g7424))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7423
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7423)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7430
                        (lambda (g7318)
                          (letrec*
                           ((g7431
                             (letrec*
                              ((x7432
                                (letrec*
                                 ((x7433
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7433)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7432)))))
                           g7431))))
                      g7430))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7429
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7429)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7435
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7436
                             (letrec*
                              ((x7437
                                (letrec*
                                 ((x7439
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7438
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7439 x7438)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7437)))))
                           g7436))))
                      g7435))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7434
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7434)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7440
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7440)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x7442
                        (letrec*
                         ((x7443
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7443)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7442)))))
                   g7441)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7444
                     (letrec*
                      ((x7447
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7447))))
                    (g7445
                     (letrec*
                      ((x7448
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7448))))
                    (g7446
                     (letrec*
                      ((x-cnd7449
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7449
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7452
                           (letrec*
                            ((x7453
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7453))))
                          (x7450
                           (letrec*
                            ((x7451
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7451)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7452 x7450)))))))
                   g7446)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x7455
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7455)))))
                   g7454)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7457
                        (letrec*
                         ((x7458
                           (letrec*
                            ((x7459
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7459)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7458)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7457)))))
                   g7456)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x7461
                        (letrec*
                         ((x7462
                           (letrec*
                            ((x7463
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7463)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7462)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7461)))))
                   g7460)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x7467
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7467))))
                    (g7465
                     (letrec*
                      ((x7468
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7468))))
                    (g7466
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
                       ((g7469
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7470 res))
                       g7470))))
                   g7466)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x7472
                        (letrec*
                         ((x7473
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7473)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7472)))))
                   g7471)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7475
                        (letrec*
                         ((x7476
                           (letrec*
                            ((x7477
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7477)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7476)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7475)))))
                   g7474)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7480))))
                    (g7479
                     (letrec*
                      ((x-cnd7481
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7481
                        #f
                        (letrec*
                         ((x-cnd7482
                           (letrec*
                            ((x7483
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7483 k)))))
                         (if x-cnd7482
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7484)))))))))
                   g7479)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7486)))))
                   g7485)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7489
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7489))))
                    (g7488
                     (letrec*
                      ((x-cnd7490
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7490
                        ""
                        (letrec*
                         ((x7493
                           (letrec*
                            ((x7494
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7494))))
                          (x7491
                           (letrec*
                            ((x7492
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7492)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7493 x7491)))))))
                   g7488)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7495
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7498))))
                    (g7496
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7499))))
                    (g7497
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7500
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7500))))
                   g7497)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7502
                        (letrec*
                         ((x7503
                           (letrec*
                            ((x7504
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7504)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7503)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7502)))))
                   g7501)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7505
                     (letrec*
                      ((x7508
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7508))))
                    (g7506
                     (letrec*
                      ((x7509
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7509))))
                    (g7507
                     (letrec*
                      ((x-cnd7510
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7510
                        x
                        (letrec*
                         ((x7512
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7511
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7512 x7511)))))))
                   g7507)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7513
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7513)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x-cnd7515
                        (letrec*
                         ((x7516 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7516)))))
                      (if x-cnd7515
                        (letrec*
                         ((x7517 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7517)))
                        #f))))
                   g7514)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((x7520
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7520))))
                    (g7519
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7521
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7522 (if val7243 val7243 #f)))
                             g7522)))))
                       g7521))))
                   g7519)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7523
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7524
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7524 9)))))
                      (letrec*
                       ((g7525
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7526
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7526 10)))))
                            (letrec*
                             ((g7527
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7528
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7528 32))))))
                             g7527)))))
                       g7525))))
                   g7523)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((x7530
                        (letrec*
                         ((x7531
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7531)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7530)))))
                   g7529)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((x7534
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7534))))
                    (g7533
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7533)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7535 #f)) g7535)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((x7537
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7537)))))
                   g7536)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7540))))
                    (g7539
                     (letrec*
                      ((x-cnd7541
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7541
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7539)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7543
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7545
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7544
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7545 x7544)))))
                            (letrec*
                             ((g7546
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7549
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7548
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7547
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7549 x7548 x7547)))))
                                  (letrec*
                                   ((g7550
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7558
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7557
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7554
                                             (letrec*
                                              ((x7556
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7555
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7556 x7555))))
                                            (x7551
                                             (letrec*
                                              ((x7553
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7552
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7553 x7552)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7558 x7557 x7554 x7551)))))
                                        (letrec*
                                         ((g7559
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7575
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7574
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7560
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7561
                                                    (letrec*
                                                     ((x7572
                                                       (letrec*
                                                        ((x7573
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
                                                          (= x7573 n))))
                                                      (x7562
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7563
                                                               (letrec*
                                                                ((x7570
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7564
                                                                  (letrec*
                                                                   ((x7567
                                                                     (letrec*
                                                                      ((x7569
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
                                                                       (x7568
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
                                                                         x7569
                                                                         x7568))))
                                                                    (x7565
                                                                     (letrec*
                                                                      ((x7566
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
                                                                         x7566)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7567
                                                                          x7565)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7570
                                                                      x7564)))))
                                                             g7563))))
                                                        (letrec*
                                                         ((g7571
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7571))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7572 x7562)))))
                                                  g7561))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7575 x7574 x7560))))))
                                         g7559)))))
                                   g7550)))))
                             g7546)))))
                       g7543))))
                   g7542)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7576
                     (letrec*
                      ((x7577
                        (letrec*
                         ((x7578
                           (letrec*
                            ((x7579
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7579)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7578)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7577)))))
                   g7576)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7580
                     (letrec*
                      ((x7581
                        (letrec*
                         ((x7582
                           (letrec*
                            ((x7583
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7583)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7582)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7581)))))
                   g7580)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7584
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7584)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7585
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7587))))
                    (g7586
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7588
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7589 (if val7251 val7251 #f)))
                             g7589)))))
                       g7588))))
                   g7586)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7594))))
                    (g7592
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
                       ((g7595
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7596 res))
                       g7596))))
                   g7592)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7597
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7597)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((x7602
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7602))))
                    (g7600
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7603
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7603))))
                   g7600)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (letrec*
                            ((x7610
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7610)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7608)))))
                   g7607)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7613)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7615
                        (letrec*
                         ((x7616
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7616)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7615)))))
                   g7614)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7621))))
                    (g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7622)))))
                   g7619)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (letrec*
                            ((x7626
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7626)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7629))))
                    (g7628
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7628)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7630
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7630)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7632
                        (letrec*
                         ((x7633
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7633)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7632)))))
                   g7631)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7634
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7634)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7637
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7637))))
                    (g7636
                     (letrec*
                      ((x-cnd7638
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7638
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7642))))
                          (x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7640)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7641 x7639)))))))
                   g7636)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7646)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7644)))))
                   g7643)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7650)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7649)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7648)))))
                   g7647)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7653))))
                    (g7652
                     (letrec*
                      ((x7654
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7654)))))
                   g7652)))
               (caadar
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
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7658)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7657)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7656)))))
                   g7655)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x7663
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7663))))
                    (g7661
                     (letrec*
                      ((x-cnd7664
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7664
                        (letrec*
                         ((g7665
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7665)
                        (letrec*
                         ((x-cnd7666
                           (letrec*
                            ((x7667
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7667)))))
                         (if x-cnd7666
                           (letrec*
                            ((g7668
                              (letrec*
                               ((x7669
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7669)))))
                            g7668)
                           (letrec*
                            ((x-cnd7670
                              (letrec*
                               ((x7671
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7671)))))
                            (if x-cnd7670
                              (letrec*
                               ((g7672
                                 (letrec*
                                  ((x7674
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7673
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7674 x7673)))))
                               g7672)
                              (letrec*
                               ((x-cnd7675
                                 (letrec*
                                  ((x7676
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7676)))))
                               (if x-cnd7675
                                 (letrec*
                                  ((g7677
                                    (letrec*
                                     ((x7680
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7679
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7678
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7680 x7679 x7678)))))
                                  g7677)
                                 (letrec*
                                  ((x-cnd7681
                                    (letrec*
                                     ((x7682
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7682)))))
                                  (if x-cnd7681
                                    (letrec*
                                     ((g7683
                                       (letrec*
                                        ((x7687
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7686
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7685
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7684
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7687 x7686 x7685 x7684)))))
                                     g7683)
                                    (letrec*
                                     ((x-cnd7688
                                       (letrec*
                                        ((x7689
                                          (letrec*
                                           ((x7690
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7690)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7689)))))
                                     (if x-cnd7688
                                       (letrec*
                                        ((g7691
                                          (letrec*
                                           ((x7697
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7692
                                             (letrec*
                                              ((x7693
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7693)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7697
                                              x7696
                                              x7695
                                              x7694
                                              x7692)))))
                                        g7691)
                                       (letrec*
                                        ((x-cnd7698
                                          (letrec*
                                           ((x7699
                                             (letrec*
                                              ((x7700
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7700)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7699)))))
                                        (if x-cnd7698
                                          (letrec*
                                           ((g7701
                                             (letrec*
                                              ((x7709
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7708
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7707
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7706
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7704
                                                (letrec*
                                                 ((x7705
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7705))))
                                               (x7702
                                                (letrec*
                                                 ((x7703
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7703)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7709
                                                 x7708
                                                 x7707
                                                 x7706
                                                 x7704
                                                 x7702)))))
                                           g7701)
                                          (letrec*
                                           ((x-cnd7710
                                             (letrec*
                                              ((x7711
                                                (letrec*
                                                 ((x7712
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7712)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7711)))))
                                           (if x-cnd7710
                                             (letrec*
                                              ((g7713
                                                (letrec*
                                                 ((x7723
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7722
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7721
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7720
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7718
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7719))))
                                                  (x7716
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7717))))
                                                  (x7714
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7715)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7723
                                                    x7722
                                                    x7721
                                                    x7720
                                                    x7718
                                                    x7716
                                                    x7714)))))
                                              g7713)
                                             (letrec*
                                              ((g7724
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7724)))))))))))))))))))
                   g7661)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7727))))
                    (g7726
                     (letrec*
                      ((x-cnd7728
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7728
                        #f
                        (letrec*
                         ((x-cnd7729
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7730 e)))))
                         (if x-cnd7729
                           l
                           (letrec*
                            ((x7731
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7731)))))))))
                   g7726)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7732
                     (letrec*
                      ((x7733
                        (letrec*
                         ((x7734
                           (letrec*
                            ((x7735
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7735)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7734)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7733)))))
                   g7732)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((x7737
                        (letrec*
                         ((x7738
                           (letrec*
                            ((x7739
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7739)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7738)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7737)))))
                   g7736)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7740
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7740)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7743))))
                    (g7742
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7742)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7745
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7745))))
                   g7744)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7747)))))
                   g7746)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7751
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7749
                           (letrec*
                            ((x7750
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7750)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7751 x7749)))))
                      (letrec*
                       ((g7752
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7752))))
                   g7748)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7754
                        (letrec*
                         ((x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7756)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7755)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7754)))))
                   g7753)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x-cnd7758
                        (letrec*
                         ((x7759 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7759 c)))))
                      (if x-cnd7758
                        (letrec*
                         ((x7760 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7760)))
                        #f))))
                   g7757)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (letrec*
                      ((x-cnd7764
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7764
                        #f
                        (letrec*
                         ((x-cnd7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7766 k)))))
                         (if x-cnd7765
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7767)))))))))
                   g7762)))
               (not (lambda (x) (letrec* ((g7768 (if x #f #t))) g7768)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7769
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7769)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7772))))
                    (g7771
                     (letrec*
                      ((x-cnd7773
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7773
                        #f
                        (letrec*
                         ((x-cnd7774
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7775 e)))))
                         (if x-cnd7774
                           l
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7776)))))))))
                   g7771)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7778
                        (letrec*
                         ((x7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7780)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7779)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7778)))))
                   g7777)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7781
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7783))))
                    (g7782
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7784
                             (letrec*
                              ((x-cnd7785
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7785
                                0
                                (letrec*
                                 ((x7786
                                   (letrec*
                                    ((x7787
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7787)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7786)))))))
                           g7784))))
                      (letrec*
                       ((g7788
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7788))))
                   g7782)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7793))))
                    (g7791
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7794
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7794))))
                   g7791)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7796)))))
                   g7795)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (letrec*
                         ((x7799
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7799)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7798)))))
                   g7797)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7802))))
                    (g7801
                     (letrec*
                      ((x-cnd7803
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7803
                        #f
                        (letrec*
                         ((x-cnd7804
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7805 k)))))
                         (if x-cnd7804
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7806
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7806)))))))))
                   g7801)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7808)))))
                   g7807)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7814)))))
                   g7811)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7816
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7816))))
                   g7815)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7821))))
                    (g7819
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7822
                        #t
                        (letrec*
                         ((x-cnd7823
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7823
                           (letrec*
                            ((g7824
                              (letrec*
                               ((x7826
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7826))))
                             (g7825
                              (letrec*
                               ((x7827
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7827)))))
                            g7825)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7819)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7830
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7830))))
                    (g7829
                     (letrec*
                      ((x-cnd7831
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7831
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7829)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7835))))
                    (g7833
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7836))))
                    (g7834
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7837
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7837))))
                   g7834)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7839
                        (letrec*
                         ((x7840
                           (letrec*
                            ((x7841
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7841)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7840)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7839)))))
                   g7838)))
               (newline (lambda () (letrec* ((g7842 #f)) g7842)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (letrec*
                         ((x7846
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7846))))
                       (x7844
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7845 x7844)))))
                   g7843)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7849))))
                    (g7848
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7850)))))
                   g7848)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7851
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7855))))
                    (g7852
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7856))))
                    (g7853
                     (letrec*
                      ((x7857
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7858)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7857))))
                    (g7854
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7859
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7861
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7860
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7861 x7860)))))))
                   g7854)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7863
                        a
                        (letrec*
                         ((x7864
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7864)))))))
                   g7862)))
               (zip
                (lambda (xs ys)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x-cnd7866
                        (letrec*
                         ((x7868
                           (begin
                             (write '(funapp 1406 34))
                             (display "\n")
                             (empty? xs)))
                          (x7867
                           (begin
                             (write '(funapp 1406 54))
                             (display "\n")
                             (empty? ys))))
                         (begin
                           (write '(funapp 1407 26))
                           (display "\n")
                           (and x7868 x7867)))))
                      (if x-cnd7866
                        (letrec* ((g7869 empty)) g7869)
                        (letrec*
                         ((x-cnd7870
                           (letrec*
                            ((x7872
                              (begin
                                (write '(funapp 1413 37))
                                (display "\n")
                                (cons? xs)))
                             (x7871
                              (begin
                                (write '(funapp 1413 56))
                                (display "\n")
                                (cons? ys))))
                            (begin
                              (write '(funapp 1414 29))
                              (display "\n")
                              (and x7872 x7871)))))
                         (if x-cnd7870
                           (letrec*
                            ((g7873
                              (letrec*
                               ((x7877
                                 (letrec*
                                  ((x7879
                                    (begin
                                      (write '(funapp 1421 43))
                                      (display "\n")
                                      (car xs)))
                                   (x7878
                                    (begin
                                      (write '(funapp 1421 60))
                                      (display "\n")
                                      (car ys))))
                                  (begin
                                    (write '(funapp 1422 35))
                                    (display "\n")
                                    (cons x7879 x7878))))
                                (x7874
                                 (letrec*
                                  ((x7876
                                    (begin
                                      (write '(funapp 1425 43))
                                      (display "\n")
                                      (cdr xs)))
                                   (x7875
                                    (begin
                                      (write '(funapp 1425 60))
                                      (display "\n")
                                      (cdr ys))))
                                  (begin
                                    (write '(funapp 1426 35))
                                    (display "\n")
                                    (zip x7876 x7875)))))
                               (begin
                                 (write '(funapp 1427 32))
                                 (display "\n")
                                 (cons x7877 x7874)))))
                            g7873)
                           (letrec*
                            ((g7880
                              (begin
                                (write '(funapp 1429 44))
                                (display "\n")
                                'fail)))
                            g7880)))))))
                   g7865)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g7881
                     (letrec*
                      ((x-cnd7882
                        (begin
                          (write '(funapp 1436 35))
                          (display "\n")
                          (< n 0))))
                      (if x-cnd7882
                        empty
                        (letrec*
                         ((x7883
                           (letrec*
                            ((x7884
                              (begin
                                (write '(funapp 1440 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1440 61))
                              (display "\n")
                              (mk-list x7884)))))
                         (begin
                           (write '(funapp 1441 26))
                           (display "\n")
                           (cons n x7883)))))))
                   g7881)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7885
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1448 28))
                          (display "\n")
                          (mk-list n))))
                      (letrec*
                       ((g7886
                         (begin
                           (write '(funapp 1449 40))
                           (display "\n")
                           (zip xs xs))))
                       g7886))))
                   g7885))))
              (letrec*
               ((g7887
                 (letrec*
                  ((x7890
                    (begin
                      (write '(funapp 1455 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7891
                            (lambda (g7327)
                              (letrec*
                               ((g7892
                                 (letrec*
                                  ((x7895
                                    (begin
                                      (write '(funapp 1462 41))
                                      (display "\n")
                                      (listof integer?/c)))
                                   (x7893
                                    (letrec*
                                     ((x7894
                                       (begin
                                         (write '(funapp 1465 44))
                                         (display "\n")
                                         (integer?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 1466 36))
                                       (display "\n")
                                       (f7330 x7894)))))
                                  (begin
                                    (write '(funapp 1467 33))
                                    (display "\n")
                                    (x7895 j7328 k7329 x7893)))))
                               g7892))))
                          g7891))
                       (begin (write '(funapp 1470 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1471 21))
                         (display "\n")
                         'importer)
                       mk-list)))
                   (x7889 (input)))
                  (begin
                    (write '(funapp 1474 19))
                    (display "\n")
                    (x7890 x7889))))
                (g7888
                 (letrec*
                  ((x7897
                    (begin
                      (write '(funapp 1478 21))
                      (display "\n")
                      ((lambda (j7332 k7333 f7334)
                         (letrec*
                          ((g7898
                            (lambda (g7331)
                              (letrec*
                               ((g7899
                                 (letrec*
                                  ((x7902
                                    (letrec*
                                     ((x7903
                                       (begin
                                         (write '(funapp 1487 44))
                                         (display "\n")
                                         (cons/c integer?/c integer?/c))))
                                     (begin
                                       (write '(funapp 1488 36))
                                       (display "\n")
                                       (listof x7903))))
                                   (x7900
                                    (letrec*
                                     ((x7901
                                       (begin
                                         (write '(funapp 1491 44))
                                         (display "\n")
                                         (integer?/c j7332 k7333 g7331))))
                                     (begin
                                       (write '(funapp 1492 36))
                                       (display "\n")
                                       (f7334 x7901)))))
                                  (begin
                                    (write '(funapp 1493 33))
                                    (display "\n")
                                    (x7902 j7332 k7333 x7900)))))
                               g7899))))
                          g7898))
                       (begin (write '(funapp 1496 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1497 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7896 (input)))
                  (begin
                    (write '(funapp 1500 19))
                    (display "\n")
                    (x7897 x7896)))))
               g7888))))
           g7348))))
       g7346)))
    g7345)))
