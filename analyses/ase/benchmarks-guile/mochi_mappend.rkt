(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7341 #t)) g7341)))
    (meta (lambda (v) (letrec* ((g7342 v)) g7342)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7343
          (letrec*
           ((g7344
             (letrec*
              ((x-e7345 lst))
              (letrec*
               ((v1742 x-e7345))
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
                   ((x-cnd7346
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7346
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
           g7344)))
        g7343)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7347 (lambda (v) (letrec* ((g7348 v)) g7348)))) g7347)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7349
          (letrec*
           ((x7350 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7350)))))
        g7349))))
   (letrec*
    ((g7351
      (letrec*
       ((g7352
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
           ((g7353 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7354
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7355
                     (lambda (k j lst)
                       (letrec*
                        ((g7356
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7357
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7357))
                             lst))))
                        g7356))))
                   g7355)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7359
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7358)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7361
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7360)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7363
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7362)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7366 #t)) g7366)) g7269))))
                      (if x-cnd7365
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7364)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7369 #t)) g7369)) g7272))))
                      (if x-cnd7368
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7367)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7371
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7370)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7373
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7372)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7375
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7374)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7376
                     (lambda (k j v)
                       (letrec*
                        ((g7377
                          (letrec*
                           ((x-cnd7378
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7378
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7377))))
                   g7376)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7379
                     (lambda (k j v)
                       (letrec*
                        ((g7380
                          (letrec*
                           ((x-cnd7381
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7381
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7385
                                (letrec*
                                 ((x7386
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7386))))
                               (x7382
                                (letrec*
                                 ((x7384
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7383
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7384 k j x7383)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7385 x7382)))))))
                        g7380))))
                   g7379)))
               (any? (lambda (v) (letrec* ((g7387 #t)) g7387)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7388
                     (letrec*
                      ((x7389
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7389)))))
                   g7388)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7392
                                (letrec*
                                 ((x7393
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7393)))))
                              g7392))
                           g7284))))
                      (if x-cnd7391
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7390)))
               (meta (lambda (v) (letrec* ((g7394 v)) g7394)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7396
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7397
                             (letrec*
                              ((x7398
                                (letrec*
                                 ((x7400
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7399
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7400 x7399)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7398)))))
                           g7397))))
                      g7396))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7395
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7395)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7402
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7403
                             (letrec*
                              ((x7404
                                (letrec*
                                 ((x7406
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7405
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7406 x7405)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7404)))))
                           g7403))))
                      g7402))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7401
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7401)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7408
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7409
                             (letrec*
                              ((x7410
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7411
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7412 x7411)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7410)))))
                           g7409))))
                      g7408))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7407
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7407)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7414
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7415
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7417
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7418 x7417)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7416)))))
                           g7415))))
                      g7414))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7413
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7413)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7420
                        (lambda (g7305)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7423
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7423)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7419)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7425
                        (lambda (g7309)
                          (letrec*
                           ((g7426
                             (letrec*
                              ((x7427
                                (letrec*
                                 ((x7428
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7428)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7427)))))
                           g7426))))
                      g7425))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7424
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7424)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7430
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7431
                             (letrec*
                              ((x7432
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7433
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7434 x7433)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7432)))))
                           g7431))))
                      g7430))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7429
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7429)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7436
                        (lambda (g7318)
                          (letrec*
                           ((g7437
                             (letrec*
                              ((x7438
                                (letrec*
                                 ((x7439
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7439)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7438)))))
                           g7437))))
                      g7436))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7435
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7435)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7441
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7442
                             (letrec*
                              ((x7443
                                (letrec*
                                 ((x7445
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7444
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7445 x7444)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7443)))))
                           g7442))))
                      g7441))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7440
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7440)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7446
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7446)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x7448
                        (letrec*
                         ((x7449
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7449)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7448)))))
                   g7447)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x7453
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7453))))
                    (g7451
                     (letrec*
                      ((x7454
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7454))))
                    (g7452
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7455
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7458
                           (letrec*
                            ((x7459
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7459))))
                          (x7456
                           (letrec*
                            ((x7457
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7457)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7458 x7456)))))))
                   g7452)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x7461
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7461)))))
                   g7460)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7462
                     (letrec*
                      ((x7463
                        (letrec*
                         ((x7464
                           (letrec*
                            ((x7465
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7465)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7464)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7463)))))
                   g7462)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7469)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7468)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7467)))))
                   g7466)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7473))))
                    (g7471
                     (letrec*
                      ((x7474
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7474))))
                    (g7472
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
                       ((g7475
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7476 res))
                       g7476))))
                   g7472)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7478
                        (letrec*
                         ((x7479
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7479)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7478)))))
                   g7477)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7481
                        (letrec*
                         ((x7482
                           (letrec*
                            ((x7483
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7483)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7482)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7481)))))
                   g7480)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7486))))
                    (g7485
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7487
                        #f
                        (letrec*
                         ((x-cnd7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7489 k)))))
                         (if x-cnd7488
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7490)))))))))
                   g7485)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7492)))))
                   g7491)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7493
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7495))))
                    (g7494
                     (letrec*
                      ((x-cnd7496
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7496
                        ""
                        (letrec*
                         ((x7499
                           (letrec*
                            ((x7500
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7500))))
                          (x7497
                           (letrec*
                            ((x7498
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7498)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7499 x7497)))))))
                   g7494)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7504))))
                    (g7502
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7505))))
                    (g7503
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7506
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7506))))
                   g7503)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7508
                        (letrec*
                         ((x7509
                           (letrec*
                            ((x7510
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7510)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7509)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7508)))))
                   g7507)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7514
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7514))))
                    (g7512
                     (letrec*
                      ((x7515
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7515))))
                    (g7513
                     (letrec*
                      ((x-cnd7516
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7516
                        x
                        (letrec*
                         ((x7518
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7517
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7518 x7517)))))))
                   g7513)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7519
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7519)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x-cnd7521
                        (letrec*
                         ((x7522 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7522)))))
                      (if x-cnd7521
                        (letrec*
                         ((x7523 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7523)))
                        #f))))
                   g7520)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((x7526
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7526))))
                    (g7525
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7527
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7528 (if val7243 val7243 #f)))
                             g7528)))))
                       g7527))))
                   g7525)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7530
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7530 9)))))
                      (letrec*
                       ((g7531
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7532
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7532 10)))))
                            (letrec*
                             ((g7533
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7534
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7534 32))))))
                             g7533)))))
                       g7531))))
                   g7529)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7536
                        (letrec*
                         ((x7537
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7537)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7536)))))
                   g7535)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7540
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7540))))
                    (g7539
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7539)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7541 #f)) g7541)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x7543
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7543)))))
                   g7542)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7546))))
                    (g7545
                     (letrec*
                      ((x-cnd7547
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7547
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7545)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7549
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7551
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7550
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7551 x7550)))))
                            (letrec*
                             ((g7552
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7555
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7554
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7553
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7555 x7554 x7553)))))
                                  (letrec*
                                   ((g7556
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7564
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7563
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7560
                                             (letrec*
                                              ((x7562
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7561
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7562 x7561))))
                                            (x7557
                                             (letrec*
                                              ((x7559
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7558
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7559 x7558)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7564 x7563 x7560 x7557)))))
                                        (letrec*
                                         ((g7565
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7581
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7580
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7566
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7567
                                                    (letrec*
                                                     ((x7578
                                                       (letrec*
                                                        ((x7579
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
                                                          (= x7579 n))))
                                                      (x7568
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7569
                                                               (letrec*
                                                                ((x7576
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7570
                                                                  (letrec*
                                                                   ((x7573
                                                                     (letrec*
                                                                      ((x7575
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
                                                                       (x7574
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
                                                                         x7575
                                                                         x7574))))
                                                                    (x7571
                                                                     (letrec*
                                                                      ((x7572
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
                                                                         x7572)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7573
                                                                          x7571)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7576
                                                                      x7570)))))
                                                             g7569))))
                                                        (letrec*
                                                         ((g7577
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7577))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7578 x7568)))))
                                                  g7567))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7581 x7580 x7566))))))
                                         g7565)))))
                                   g7556)))))
                             g7552)))))
                       g7549))))
                   g7548)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7583
                        (letrec*
                         ((x7584
                           (letrec*
                            ((x7585
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7585)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7584)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7583)))))
                   g7582)))
               (caaddr
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
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7589)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7588)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7587)))))
                   g7586)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7590
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7590)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7593))))
                    (g7592
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7594
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7595 (if val7251 val7251 #f)))
                             g7595)))))
                       g7594))))
                   g7592)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7600))))
                    (g7598
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
                       ((g7601
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7602 res))
                       g7602))))
                   g7598)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7603
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7603)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7609
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7609))))
                   g7606)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7611)))))
                   g7610)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (letrec*
                            ((x7616
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7616)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7614)))))
                   g7613)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7618)))))
                   g7617)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7621)))))
                   g7620)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7628)))))
                   g7625)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7630
                        (letrec*
                         ((x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7632)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7630)))))
                   g7629)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7635
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7634)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7636
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7636)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7638)))))
                   g7637)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7640
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7640)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7643))))
                    (g7642
                     (letrec*
                      ((x-cnd7644
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7644
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7648))))
                          (x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7646)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7647 x7645)))))))
                   g7642)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7656)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7655)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7654)))))
                   g7653)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7660)))))
                   g7658)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7662
                        (letrec*
                         ((x7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7664)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7663)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7662)))))
                   g7661)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7665
                     (letrec*
                      ((x7668
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7670
                        (letrec*
                         ((g7671
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7671)
                        (letrec*
                         ((x-cnd7672
                           (letrec*
                            ((x7673
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7673)))))
                         (if x-cnd7672
                           (letrec*
                            ((g7674
                              (letrec*
                               ((x7675
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7675)))))
                            g7674)
                           (letrec*
                            ((x-cnd7676
                              (letrec*
                               ((x7677
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7677)))))
                            (if x-cnd7676
                              (letrec*
                               ((g7678
                                 (letrec*
                                  ((x7680
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7679
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7680 x7679)))))
                               g7678)
                              (letrec*
                               ((x-cnd7681
                                 (letrec*
                                  ((x7682
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7682)))))
                               (if x-cnd7681
                                 (letrec*
                                  ((g7683
                                    (letrec*
                                     ((x7686
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7685
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7684
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7686 x7685 x7684)))))
                                  g7683)
                                 (letrec*
                                  ((x-cnd7687
                                    (letrec*
                                     ((x7688
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7688)))))
                                  (if x-cnd7687
                                    (letrec*
                                     ((g7689
                                       (letrec*
                                        ((x7693
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7692
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7691
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7690
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7693 x7692 x7691 x7690)))))
                                     g7689)
                                    (letrec*
                                     ((x-cnd7694
                                       (letrec*
                                        ((x7695
                                          (letrec*
                                           ((x7696
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7696)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7695)))))
                                     (if x-cnd7694
                                       (letrec*
                                        ((g7697
                                          (letrec*
                                           ((x7703
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7702
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7701
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7698
                                             (letrec*
                                              ((x7699
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7699)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7703
                                              x7702
                                              x7701
                                              x7700
                                              x7698)))))
                                        g7697)
                                       (letrec*
                                        ((x-cnd7704
                                          (letrec*
                                           ((x7705
                                             (letrec*
                                              ((x7706
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7706)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7705)))))
                                        (if x-cnd7704
                                          (letrec*
                                           ((g7707
                                             (letrec*
                                              ((x7715
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7714
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7713
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7712
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7710
                                                (letrec*
                                                 ((x7711
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7711))))
                                               (x7708
                                                (letrec*
                                                 ((x7709
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7709)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7715
                                                 x7714
                                                 x7713
                                                 x7712
                                                 x7710
                                                 x7708)))))
                                           g7707)
                                          (letrec*
                                           ((x-cnd7716
                                             (letrec*
                                              ((x7717
                                                (letrec*
                                                 ((x7718
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7718)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7717)))))
                                           (if x-cnd7716
                                             (letrec*
                                              ((g7719
                                                (letrec*
                                                 ((x7729
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7728
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7727
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7726
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7724
                                                   (letrec*
                                                    ((x7725
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7725))))
                                                  (x7722
                                                   (letrec*
                                                    ((x7723
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7723))))
                                                  (x7720
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7721)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7729
                                                    x7728
                                                    x7727
                                                    x7726
                                                    x7724
                                                    x7722
                                                    x7720)))))
                                              g7719)
                                             (letrec*
                                              ((g7730
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7730)))))))))))))))))))
                   g7667)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7731
                     (letrec*
                      ((x7733
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7733))))
                    (g7732
                     (letrec*
                      ((x-cnd7734
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7734
                        #f
                        (letrec*
                         ((x-cnd7735
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7736 e)))))
                         (if x-cnd7735
                           l
                           (letrec*
                            ((x7737
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7737)))))))))
                   g7732)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7739
                        (letrec*
                         ((x7740
                           (letrec*
                            ((x7741
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7741)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7740)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7739)))))
                   g7738)))
               (cadddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7745)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7744)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7746
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7746)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7749))))
                    (g7748
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7748)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7751
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7751))))
                   g7750)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7757
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7756)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7757 x7755)))))
                      (letrec*
                       ((g7758
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7758))))
                   g7754)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7760
                        (letrec*
                         ((x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7762)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7761)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7760)))))
                   g7759)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x-cnd7764
                        (letrec*
                         ((x7765 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7765 c)))))
                      (if x-cnd7764
                        (letrec*
                         ((x7766 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7766)))
                        #f))))
                   g7763)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (letrec*
                      ((x-cnd7770
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7770
                        #f
                        (letrec*
                         ((x-cnd7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7772 k)))))
                         (if x-cnd7771
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7773)))))))))
                   g7768)))
               (not (lambda (x) (letrec* ((g7774 (if x #f #t))) g7774)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7775
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7775)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7776
                     (letrec*
                      ((x7778
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7778))))
                    (g7777
                     (letrec*
                      ((x-cnd7779
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7779
                        #f
                        (letrec*
                         ((x-cnd7780
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7781 e)))))
                         (if x-cnd7780
                           l
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7782)))))))))
                   g7777)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7784
                        (letrec*
                         ((x7785
                           (letrec*
                            ((x7786
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7786)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7785)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7784)))))
                   g7783)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7789))))
                    (g7788
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7790
                             (letrec*
                              ((x-cnd7791
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7791
                                0
                                (letrec*
                                 ((x7792
                                   (letrec*
                                    ((x7793
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7793)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7792)))))))
                           g7790))))
                      (letrec*
                       ((g7794
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7794))))
                   g7788)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7799))))
                    (g7797
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7800
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7800))))
                   g7797)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7802
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7802)))))
                   g7801)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7804
                        (letrec*
                         ((x7805
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7805)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7804)))))
                   g7803)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7808))))
                    (g7807
                     (letrec*
                      ((x-cnd7809
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7809
                        #f
                        (letrec*
                         ((x-cnd7810
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7811 k)))))
                         (if x-cnd7810
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7812
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7812)))))))))
                   g7807)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7814)))))
                   g7813)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7820)))))
                   g7817)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7822
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7822))))
                   g7821)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7827))))
                    (g7825
                     (letrec*
                      ((x-cnd7828
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7828
                        #t
                        (letrec*
                         ((x-cnd7829
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7829
                           (letrec*
                            ((g7830
                              (letrec*
                               ((x7832
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7832))))
                             (g7831
                              (letrec*
                               ((x7833
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7833)))))
                            g7831)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7825)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7836
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7836))))
                    (g7835
                     (letrec*
                      ((x-cnd7837
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7837
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7835)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7841))))
                    (g7839
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7842))))
                    (g7840
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7843
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7843))))
                   g7840)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7845
                        (letrec*
                         ((x7846
                           (letrec*
                            ((x7847
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7847)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7846)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7845)))))
                   g7844)))
               (newline (lambda () (letrec* ((g7848 #f)) g7848)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (letrec*
                         ((x7852
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7852))))
                       (x7850
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7851 x7850)))))
                   g7849)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7855))))
                    (g7854
                     (letrec*
                      ((x7856
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7856)))))
                   g7854)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7857
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7861))))
                    (g7858
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7862))))
                    (g7859
                     (letrec*
                      ((x7863
                        (letrec*
                         ((x7864
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7864)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7863))))
                    (g7860
                     (letrec*
                      ((x-cnd7865
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7865
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7867
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7866
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7867 x7866)))))))
                   g7860)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x-cnd7869
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7869
                        a
                        (letrec*
                         ((x7870
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7870)))))))
                   g7868)))
               (mappend
                (lambda (xs ys)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7872
                        ys
                        (letrec*
                         ((x7875
                           (begin
                             (write '(funapp 1408 34))
                             (display "\n")
                             (car xs)))
                          (x7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1410 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1410 56))
                              (display "\n")
                              (mappend x7874 ys)))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (cons x7875 x7873)))))))
                   g7871)))
               (map-append
                (lambda (f xs)
                  (letrec*
                   ((g7876
                     (letrec*
                      ((x-cnd7877
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7877
                        empty
                        (letrec*
                         ((x7880
                           (letrec*
                            ((x7881
                              (begin
                                (write '(funapp 1422 51))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1422 62))
                              (display "\n")
                              (f x7881))))
                          (x7878
                           (letrec*
                            ((x7879
                              (begin
                                (write '(funapp 1424 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1424 56))
                              (display "\n")
                              (map-append f x7879)))))
                         (begin
                           (write '(funapp 1425 26))
                           (display "\n")
                           (mappend x7880 x7878)))))))
                   g7876))))
              (letrec*
               ((g7882
                 (letrec*
                  ((x7886
                    (begin
                      (write '(funapp 1431 21))
                      (display "\n")
                      ((lambda (j7329 k7330 f7331)
                         (letrec*
                          ((g7887
                            (lambda (g7327 g7328)
                              (letrec*
                               ((g7888
                                 (letrec*
                                  ((x7898
                                    (begin
                                      (write '(funapp 1438 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7889
                                    (letrec*
                                     ((x7892
                                       (begin
                                         (write '(funapp 1442 38))
                                         (display "\n")
                                         ((lambda (j7333 k7334 f7335)
                                            (letrec*
                                             ((g7893
                                               (lambda (g7332)
                                                 (letrec*
                                                  ((g7894
                                                    (letrec*
                                                     ((x7897
                                                       (begin
                                                         (write
                                                          '(funapp 1449 58))
                                                         (display "\n")
                                                         (listof any/c)))
                                                      (x7895
                                                       (letrec*
                                                        ((x7896
                                                          (begin
                                                            (write
                                                             '(funapp 1453 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7333
                                                             k7334
                                                             g7332))))
                                                        (begin
                                                          (write
                                                           '(funapp 1457 53))
                                                          (display "\n")
                                                          (f7335 x7896)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1458 50))
                                                       (display "\n")
                                                       (x7897
                                                        j7333
                                                        k7334
                                                        x7895)))))
                                                  g7894))))
                                             g7893))
                                          j7329
                                          k7330
                                          g7327)))
                                      (x7890
                                       (letrec*
                                        ((x7891
                                          (begin
                                            (write '(funapp 1466 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1467 39))
                                          (display "\n")
                                          (x7891 j7329 k7330 g7328)))))
                                     (begin
                                       (write '(funapp 1468 36))
                                       (display "\n")
                                       (f7331 x7892 x7890)))))
                                  (begin
                                    (write '(funapp 1469 33))
                                    (display "\n")
                                    (x7898 j7329 k7330 x7889)))))
                               g7888))))
                          g7887))
                       (begin (write '(funapp 1472 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1473 21))
                         (display "\n")
                         'importer)
                       map-append)))
                   (x7885 (input))
                   (x7884 (input)))
                  (begin
                    (write '(funapp 1477 19))
                    (display "\n")
                    (x7886 x7885 x7884))))
                (g7883
                 (letrec*
                  ((x7901
                    (begin
                      (write '(funapp 1481 21))
                      (display "\n")
                      ((lambda (j7338 k7339 f7340)
                         (letrec*
                          ((g7902
                            (lambda (g7336 g7337)
                              (letrec*
                               ((g7903
                                 (letrec*
                                  ((x7909
                                    (begin
                                      (write '(funapp 1488 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7904
                                    (letrec*
                                     ((x7907
                                       (letrec*
                                        ((x7908
                                          (begin
                                            (write '(funapp 1493 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1494 39))
                                          (display "\n")
                                          (x7908 j7338 k7339 g7336))))
                                      (x7905
                                       (letrec*
                                        ((x7906
                                          (begin
                                            (write '(funapp 1497 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1498 39))
                                          (display "\n")
                                          (x7906 j7338 k7339 g7337)))))
                                     (begin
                                       (write '(funapp 1499 36))
                                       (display "\n")
                                       (f7340 x7907 x7905)))))
                                  (begin
                                    (write '(funapp 1500 33))
                                    (display "\n")
                                    (x7909 j7338 k7339 x7904)))))
                               g7903))))
                          g7902))
                       (begin (write '(funapp 1503 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1504 21))
                         (display "\n")
                         'importer)
                       mappend)))
                   (x7900 (input))
                   (x7899 (input)))
                  (begin
                    (write '(funapp 1508 19))
                    (display "\n")
                    (x7901 x7900 x7899)))))
               g7883))))
           g7354))))
       g7352)))
    g7351)))
