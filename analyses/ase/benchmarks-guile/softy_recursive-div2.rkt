(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7334 #t)) g7334)))
    (meta (lambda (v) (letrec* ((g7335 v)) g7335)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7336
          (letrec*
           ((g7337
             (letrec*
              ((x-e7338 lst))
              (letrec*
               ((v1742 x-e7338))
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
                   ((x-cnd7339
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7339
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
           g7337)))
        g7336)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7340 (lambda (v) (letrec* ((g7341 v)) g7341)))) g7340)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7342
          (letrec*
           ((x7343 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7343)))))
        g7342))))
   (letrec*
    ((g7344
      (letrec*
       ((g7345
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
           ((g7346 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7347
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7348
                     (lambda (k j lst)
                       (letrec*
                        ((g7349
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7350
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7350))
                             lst))))
                        g7349))))
                   g7348)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7351
                     (letrec*
                      ((x-cnd7352
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7352
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7351)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7354
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7353)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7356
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7355)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7359 #t)) g7359)) g7269))))
                      (if x-cnd7358
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7357)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7362 #t)) g7362)) g7272))))
                      (if x-cnd7361
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7360)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7364
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7363)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7366
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7365)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7368
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7367)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7369
                     (lambda (k j v)
                       (letrec*
                        ((g7370
                          (letrec*
                           ((x-cnd7371
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7371
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7370))))
                   g7369)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7372
                     (lambda (k j v)
                       (letrec*
                        ((g7373
                          (letrec*
                           ((x-cnd7374
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7374
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7378
                                (letrec*
                                 ((x7379
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7379))))
                               (x7375
                                (letrec*
                                 ((x7377
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7376
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7377 k j x7376)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7378 x7375)))))))
                        g7373))))
                   g7372)))
               (any? (lambda (v) (letrec* ((g7380 #t)) g7380)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x7382
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7382)))))
                   g7381)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x-cnd7384
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7385
                                (letrec*
                                 ((x7386
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7386)))))
                              g7385))
                           g7284))))
                      (if x-cnd7384
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7383)))
               (meta (lambda (v) (letrec* ((g7387 v)) g7387)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7389
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7390
                             (letrec*
                              ((x7391
                                (letrec*
                                 ((x7393
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7392
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7393 x7392)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7391)))))
                           g7390))))
                      g7389))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7388
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7388)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7395
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7396
                             (letrec*
                              ((x7397
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7398
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7399 x7398)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7397)))))
                           g7396))))
                      g7395))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7394
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7394)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7401
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7402
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7404
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7405 x7404)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7403)))))
                           g7402))))
                      g7401))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7400
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7400)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7407
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7408
                             (letrec*
                              ((x7409
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7410
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7411 x7410)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7409)))))
                           g7408))))
                      g7407))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7406
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7406)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7413
                        (lambda (g7305)
                          (letrec*
                           ((g7414
                             (letrec*
                              ((x7415
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7416)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7415)))))
                           g7414))))
                      g7413))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7412
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7412)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7418
                        (lambda (g7309)
                          (letrec*
                           ((g7419
                             (letrec*
                              ((x7420
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7421)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7420)))))
                           g7419))))
                      g7418))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7417
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7417)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7423
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7427
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7426
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7427 x7426)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7425)))))
                           g7424))))
                      g7423))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7422
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7422)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7429
                        (lambda (g7318)
                          (letrec*
                           ((g7430
                             (letrec*
                              ((x7431
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7432)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7431)))))
                           g7430))))
                      g7429))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7428
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7428)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7434
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7435
                             (letrec*
                              ((x7436
                                (letrec*
                                 ((x7438
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7437
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7438 x7437)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7436)))))
                           g7435))))
                      g7434))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7433
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7433)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7439
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7439)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x7441
                        (letrec*
                         ((x7442
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7442)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7441)))))
                   g7440)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x7446
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7446))))
                    (g7444
                     (letrec*
                      ((x7447
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7447))))
                    (g7445
                     (letrec*
                      ((x-cnd7448
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7448
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7451
                           (letrec*
                            ((x7452
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7452))))
                          (x7449
                           (letrec*
                            ((x7450
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7450)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7451 x7449)))))))
                   g7445)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x7454
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7454)))))
                   g7453)))
               (cadadr
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7458)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7457)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7456)))))
                   g7455)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7459
                     (letrec*
                      ((x7460
                        (letrec*
                         ((x7461
                           (letrec*
                            ((x7462
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7462)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7461)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7460)))))
                   g7459)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7463
                     (letrec*
                      ((x7466
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7466))))
                    (g7464
                     (letrec*
                      ((x7467
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7467))))
                    (g7465
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
                       ((g7468
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7469 res))
                       g7469))))
                   g7465)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7471
                        (letrec*
                         ((x7472
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7472)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7471)))))
                   g7470)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x7474
                        (letrec*
                         ((x7475
                           (letrec*
                            ((x7476
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7476)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7475)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7474)))))
                   g7473)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7479))))
                    (g7478
                     (letrec*
                      ((x-cnd7480
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7480
                        #f
                        (letrec*
                         ((x-cnd7481
                           (letrec*
                            ((x7482
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7482 k)))))
                         (if x-cnd7481
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7483
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7483)))))))))
                   g7478)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7485)))))
                   g7484)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7488))))
                    (g7487
                     (letrec*
                      ((x-cnd7489
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7489
                        ""
                        (letrec*
                         ((x7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7493))))
                          (x7490
                           (letrec*
                            ((x7491
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7491)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7492 x7490)))))))
                   g7487)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7497))))
                    (g7495
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7498))))
                    (g7496
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7499
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7499))))
                   g7496)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7501
                        (letrec*
                         ((x7502
                           (letrec*
                            ((x7503
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7503)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7502)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7501)))))
                   g7500)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7504
                     (letrec*
                      ((x7507
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7507))))
                    (g7505
                     (letrec*
                      ((x7508
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7508))))
                    (g7506
                     (letrec*
                      ((x-cnd7509
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7509
                        x
                        (letrec*
                         ((x7511
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7510
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7511 x7510)))))))
                   g7506)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7512
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7512)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7513
                     (letrec*
                      ((x-cnd7514
                        (letrec*
                         ((x7515 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7515)))))
                      (if x-cnd7514
                        (letrec*
                         ((x7516 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7516)))
                        #f))))
                   g7513)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7519
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7519))))
                    (g7518
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7520
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7521 (if val7243 val7243 #f)))
                             g7521)))))
                       g7520))))
                   g7518)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7522
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7523
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7523 9)))))
                      (letrec*
                       ((g7524
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7525
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7525 10)))))
                            (letrec*
                             ((g7526
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7527
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7527 32))))))
                             g7526)))))
                       g7524))))
                   g7522)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((x7529
                        (letrec*
                         ((x7530
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7530)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7529)))))
                   g7528)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7533))))
                    (g7532
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7532)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7534 #f)) g7534)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7536)))))
                   g7535)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7539))))
                    (g7538
                     (letrec*
                      ((x-cnd7540
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7540
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7538)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7542
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7544
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7543
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7544 x7543)))))
                            (letrec*
                             ((g7545
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7548
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7547
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7546
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7548 x7547 x7546)))))
                                  (letrec*
                                   ((g7549
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7557
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7556
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7553
                                             (letrec*
                                              ((x7555
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7554
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7555 x7554))))
                                            (x7550
                                             (letrec*
                                              ((x7552
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7551
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7552 x7551)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7557 x7556 x7553 x7550)))))
                                        (letrec*
                                         ((g7558
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7574
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7573
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7559
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7560
                                                    (letrec*
                                                     ((x7571
                                                       (letrec*
                                                        ((x7572
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
                                                          (= x7572 n))))
                                                      (x7561
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7562
                                                               (letrec*
                                                                ((x7569
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7563
                                                                  (letrec*
                                                                   ((x7566
                                                                     (letrec*
                                                                      ((x7568
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
                                                                       (x7567
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
                                                                         x7568
                                                                         x7567))))
                                                                    (x7564
                                                                     (letrec*
                                                                      ((x7565
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
                                                                         x7565)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7566
                                                                          x7564)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7569
                                                                      x7563)))))
                                                             g7562))))
                                                        (letrec*
                                                         ((g7570
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7570))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7571 x7561)))))
                                                  g7560))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7574 x7573 x7559))))))
                                         g7558)))))
                                   g7549)))))
                             g7545)))))
                       g7542))))
                   g7541)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7578)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7577)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7576)))))
                   g7575)))
               (caaddr
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
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7582)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7581)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7580)))))
                   g7579)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7583
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7583)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7586))))
                    (g7585
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7587
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7588 (if val7251 val7251 #f)))
                             g7588)))))
                       g7587))))
                   g7585)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7592
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7593))))
                    (g7591
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
                       ((g7594
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7595 res))
                       g7595))))
                   g7591)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7596
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7596)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7602
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7602))))
                   g7599)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (letrec*
                            ((x7609
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7609)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7612)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7611)))))
                   g7610)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7614)))))
                   g7613)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7621)))))
                   g7618)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7622
                     (letrec*
                      ((x7623
                        (letrec*
                         ((x7624
                           (letrec*
                            ((x7625
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7625)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7623)))))
                   g7622)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7628))))
                    (g7627
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7627)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7629
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7629)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x7631
                        (letrec*
                         ((x7632
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7631)))))
                   g7630)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7633
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7633)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7636))))
                    (g7635
                     (letrec*
                      ((x-cnd7637
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7637
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7641))))
                          (x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7639)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7640 x7638)))))))
                   g7635)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7645)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7644)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7643)))))
                   g7642)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7649)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7648)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7647)))))
                   g7646)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7650
                     (letrec*
                      ((x7652
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7652))))
                    (g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7653)))))
                   g7651)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7654
                     (letrec*
                      ((x7655
                        (letrec*
                         ((x7656
                           (letrec*
                            ((x7657
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7657)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7656)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7655)))))
                   g7654)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7658
                     (letrec*
                      ((x7661
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7663
                        (letrec*
                         ((g7664
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7664)
                        (letrec*
                         ((x-cnd7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7666)))))
                         (if x-cnd7665
                           (letrec*
                            ((g7667
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7668)))))
                            g7667)
                           (letrec*
                            ((x-cnd7669
                              (letrec*
                               ((x7670
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7670)))))
                            (if x-cnd7669
                              (letrec*
                               ((g7671
                                 (letrec*
                                  ((x7673
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7672
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7673 x7672)))))
                               g7671)
                              (letrec*
                               ((x-cnd7674
                                 (letrec*
                                  ((x7675
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7675)))))
                               (if x-cnd7674
                                 (letrec*
                                  ((g7676
                                    (letrec*
                                     ((x7679
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7678
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7677
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7679 x7678 x7677)))))
                                  g7676)
                                 (letrec*
                                  ((x-cnd7680
                                    (letrec*
                                     ((x7681
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7681)))))
                                  (if x-cnd7680
                                    (letrec*
                                     ((g7682
                                       (letrec*
                                        ((x7686
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7685
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7684
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7683
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7686 x7685 x7684 x7683)))))
                                     g7682)
                                    (letrec*
                                     ((x-cnd7687
                                       (letrec*
                                        ((x7688
                                          (letrec*
                                           ((x7689
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7689)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7688)))))
                                     (if x-cnd7687
                                       (letrec*
                                        ((g7690
                                          (letrec*
                                           ((x7696
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7691
                                             (letrec*
                                              ((x7692
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7692)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7696
                                              x7695
                                              x7694
                                              x7693
                                              x7691)))))
                                        g7690)
                                       (letrec*
                                        ((x-cnd7697
                                          (letrec*
                                           ((x7698
                                             (letrec*
                                              ((x7699
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7699)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7698)))))
                                        (if x-cnd7697
                                          (letrec*
                                           ((g7700
                                             (letrec*
                                              ((x7708
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7707
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7706
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7705
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7703
                                                (letrec*
                                                 ((x7704
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7704))))
                                               (x7701
                                                (letrec*
                                                 ((x7702
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7702)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7708
                                                 x7707
                                                 x7706
                                                 x7705
                                                 x7703
                                                 x7701)))))
                                           g7700)
                                          (letrec*
                                           ((x-cnd7709
                                             (letrec*
                                              ((x7710
                                                (letrec*
                                                 ((x7711
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7711)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7710)))))
                                           (if x-cnd7709
                                             (letrec*
                                              ((g7712
                                                (letrec*
                                                 ((x7722
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7721
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7720
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7719
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7717
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7718))))
                                                  (x7715
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7716))))
                                                  (x7713
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7714)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7722
                                                    x7721
                                                    x7720
                                                    x7719
                                                    x7717
                                                    x7715
                                                    x7713)))))
                                              g7712)
                                             (letrec*
                                              ((g7723
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7723)))))))))))))))))))
                   g7660)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7724
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7726))))
                    (g7725
                     (letrec*
                      ((x-cnd7727
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7727
                        #f
                        (letrec*
                         ((x-cnd7728
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7729 e)))))
                         (if x-cnd7728
                           l
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7730)))))))))
                   g7725)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7734)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7733)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7732)))))
                   g7731)))
               (cadddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7737)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7739
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7739)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7742
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7742))))
                    (g7741
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7741)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7744
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7744))))
                   g7743)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7746
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7750
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7749)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7750 x7748)))))
                      (letrec*
                       ((g7751
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7751))))
                   g7747)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (letrec*
                         ((x7754
                           (letrec*
                            ((x7755
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7755)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7754)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7753)))))
                   g7752)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x-cnd7757
                        (letrec*
                         ((x7758 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7758 c)))))
                      (if x-cnd7757
                        (letrec*
                         ((x7759 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7759)))
                        #f))))
                   g7756)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7762))))
                    (g7761
                     (letrec*
                      ((x-cnd7763
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7763
                        #f
                        (letrec*
                         ((x-cnd7764
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7765 k)))))
                         (if x-cnd7764
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7766)))))))))
                   g7761)))
               (not (lambda (x) (letrec* ((g7767 (if x #f #t))) g7767)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7768
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7768)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7771
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7771))))
                    (g7770
                     (letrec*
                      ((x-cnd7772
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7772
                        #f
                        (letrec*
                         ((x-cnd7773
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7774 e)))))
                         (if x-cnd7773
                           l
                           (letrec*
                            ((x7775
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7775)))))))))
                   g7770)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7777
                        (letrec*
                         ((x7778
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7779)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7778)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7777)))))
                   g7776)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7782
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7782))))
                    (g7781
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7783
                             (letrec*
                              ((x-cnd7784
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7784
                                0
                                (letrec*
                                 ((x7785
                                   (letrec*
                                    ((x7786
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7786)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7785)))))))
                           g7783))))
                      (letrec*
                       ((g7787
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7787))))
                   g7781)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7792))))
                    (g7790
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7793
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7793))))
                   g7790)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7795)))))
                   g7794)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7797
                        (letrec*
                         ((x7798
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7798)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7797)))))
                   g7796)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7801))))
                    (g7800
                     (letrec*
                      ((x-cnd7802
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7802
                        #f
                        (letrec*
                         ((x-cnd7803
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7804 k)))))
                         (if x-cnd7803
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7805
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7805)))))))))
                   g7800)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7807)))))
                   g7806)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7813)))))
                   g7810)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7815
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7815))))
                   g7814)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7820))))
                    (g7818
                     (letrec*
                      ((x-cnd7821
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7821
                        #t
                        (letrec*
                         ((x-cnd7822
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7822
                           (letrec*
                            ((g7823
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7825))))
                             (g7824
                              (letrec*
                               ((x7826
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7826)))))
                            g7824)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7818)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7829))))
                    (g7828
                     (letrec*
                      ((x-cnd7830
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7830
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7828)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7834))))
                    (g7832
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7835))))
                    (g7833
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7836
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7836))))
                   g7833)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7838
                        (letrec*
                         ((x7839
                           (letrec*
                            ((x7840
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7840)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7839)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7838)))))
                   g7837)))
               (newline (lambda () (letrec* ((g7841 #f)) g7841)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (letrec*
                         ((x7845
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7845))))
                       (x7843
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7844 x7843)))))
                   g7842)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7848))))
                    (g7847
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7849)))))
                   g7847)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7854))))
                    (g7851
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7855))))
                    (g7852
                     (letrec*
                      ((x7856
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7857)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7856))))
                    (g7853
                     (letrec*
                      ((x-cnd7858
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7858
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7860
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7859
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7860 x7859)))))))
                   g7853)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7862
                        a
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7863)))))))
                   g7861)))
               (recursive-div2
                (lambda (l)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x-cnd7865
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7865
                        empty
                        (letrec*
                         ((x7869
                           (begin
                             (write '(funapp 1408 34))
                             (display "\n")
                             (car l)))
                          (x7866
                           (letrec*
                            ((x7867
                              (letrec*
                               ((x7868
                                 (begin
                                   (write '(funapp 1411 54))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1411 64))
                                 (display "\n")
                                 (cdr x7868)))))
                            (begin
                              (write '(funapp 1412 29))
                              (display "\n")
                              (recursive-div2 x7867)))))
                         (begin
                           (write '(funapp 1413 26))
                           (display "\n")
                           (cons x7869 x7866)))))))
                   g7864)))
               (even-list/c
                (lambda (g7327 g7328 g7329)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1421 25))
                          (display "\n")
                          ((lambda ()
                             (letrec*
                              ((g7872
                                (letrec*
                                 ((x7873
                                   (letrec*
                                    ((x7874
                                      (begin
                                        (write '(funapp 1427 43))
                                        (display "\n")
                                        (cons/c any/c even-list/c))))
                                    (begin
                                      (write '(funapp 1428 35))
                                      (display "\n")
                                      (cons/c any/c x7874)))))
                                 (begin
                                   (write '(funapp 1429 32))
                                   (display "\n")
                                   (or/c null? x7873)))))
                              g7872))
                           g7329))))
                      (if x-cnd7871
                        g7329
                        (begin
                          (write '(blame g7327 1434 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7327)))))))
                   g7870))))
              (letrec*
               ((g7875
                 (letrec*
                  ((x7877
                    (begin
                      (write '(funapp 1445 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7878
                            (lambda (g7330)
                              (letrec*
                               ((g7879
                                 (letrec*
                                  ((x7883
                                    (begin
                                      (write '(funapp 1452 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7880
                                    (letrec*
                                     ((x7881
                                       (letrec*
                                        ((x7882
                                          (begin
                                            (write '(funapp 1457 47))
                                            (display "\n")
                                            (even-list/c))))
                                        (begin
                                          (write '(funapp 1458 39))
                                          (display "\n")
                                          (x7882 j7331 k7332 g7330)))))
                                     (begin
                                       (write '(funapp 1459 36))
                                       (display "\n")
                                       (f7333 x7881)))))
                                  (begin
                                    (write '(funapp 1460 33))
                                    (display "\n")
                                    (x7883 j7331 k7332 x7880)))))
                               g7879))))
                          g7878))
                       (begin (write '(funapp 1463 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1464 21))
                         (display "\n")
                         'importer)
                       recursive-div2)))
                   (x7876 (input)))
                  (begin
                    (write '(funapp 1467 19))
                    (display "\n")
                    (x7877 x7876)))))
               g7875))))
           g7347))))
       g7345)))
    g7344)))
