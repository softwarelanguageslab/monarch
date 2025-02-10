(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7347 #t)) g7347)))
    (meta (lambda (v) (letrec* ((g7348 v)) g7348)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7349
          (letrec*
           ((g7350
             (letrec*
              ((x-e7351 lst))
              (letrec*
               ((v1742 x-e7351))
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
                   ((x-cnd7352
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7352
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
           g7350)))
        g7349)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7353 (lambda (v) (letrec* ((g7354 v)) g7354)))) g7353)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7355
          (letrec*
           ((x7356 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7356)))))
        g7355))))
   (letrec*
    ((g7357
      (letrec*
       ((g7358
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
           ((g7359 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7360
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7361
                     (lambda (k j lst)
                       (letrec*
                        ((g7362
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7363
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7363))
                             lst))))
                        g7362))))
                   g7361)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7365
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7364)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7367
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7366)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7369
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7368)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7372 #t)) g7372)) g7269))))
                      (if x-cnd7371
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7370)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7373
                     (letrec*
                      ((x-cnd7374
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7375 #t)) g7375)) g7272))))
                      (if x-cnd7374
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7373)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7376
                     (letrec*
                      ((x-cnd7377
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7377
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7376)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x-cnd7379
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7379
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7378)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7381
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7380)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7382
                     (lambda (k j v)
                       (letrec*
                        ((g7383
                          (letrec*
                           ((x-cnd7384
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7384
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7383))))
                   g7382)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7385
                     (lambda (k j v)
                       (letrec*
                        ((g7386
                          (letrec*
                           ((x-cnd7387
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7387
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7391
                                (letrec*
                                 ((x7392
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7392))))
                               (x7388
                                (letrec*
                                 ((x7390
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7389
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7390 k j x7389)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7391 x7388)))))))
                        g7386))))
                   g7385)))
               (any? (lambda (v) (letrec* ((g7393 #t)) g7393)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7394
                     (letrec*
                      ((x7395
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7395)))))
                   g7394)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7396
                     (letrec*
                      ((x-cnd7397
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7398
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7399)))))
                              g7398))
                           g7284))))
                      (if x-cnd7397
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7396)))
               (meta (lambda (v) (letrec* ((g7400 v)) g7400)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7402
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7403
                             (letrec*
                              ((x7404
                                (letrec*
                                 ((x7406
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7405
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7406 x7405)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7404)))))
                           g7403))))
                      g7402))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7401
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7401)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7408
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7409
                             (letrec*
                              ((x7410
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7411
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7412 x7411)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7410)))))
                           g7409))))
                      g7408))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7407
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7407)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7414
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7415
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7417
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7418 x7417)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7416)))))
                           g7415))))
                      g7414))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7413
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7413)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7420
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7423
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7424 x7423)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7419)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7426
                        (lambda (g7305)
                          (letrec*
                           ((g7427
                             (letrec*
                              ((x7428
                                (letrec*
                                 ((x7429
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7429)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7428)))))
                           g7427))))
                      g7426))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7425
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7425)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7431
                        (lambda (g7309)
                          (letrec*
                           ((g7432
                             (letrec*
                              ((x7433
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7434)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7433)))))
                           g7432))))
                      g7431))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7430
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7430)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7436
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7437
                             (letrec*
                              ((x7438
                                (letrec*
                                 ((x7440
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7439
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7440 x7439)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7438)))))
                           g7437))))
                      g7436))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7435
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7435)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7442
                        (lambda (g7318)
                          (letrec*
                           ((g7443
                             (letrec*
                              ((x7444
                                (letrec*
                                 ((x7445
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7445)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7444)))))
                           g7443))))
                      g7442))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7441
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7441)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7447
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7448
                             (letrec*
                              ((x7449
                                (letrec*
                                 ((x7451
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7450
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7451 x7450)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7449)))))
                           g7448))))
                      g7447))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7446
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7446)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7452
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7452)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x7454
                        (letrec*
                         ((x7455
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7455)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7454)))))
                   g7453)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7459
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7459))))
                    (g7457
                     (letrec*
                      ((x7460
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7460))))
                    (g7458
                     (letrec*
                      ((x-cnd7461
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7461
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7464
                           (letrec*
                            ((x7465
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7465))))
                          (x7462
                           (letrec*
                            ((x7463
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7463)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7464 x7462)))))))
                   g7458)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7467
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7467)))))
                   g7466)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x7469
                        (letrec*
                         ((x7470
                           (letrec*
                            ((x7471
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7471)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7470)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7469)))))
                   g7468)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7475)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7474)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7473)))))
                   g7472)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7479))))
                    (g7477
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7480))))
                    (g7478
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
                       ((g7481
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7482 res))
                       g7482))))
                   g7478)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7484
                        (letrec*
                         ((x7485
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7485)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7484)))))
                   g7483)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (letrec*
                         ((x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7489)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7488)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7487)))))
                   g7486)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7490
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7492))))
                    (g7491
                     (letrec*
                      ((x-cnd7493
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7493
                        #f
                        (letrec*
                         ((x-cnd7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7495 k)))))
                         (if x-cnd7494
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7496)))))))))
                   g7491)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7498
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7498)))))
                   g7497)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7499
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7501))))
                    (g7500
                     (letrec*
                      ((x-cnd7502
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7502
                        ""
                        (letrec*
                         ((x7505
                           (letrec*
                            ((x7506
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7506))))
                          (x7503
                           (letrec*
                            ((x7504
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7504)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7505 x7503)))))))
                   g7500)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7511))))
                    (g7509
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7512
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7512))))
                   g7509)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7513
                     (letrec*
                      ((x7514
                        (letrec*
                         ((x7515
                           (letrec*
                            ((x7516
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7516)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7515)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7514)))))
                   g7513)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7517
                     (letrec*
                      ((x7520
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7520))))
                    (g7518
                     (letrec*
                      ((x7521
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7521))))
                    (g7519
                     (letrec*
                      ((x-cnd7522
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7522
                        x
                        (letrec*
                         ((x7524
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7523
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7524 x7523)))))))
                   g7519)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7525
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7525)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7526
                     (letrec*
                      ((x-cnd7527
                        (letrec*
                         ((x7528 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7528)))))
                      (if x-cnd7527
                        (letrec*
                         ((x7529 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7529)))
                        #f))))
                   g7526)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7532
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7532))))
                    (g7531
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7533
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7534 (if val7243 val7243 #f)))
                             g7534)))))
                       g7533))))
                   g7531)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7536
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7536 9)))))
                      (letrec*
                       ((g7537
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7538
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7538 10)))))
                            (letrec*
                             ((g7539
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7540
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7540 32))))))
                             g7539)))))
                       g7537))))
                   g7535)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7541
                     (letrec*
                      ((x7542
                        (letrec*
                         ((x7543
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7543)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7542)))))
                   g7541)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((x7546
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7546))))
                    (g7545
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7545)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7547 #f)) g7547)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((x7549
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7549)))))
                   g7548)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7550
                     (letrec*
                      ((x7552
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7552))))
                    (g7551
                     (letrec*
                      ((x-cnd7553
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7553
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7551)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7554
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7555
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7557
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7556
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7557 x7556)))))
                            (letrec*
                             ((g7558
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7561
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7560
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7559
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7561 x7560 x7559)))))
                                  (letrec*
                                   ((g7562
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7570
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7569
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7566
                                             (letrec*
                                              ((x7568
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7567
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7568 x7567))))
                                            (x7563
                                             (letrec*
                                              ((x7565
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7564
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7565 x7564)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7570 x7569 x7566 x7563)))))
                                        (letrec*
                                         ((g7571
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7587
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7586
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7572
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7573
                                                    (letrec*
                                                     ((x7584
                                                       (letrec*
                                                        ((x7585
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
                                                          (= x7585 n))))
                                                      (x7574
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7575
                                                               (letrec*
                                                                ((x7582
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7576
                                                                  (letrec*
                                                                   ((x7579
                                                                     (letrec*
                                                                      ((x7581
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
                                                                       (x7580
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
                                                                         x7581
                                                                         x7580))))
                                                                    (x7577
                                                                     (letrec*
                                                                      ((x7578
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
                                                                         x7578)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7579
                                                                          x7577)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7582
                                                                      x7576)))))
                                                             g7575))))
                                                        (letrec*
                                                         ((g7583
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7583))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7584 x7574)))))
                                                  g7573))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7587 x7586 x7572))))))
                                         g7571)))))
                                   g7562)))))
                             g7558)))))
                       g7555))))
                   g7554)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7591)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7590)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7589)))))
                   g7588)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7593
                        (letrec*
                         ((x7594
                           (letrec*
                            ((x7595
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7595)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7594)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7593)))))
                   g7592)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7596
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7596)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7599))))
                    (g7598
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7600
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7601 (if val7251 val7251 #f)))
                             g7601)))))
                       g7600))))
                   g7598)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7605))))
                    (g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7606))))
                    (g7604
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
                       ((g7607
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7608 res))
                       g7608))))
                   g7604)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7609
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7609)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7615
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7615))))
                   g7612)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7617)))))
                   g7616)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7620
                        (letrec*
                         ((x7621
                           (letrec*
                            ((x7622
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7622)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7620)))))
                   g7619)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7624
                        (letrec*
                         ((x7625
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7625)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x7627
                        (letrec*
                         ((x7628
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7628)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7627)))))
                   g7626)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7632
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7632))))
                    (g7630
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7633))))
                    (g7631
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7634)))))
                   g7631)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7638)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7636)))))
                   g7635)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7641))))
                    (g7640
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7640)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7642
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7642)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x7644
                        (letrec*
                         ((x7645
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7645)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7644)))))
                   g7643)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7646
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7646)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (letrec*
                      ((x-cnd7650
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7650
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7653
                           (letrec*
                            ((x7654
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7654))))
                          (x7651
                           (letrec*
                            ((x7652
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7652)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7653 x7651)))))))
                   g7648)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7658)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7657)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7656)))))
                   g7655)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7659
                     (letrec*
                      ((x7660
                        (letrec*
                         ((x7661
                           (letrec*
                            ((x7662
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7662)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7661)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7660)))))
                   g7659)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7665))))
                    (g7664
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7666)))))
                   g7664)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7667
                     (letrec*
                      ((x7668
                        (letrec*
                         ((x7669
                           (letrec*
                            ((x7670
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7670)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7669)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7668)))))
                   g7667)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7671
                     (letrec*
                      ((x7674
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7674))))
                    (g7672
                     (letrec*
                      ((x7675
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7675))))
                    (g7673
                     (letrec*
                      ((x-cnd7676
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7676
                        (letrec*
                         ((g7677
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7677)
                        (letrec*
                         ((x-cnd7678
                           (letrec*
                            ((x7679
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7679)))))
                         (if x-cnd7678
                           (letrec*
                            ((g7680
                              (letrec*
                               ((x7681
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7681)))))
                            g7680)
                           (letrec*
                            ((x-cnd7682
                              (letrec*
                               ((x7683
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7683)))))
                            (if x-cnd7682
                              (letrec*
                               ((g7684
                                 (letrec*
                                  ((x7686
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7685
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7686 x7685)))))
                               g7684)
                              (letrec*
                               ((x-cnd7687
                                 (letrec*
                                  ((x7688
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7688)))))
                               (if x-cnd7687
                                 (letrec*
                                  ((g7689
                                    (letrec*
                                     ((x7692
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7691
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7690
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7692 x7691 x7690)))))
                                  g7689)
                                 (letrec*
                                  ((x-cnd7693
                                    (letrec*
                                     ((x7694
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7694)))))
                                  (if x-cnd7693
                                    (letrec*
                                     ((g7695
                                       (letrec*
                                        ((x7699
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7698
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7697
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7696
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7699 x7698 x7697 x7696)))))
                                     g7695)
                                    (letrec*
                                     ((x-cnd7700
                                       (letrec*
                                        ((x7701
                                          (letrec*
                                           ((x7702
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7702)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7701)))))
                                     (if x-cnd7700
                                       (letrec*
                                        ((g7703
                                          (letrec*
                                           ((x7709
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7708
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7707
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7706
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7704
                                             (letrec*
                                              ((x7705
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7705)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7709
                                              x7708
                                              x7707
                                              x7706
                                              x7704)))))
                                        g7703)
                                       (letrec*
                                        ((x-cnd7710
                                          (letrec*
                                           ((x7711
                                             (letrec*
                                              ((x7712
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7712)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7711)))))
                                        (if x-cnd7710
                                          (letrec*
                                           ((g7713
                                             (letrec*
                                              ((x7721
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7720
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7719
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7718
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7716
                                                (letrec*
                                                 ((x7717
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7717))))
                                               (x7714
                                                (letrec*
                                                 ((x7715
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7715)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7721
                                                 x7720
                                                 x7719
                                                 x7718
                                                 x7716
                                                 x7714)))))
                                           g7713)
                                          (letrec*
                                           ((x-cnd7722
                                             (letrec*
                                              ((x7723
                                                (letrec*
                                                 ((x7724
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7724)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7723)))))
                                           (if x-cnd7722
                                             (letrec*
                                              ((g7725
                                                (letrec*
                                                 ((x7735
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7734
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7733
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7732
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7730
                                                   (letrec*
                                                    ((x7731
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7731))))
                                                  (x7728
                                                   (letrec*
                                                    ((x7729
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7729))))
                                                  (x7726
                                                   (letrec*
                                                    ((x7727
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7727)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7735
                                                    x7734
                                                    x7733
                                                    x7732
                                                    x7730
                                                    x7728
                                                    x7726)))))
                                              g7725)
                                             (letrec*
                                              ((g7736
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7736)))))))))))))))))))
                   g7673)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7739))))
                    (g7738
                     (letrec*
                      ((x-cnd7740
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7740
                        #f
                        (letrec*
                         ((x-cnd7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7742 e)))))
                         (if x-cnd7741
                           l
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7743)))))))))
                   g7738)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7747)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7746)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7745)))))
                   g7744)))
               (cadddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7751)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7750)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7749)))))
                   g7748)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7752
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7752)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x7755
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7755))))
                    (g7754
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7754)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7757
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7757))))
                   g7756)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7759)))))
                   g7758)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7763
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7762)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7763 x7761)))))
                      (letrec*
                       ((g7764
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7764))))
                   g7760)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7768)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x-cnd7770
                        (letrec*
                         ((x7771 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7771 c)))))
                      (if x-cnd7770
                        (letrec*
                         ((x7772 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7772)))
                        #f))))
                   g7769)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((x-cnd7776
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7776
                        #f
                        (letrec*
                         ((x-cnd7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7778 k)))))
                         (if x-cnd7777
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7779)))))))))
                   g7774)))
               (not (lambda (x) (letrec* ((g7780 (if x #f #t))) g7780)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7781
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7781)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7784))))
                    (g7783
                     (letrec*
                      ((x-cnd7785
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7785
                        #f
                        (letrec*
                         ((x-cnd7786
                           (letrec*
                            ((x7787
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7787 e)))))
                         (if x-cnd7786
                           l
                           (letrec*
                            ((x7788
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7788)))))))))
                   g7783)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7789
                     (letrec*
                      ((x7790
                        (letrec*
                         ((x7791
                           (letrec*
                            ((x7792
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7792)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7791)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7790)))))
                   g7789)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7796
                             (letrec*
                              ((x-cnd7797
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7797
                                0
                                (letrec*
                                 ((x7798
                                   (letrec*
                                    ((x7799
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7799)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7798)))))))
                           g7796))))
                      (letrec*
                       ((g7800
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7800))))
                   g7794)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7804))))
                    (g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7806
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7806))))
                   g7803)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7808)))))
                   g7807)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (letrec*
                         ((x7811
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7811)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7810)))))
                   g7809)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7814))))
                    (g7813
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7815
                        #f
                        (letrec*
                         ((x-cnd7816
                           (letrec*
                            ((x7817
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7817 k)))))
                         (if x-cnd7816
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7818
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7818)))))))))
                   g7813)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7820
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7820)))))
                   g7819)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7826)))))
                   g7823)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7827
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7828
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7828))))
                   g7827)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7833))))
                    (g7831
                     (letrec*
                      ((x-cnd7834
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7834
                        #t
                        (letrec*
                         ((x-cnd7835
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7835
                           (letrec*
                            ((g7836
                              (letrec*
                               ((x7838
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7838))))
                             (g7837
                              (letrec*
                               ((x7839
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7839)))))
                            g7837)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7831)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7842))))
                    (g7841
                     (letrec*
                      ((x-cnd7843
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7843
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7841)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7847))))
                    (g7845
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7848))))
                    (g7846
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7849
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7849))))
                   g7846)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7851
                        (letrec*
                         ((x7852
                           (letrec*
                            ((x7853
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7853)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7852)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7851)))))
                   g7850)))
               (newline (lambda () (letrec* ((g7854 #f)) g7854)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7857
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7858))))
                       (x7856
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7857 x7856)))))
                   g7855)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7861))))
                    (g7860
                     (letrec*
                      ((x7862
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7862)))))
                   g7860)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7867
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7867))))
                    (g7864
                     (letrec*
                      ((x7868
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7868))))
                    (g7865
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7870)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7869))))
                    (g7866
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7871
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7873
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7872
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7873 x7872)))))))
                   g7866)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x-cnd7875
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7875
                        a
                        (letrec*
                         ((x7876
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7876)))))))
                   g7874)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7878
                        z
                        (letrec*
                         ((x7881
                           (begin
                             (write '(funapp 1408 34))
                             (display "\n")
                             (car xs)))
                          (x7879
                           (letrec*
                            ((x7880
                              (begin
                                (write '(funapp 1410 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1410 56))
                              (display "\n")
                              (foldr f z x7880)))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (f x7881 x7879)))))))
                   g7877)))
               (map
                (lambda (f xs)
                  (letrec*
                   ((g7882
                     (letrec*
                      ((x7883
                        (letrec*
                         ((x7886
                           (begin
                             (write '(funapp 1420 34))
                             (display "\n")
                             (x ys)))
                          (x7884
                           (letrec*
                            ((x7885
                              (begin
                                (write '(funapp 1421 51))
                                (display "\n")
                                (f x))))
                            (begin
                              (write '(funapp 1421 59))
                              (display "\n")
                              (cons x7885 ys)))))
                         (begin
                           (write '(funapp 1422 26))
                           (display "\n")
                           (λ x7886 x7884)))))
                      (begin
                        (write '(funapp 1423 23))
                        (display "\n")
                        (foldr x7883 empty xs)))))
                   g7882))))
              (letrec*
               ((g7887
                 (letrec*
                  ((x7892
                    (begin
                      (write '(funapp 1429 21))
                      (display "\n")
                      ((lambda (j7330 k7331 f7332)
                         (letrec*
                          ((g7893
                            (lambda (g7327 g7328 g7329)
                              (letrec*
                               ((g7894
                                 (letrec*
                                  ((x7895
                                    (letrec*
                                     ((x7899
                                       (begin
                                         (write '(funapp 1439 38))
                                         (display "\n")
                                         ((lambda (j7335 k7336 f7337)
                                            (letrec*
                                             ((g7900
                                               (lambda (g7333 g7334)
                                                 (letrec*
                                                  ((g7901
                                                    (letrec*
                                                     ((x7902
                                                       (letrec*
                                                        ((x7904
                                                          (begin
                                                            (write
                                                             '(funapp 1449 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7335
                                                             k7336
                                                             g7333)))
                                                         (x7903
                                                          (begin
                                                            (write
                                                             '(funapp 1454 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7335
                                                             k7336
                                                             g7334))))
                                                        (begin
                                                          (write
                                                           '(funapp 1458 53))
                                                          (display "\n")
                                                          (f7337
                                                           x7904
                                                           x7903)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1459 50))
                                                       (display "\n")
                                                       (any/c
                                                        j7335
                                                        k7336
                                                        x7902)))))
                                                  g7901))))
                                             g7900))
                                          j7330
                                          k7331
                                          g7327)))
                                      (x7898
                                       (begin
                                         (write '(funapp 1465 44))
                                         (display "\n")
                                         (any/c j7330 k7331 g7328)))
                                      (x7896
                                       (letrec*
                                        ((x7897
                                          (begin
                                            (write '(funapp 1468 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1469 39))
                                          (display "\n")
                                          (x7897 j7330 k7331 g7329)))))
                                     (begin
                                       (write '(funapp 1470 36))
                                       (display "\n")
                                       (f7332 x7899 x7898 x7896)))))
                                  (begin
                                    (write '(funapp 1471 33))
                                    (display "\n")
                                    (any/c j7330 k7331 x7895)))))
                               g7894))))
                          g7893))
                       (begin (write '(funapp 1474 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1475 21))
                         (display "\n")
                         'importer)
                       foldr)))
                   (x7891 (input))
                   (x7890 (input))
                   (x7889 (input)))
                  (begin
                    (write '(funapp 1480 19))
                    (display "\n")
                    (x7892 x7891 x7890 x7889))))
                (g7888
                 (letrec*
                  ((x7907
                    (begin
                      (write '(funapp 1484 21))
                      (display "\n")
                      ((lambda (j7340 k7341 f7342)
                         (letrec*
                          ((g7908
                            (lambda (g7338 g7339)
                              (letrec*
                               ((g7909
                                 (letrec*
                                  ((x7918
                                    (begin
                                      (write '(funapp 1491 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7910
                                    (letrec*
                                     ((x7913
                                       (begin
                                         (write '(funapp 1495 38))
                                         (display "\n")
                                         ((lambda (j7344 k7345 f7346)
                                            (letrec*
                                             ((g7914
                                               (lambda (g7343)
                                                 (letrec*
                                                  ((g7915
                                                    (letrec*
                                                     ((x7916
                                                       (letrec*
                                                        ((x7917
                                                          (begin
                                                            (write
                                                             '(funapp 1505 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7344
                                                             k7345
                                                             g7343))))
                                                        (begin
                                                          (write
                                                           '(funapp 1509 53))
                                                          (display "\n")
                                                          (f7346 x7917)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1510 50))
                                                       (display "\n")
                                                       (any/c
                                                        j7344
                                                        k7345
                                                        x7916)))))
                                                  g7915))))
                                             g7914))
                                          j7340
                                          k7341
                                          g7338)))
                                      (x7911
                                       (letrec*
                                        ((x7912
                                          (begin
                                            (write '(funapp 1518 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1519 39))
                                          (display "\n")
                                          (x7912 j7340 k7341 g7339)))))
                                     (begin
                                       (write '(funapp 1520 36))
                                       (display "\n")
                                       (f7342 x7913 x7911)))))
                                  (begin
                                    (write '(funapp 1521 33))
                                    (display "\n")
                                    (x7918 j7340 k7341 x7910)))))
                               g7909))))
                          g7908))
                       (begin (write '(funapp 1524 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1525 21))
                         (display "\n")
                         'importer)
                       map)))
                   (x7906 (input))
                   (x7905 (input)))
                  (begin
                    (write '(funapp 1529 19))
                    (display "\n")
                    (x7907 x7906 x7905)))))
               g7888))))
           g7360))))
       g7358)))
    g7357)))
