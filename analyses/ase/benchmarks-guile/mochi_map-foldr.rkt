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
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7366
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7365)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7368
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7367)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7370
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7369)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7371
                     (letrec*
                      ((x-cnd7372
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7373 #t)) g7373)) g7270))))
                      (if x-cnd7372
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7371)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7376 #t)) g7376)) g7273))))
                      (if x-cnd7375
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7374)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7378
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7377)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7380
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7379)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7382
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7381)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7383
                     (lambda (k j v)
                       (letrec*
                        ((g7384
                          (letrec*
                           ((x-cnd7385
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7385
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7384))))
                   g7383)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7386
                     (lambda (k j v)
                       (letrec*
                        ((g7387
                          (letrec*
                           ((x-cnd7388
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7388
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7392
                                (letrec*
                                 ((x7393
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7393))))
                               (x7389
                                (letrec*
                                 ((x7391
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7390
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7391 k j x7390)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7392 x7389)))))))
                        g7387))))
                   g7386)))
               (any? (lambda (v) (letrec* ((g7394 #t)) g7394)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7395
                     (letrec*
                      ((x7396
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7396)))))
                   g7395)))
               (nonzero?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7397
                     (letrec*
                      ((x-cnd7398
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7399
                                (letrec*
                                 ((x7400
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7400)))))
                              g7399))
                           g7285))))
                      (if x-cnd7398
                        g7285
                        (begin
                          (write '(blame g7283 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7397)))
               (meta (lambda (v) (letrec* ((g7401 v)) g7401)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7288 k7289 f7290)
                     (letrec*
                      ((g7403
                        (lambda (g7286 g7287)
                          (letrec*
                           ((g7404
                             (letrec*
                              ((x7405
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7286)))
                                  (x7406
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7287))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7290 x7407 x7406)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7288 k7289 x7405)))))
                           g7404))))
                      g7403))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7402
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7402)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7293 k7294 f7295)
                     (letrec*
                      ((g7409
                        (lambda (g7291 g7292)
                          (letrec*
                           ((g7410
                             (letrec*
                              ((x7411
                                (letrec*
                                 ((x7413
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7291)))
                                  (x7412
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7292))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7295 x7413 x7412)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7293 k7294 x7411)))))
                           g7410))))
                      g7409))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7408
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7408)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7298 k7299 f7300)
                     (letrec*
                      ((g7415
                        (lambda (g7296 g7297)
                          (letrec*
                           ((g7416
                             (letrec*
                              ((x7417
                                (letrec*
                                 ((x7419
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7296)))
                                  (x7418
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7297))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7300 x7419 x7418)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7298 k7299 x7417)))))
                           g7416))))
                      g7415))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7414
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7414)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7303 k7304 f7305)
                     (letrec*
                      ((g7421
                        (lambda (g7301 g7302)
                          (letrec*
                           ((g7422
                             (letrec*
                              ((x7423
                                (letrec*
                                 ((x7425
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7301)))
                                  (x7424
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7302))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7305 x7425 x7424)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7303 k7304 x7423)))))
                           g7422))))
                      g7421))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7420
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7420)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7427
                        (lambda (g7306)
                          (letrec*
                           ((g7428
                             (letrec*
                              ((x7429
                                (letrec*
                                 ((x7430
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7309 x7430)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7307 k7308 x7429)))))
                           g7428))))
                      g7427))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7426
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7426)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7432
                        (lambda (g7310)
                          (letrec*
                           ((g7433
                             (letrec*
                              ((x7434
                                (letrec*
                                 ((x7435
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7313 x7435)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7311 k7312 x7434)))))
                           g7433))))
                      g7432))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7431
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7431)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7316 k7317 f7318)
                     (letrec*
                      ((g7437
                        (lambda (g7314 g7315)
                          (letrec*
                           ((g7438
                             (letrec*
                              ((x7439
                                (letrec*
                                 ((x7441
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7314)))
                                  (x7440
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7315))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7318 x7441 x7440)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7316 k7317 x7439)))))
                           g7438))))
                      g7437))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7436
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7436)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7443
                        (lambda (g7319)
                          (letrec*
                           ((g7444
                             (letrec*
                              ((x7445
                                (letrec*
                                 ((x7446
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7322 x7446)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7320 k7321 x7445)))))
                           g7444))))
                      g7443))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7442
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7442)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7325 k7326 f7327)
                     (letrec*
                      ((g7448
                        (lambda (g7323 g7324)
                          (letrec*
                           ((g7449
                             (letrec*
                              ((x7450
                                (letrec*
                                 ((x7452
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7325 k7326 g7323)))
                                  (x7451
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7325 k7326 g7324))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7327 x7452 x7451)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7325 k7326 x7450)))))
                           g7449))))
                      g7448))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7447
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7447)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7453
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7453)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7454
                     (letrec*
                      ((x7455
                        (letrec*
                         ((x7456
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7456)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7455)))))
                   g7454)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x7460
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7460))))
                    (g7458
                     (letrec*
                      ((x7461
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7461))))
                    (g7459
                     (letrec*
                      ((x-cnd7462
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7462
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7465
                           (letrec*
                            ((x7466
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7466))))
                          (x7463
                           (letrec*
                            ((x7464
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7464)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7465 x7463)))))))
                   g7459)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x7468
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7468)))))
                   g7467)))
               (cadadr
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7472)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7471)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7470)))))
                   g7469)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7476)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7475)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7474)))))
                   g7473)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7477
                     (letrec*
                      ((x7480
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7480))))
                    (g7478
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7481))))
                    (g7479
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
                       ((g7482
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7483 res))
                       g7483))))
                   g7479)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7485
                        (letrec*
                         ((x7486
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7486)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7485)))))
                   g7484)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (letrec*
                         ((x7489
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7490)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7489)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7488)))))
                   g7487)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7493
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7493))))
                    (g7492
                     (letrec*
                      ((x-cnd7494
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7494
                        #f
                        (letrec*
                         ((x-cnd7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7496 k)))))
                         (if x-cnd7495
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7497)))))))))
                   g7492)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7499)))))
                   g7498)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7500
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7502))))
                    (g7501
                     (letrec*
                      ((x-cnd7503
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7503
                        ""
                        (letrec*
                         ((x7506
                           (letrec*
                            ((x7507
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7507))))
                          (x7504
                           (letrec*
                            ((x7505
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7505)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7506 x7504)))))))
                   g7501)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7508
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7511))))
                    (g7509
                     (letrec*
                      ((x7512
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7512))))
                    (g7510
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7513
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7513))))
                   g7510)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x7515
                        (letrec*
                         ((x7516
                           (letrec*
                            ((x7517
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7517)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7516)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7515)))))
                   g7514)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7518
                     (letrec*
                      ((x7521
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7521))))
                    (g7519
                     (letrec*
                      ((x7522
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7522))))
                    (g7520
                     (letrec*
                      ((x-cnd7523
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7523
                        x
                        (letrec*
                         ((x7525
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7524
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7525 x7524)))))))
                   g7520)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7526
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7526)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7527
                     (letrec*
                      ((x-cnd7528
                        (letrec*
                         ((x7529 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7529)))))
                      (if x-cnd7528
                        (letrec*
                         ((x7530 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7530)))
                        #f))))
                   g7527)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7533))))
                    (g7532
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7534
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7535 (if val7243 val7243 #f)))
                             g7535)))))
                       g7534))))
                   g7532)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7536
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7537
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7537 9)))))
                      (letrec*
                       ((g7538
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7539
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7539 10)))))
                            (letrec*
                             ((g7540
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7541
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7541 32))))))
                             g7540)))))
                       g7538))))
                   g7536)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x7543
                        (letrec*
                         ((x7544
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7544)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7543)))))
                   g7542)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7545
                     (letrec*
                      ((x7547
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7547))))
                    (g7546
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7546)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7548 #f)) g7548)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7549
                     (letrec*
                      ((x7550
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7550)))))
                   g7549)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7551
                     (letrec*
                      ((x7553
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7553))))
                    (g7552
                     (letrec*
                      ((x-cnd7554
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7554
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7552)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7555
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7556
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7557
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7557
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7558
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7559
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7559
                                       (letrec*
                                        ((x-cnd7560
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7560
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7561
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7562
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7562
                                             (letrec*
                                              ((x-cnd7563
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7563
                                                (letrec*
                                                 ((x-cnd7564
                                                   (letrec*
                                                    ((x7566
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7565
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7566 x7565)))))
                                                 (if x-cnd7564
                                                   (letrec*
                                                    ((x7568
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7567
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7568 x7567)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7569
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7570
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7570
                                                (letrec*
                                                 ((x-cnd7571
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7571
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7572
                                                       (letrec*
                                                        ((x-cnd7573
                                                          (letrec*
                                                           ((x7574
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
                                                             (= x7574 n)))))
                                                        (if x-cnd7573
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7575
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
                                                                    ((g7576
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7577
                                                                           (letrec*
                                                                            ((x7579
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
                                                                             (x7578
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
                                                                               x7579
                                                                               x7578)))))
                                                                         (if x-cnd7577
                                                                           (letrec*
                                                                            ((x7580
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
                                                                               x7580)))
                                                                           #f)))))
                                                                    g7576))))
                                                                g7575))))
                                                           (letrec*
                                                            ((g7581
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7581))
                                                          #f))))
                                                     g7572))
                                                   #f))
                                                #f)))))
                                         g7569)))))
                                   g7561)))))
                             g7558)))))
                       g7556))))
                   g7555)))
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
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7585)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7584)))))
                      (begin
                        (write '(funapp 749 23))
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
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7589)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7588)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7587)))))
                   g7586)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7590
                     (begin
                       (write '(funapp 762 53))
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
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7593))))
                    (g7592
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7594
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7595 (if val7252 val7252 #f)))
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
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7600))))
                    (g7598
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
                       ((g7601
                         (begin
                           (write '(funapp 793 32))
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
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7603)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7607
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7607))))
                    (g7605
                     (letrec*
                      ((x7608
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7608))))
                    (g7606
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7609
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
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
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 815 23))
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
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7616)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 826 23))
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
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7619)))))
                      (begin
                        (write '(funapp 835 23))
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
                             (write '(funapp 842 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 843 23))
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
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7626))))
                    (g7624
                     (letrec*
                      ((x7627
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7627))))
                    (g7625
                     (letrec*
                      ((x7628
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
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
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7632)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7631)))))
                      (begin
                        (write '(funapp 862 23))
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
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7635))))
                    (g7634
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7634)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7636
                     (begin
                       (write '(funapp 870 53))
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
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7638)))))
                   g7637)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7640
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7640)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7643
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7643))))
                    (g7642
                     (letrec*
                      ((x-cnd7644
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7644
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7648))))
                          (x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7646)))))
                         (begin
                           (write '(funapp 892 26))
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
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 903 23))
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
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7656)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7655)))))
                      (begin
                        (write '(funapp 914 23))
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
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7659))))
                    (g7658
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
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
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7664)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7663)))))
                      (begin
                        (write '(funapp 931 23))
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
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7668))))
                    (g7666
                     (letrec*
                      ((x7669
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7669))))
                    (g7667
                     (letrec*
                      ((x-cnd7670
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7670
                        (letrec*
                         ((g7671
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7671)
                        (letrec*
                         ((x-cnd7672
                           (letrec*
                            ((x7673
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7673)))))
                         (if x-cnd7672
                           (letrec*
                            ((g7674
                              (letrec*
                               ((x7675
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7675)))))
                            g7674)
                           (letrec*
                            ((x-cnd7676
                              (letrec*
                               ((x7677
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7677)))))
                            (if x-cnd7676
                              (letrec*
                               ((g7678
                                 (letrec*
                                  ((x7680
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7679
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7680 x7679)))))
                               g7678)
                              (letrec*
                               ((x-cnd7681
                                 (letrec*
                                  ((x7682
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7682)))))
                               (if x-cnd7681
                                 (letrec*
                                  ((g7683
                                    (letrec*
                                     ((x7686
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7685
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7684
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7686 x7685 x7684)))))
                                  g7683)
                                 (letrec*
                                  ((x-cnd7687
                                    (letrec*
                                     ((x7688
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7688)))))
                                  (if x-cnd7687
                                    (letrec*
                                     ((g7689
                                       (letrec*
                                        ((x7693
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7692
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7691
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7690
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
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
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7696)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7695)))))
                                     (if x-cnd7694
                                       (letrec*
                                        ((g7697
                                          (letrec*
                                           ((x7703
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7702
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7701
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7698
                                             (letrec*
                                              ((x7699
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7699)))))
                                           (begin
                                             (write '(funapp 1011 44))
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
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7706)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7705)))))
                                        (if x-cnd7704
                                          (letrec*
                                           ((g7707
                                             (letrec*
                                              ((x7715
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7714
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7713
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7712
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7710
                                                (letrec*
                                                 ((x7711
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7711))))
                                               (x7708
                                                (letrec*
                                                 ((x7709
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7709)))))
                                              (begin
                                                (write '(funapp 1042 47))
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
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7718)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7717)))))
                                           (if x-cnd7716
                                             (letrec*
                                              ((g7719
                                                (letrec*
                                                 ((x7729
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7728
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7727
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7726
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7724
                                                   (letrec*
                                                    ((x7725
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7725))))
                                                  (x7722
                                                   (letrec*
                                                    ((x7723
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7723))))
                                                  (x7720
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7721)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
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
                                                  (write '(funapp 1089 49))
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
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7733))))
                    (g7732
                     (letrec*
                      ((x-cnd7734
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7734
                        #f
                        (letrec*
                         ((x-cnd7735
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7736 e)))))
                         (if x-cnd7735
                           l
                           (letrec*
                            ((x7737
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
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
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7741)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7740)))))
                      (begin
                        (write '(funapp 1117 23))
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
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7745)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7744)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7746
                     (begin
                       (write '(funapp 1130 53))
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
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7749))))
                    (g7748
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7748)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7751
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7753)))))
                   g7752)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7755
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x7756)))
                           #f))))
                      (letrec*
                       ((g7757
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g7757))))
                   g7754)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7759
                        (letrec*
                         ((x7760
                           (letrec*
                            ((x7761
                              (begin
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x7761)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x7760)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x7759)))))
                   g7758)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7762
                     (letrec*
                      ((x-cnd7763
                        (letrec*
                         ((x7764 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x7764 c)))))
                      (if x-cnd7763
                        (letrec*
                         ((x7765 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x7765)))
                        #f))))
                   g7762)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        #f
                        (letrec*
                         ((x-cnd7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x7771 k)))))
                         (if x-cnd7770
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x7772)))))))))
                   g7767)))
               (not (lambda (x) (letrec* ((g7773 (if x #f #t))) g7773)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7774
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g7774)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7777
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x7777))))
                    (g7776
                     (letrec*
                      ((x-cnd7778
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7778
                        #f
                        (letrec*
                         ((x-cnd7779
                           (letrec*
                            ((x7780
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x7780 e)))))
                         (if x-cnd7779
                           l
                           (letrec*
                            ((x7781
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x7781)))))))))
                   g7776)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7783
                        (letrec*
                         ((x7784
                           (letrec*
                            ((x7785
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x7785)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x7784)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x7783)))))
                   g7782)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x7788))))
                    (g7787
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7789
                             (letrec*
                              ((x-cnd7790
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7790
                                0
                                (letrec*
                                 ((x7791
                                   (letrec*
                                    ((x7792
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x7792)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x7791)))))))
                           g7789))))
                      (letrec*
                       ((g7793
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g7793))))
                   g7787)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7797
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x7797))))
                    (g7795
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x7798))))
                    (g7796
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7799
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7799))))
                   g7796)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x7801)))))
                   g7800)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7803
                        (letrec*
                         ((x7804
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x7804)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x7803)))))
                   g7802)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x7807))))
                    (g7806
                     (letrec*
                      ((x-cnd7808
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7808
                        #f
                        (letrec*
                         ((x-cnd7809
                           (letrec*
                            ((x7810
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x7810 k)))))
                         (if x-cnd7809
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7811
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x7811)))))))))
                   g7806)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x7813)))))
                   g7812)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x7819)))))
                   g7816)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7821
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7821))))
                   g7820)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7822
                     (letrec*
                      ((x7825
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x7825))))
                    (g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7827
                        #t
                        (letrec*
                         ((x-cnd7828
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7828
                           (letrec*
                            ((g7829
                              (letrec*
                               ((x7831
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x7831))))
                             (g7830
                              (letrec*
                               ((x7832
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x7832)))))
                            g7830)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g7824)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7835
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x7835))))
                    (g7834
                     (letrec*
                      ((x-cnd7836
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7836
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7834)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x7840))))
                    (g7838
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x7841))))
                    (g7839
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7842
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7842))))
                   g7839)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7844
                        (letrec*
                         ((x7845
                           (letrec*
                            ((x7846
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7846)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7845)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x7844)))))
                   g7843)))
               (newline (lambda () (letrec* ((g7847 #f)) g7847)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x7851))))
                       (x7849
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x7850 x7849)))))
                   g7848)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7852
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x7854))))
                    (g7853
                     (letrec*
                      ((x7855
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x7855)))))
                   g7853)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7860
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x7860))))
                    (g7857
                     (letrec*
                      ((x7861
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x7861))))
                    (g7858
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x7863)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x7862))))
                    (g7859
                     (letrec*
                      ((x-cnd7864
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7864
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7866
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x7865
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x7866 x7865)))))))
                   g7859)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7867
                     (letrec*
                      ((x-cnd7868
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7868
                        a
                        (letrec*
                         ((x7869
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x7869)))))))
                   g7867)))
               (foldr
                (lambda (f z xs)
                  (letrec*
                   ((g7870
                     (letrec*
                      ((x-cnd7871
                        (begin
                          (write '(funapp 1420 35))
                          (display "\n")
                          (empty? xs))))
                      (if x-cnd7871
                        z
                        (letrec*
                         ((x7874
                           (begin
                             (write '(funapp 1424 34))
                             (display "\n")
                             (car xs)))
                          (x7872
                           (letrec*
                            ((x7873
                              (begin
                                (write '(funapp 1426 45))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 1426 56))
                              (display "\n")
                              (foldr f z x7873)))))
                         (begin
                           (write '(funapp 1427 26))
                           (display "\n")
                           (f x7874 x7872)))))))
                   g7870)))
               (map
                (lambda (f xs)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7876
                        (letrec*
                         ((x7879
                           (begin
                             (write '(funapp 1436 34))
                             (display "\n")
                             (x ys)))
                          (x7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 1437 51))
                                (display "\n")
                                (f x))))
                            (begin
                              (write '(funapp 1437 59))
                              (display "\n")
                              (cons x7878 ys)))))
                         (begin
                           (write '(funapp 1438 26))
                           (display "\n")
                           (λ x7879 x7877)))))
                      (begin
                        (write '(funapp 1439 23))
                        (display "\n")
                        (foldr x7876 empty xs)))))
                   g7875))))
              (letrec*
               ((g7880
                 (letrec*
                  ((x7885
                    (begin
                      (write '(funapp 1445 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7886
                            (lambda (g7328 g7329 g7330)
                              (letrec*
                               ((g7887
                                 (letrec*
                                  ((x7888
                                    (letrec*
                                     ((x7892
                                       (begin
                                         (write '(funapp 1455 38))
                                         (display "\n")
                                         ((lambda (j7336 k7337 f7338)
                                            (letrec*
                                             ((g7893
                                               (lambda (g7334 g7335)
                                                 (letrec*
                                                  ((g7894
                                                    (letrec*
                                                     ((x7895
                                                       (letrec*
                                                        ((x7897
                                                          (begin
                                                            (write
                                                             '(funapp 1465 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7336
                                                             k7337
                                                             g7334)))
                                                         (x7896
                                                          (begin
                                                            (write
                                                             '(funapp 1470 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7336
                                                             k7337
                                                             g7335))))
                                                        (begin
                                                          (write
                                                           '(funapp 1474 53))
                                                          (display "\n")
                                                          (f7338
                                                           x7897
                                                           x7896)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1475 50))
                                                       (display "\n")
                                                       (any/c
                                                        j7336
                                                        k7337
                                                        x7895)))))
                                                  g7894))))
                                             g7893))
                                          j7331
                                          k7332
                                          g7328)))
                                      (x7891
                                       (begin
                                         (write '(funapp 1481 44))
                                         (display "\n")
                                         (any/c j7331 k7332 g7329)))
                                      (x7889
                                       (letrec*
                                        ((x7890
                                          (begin
                                            (write '(funapp 1484 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1485 39))
                                          (display "\n")
                                          (x7890 j7331 k7332 g7330)))))
                                     (begin
                                       (write '(funapp 1486 36))
                                       (display "\n")
                                       (f7333 x7892 x7891 x7889)))))
                                  (begin
                                    (write '(funapp 1487 33))
                                    (display "\n")
                                    (any/c j7331 k7332 x7888)))))
                               g7887))))
                          g7886))
                       (begin (write '(funapp 1490 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1491 21))
                         (display "\n")
                         'importer)
                       foldr)))
                   (x7884 (input))
                   (x7883 (input))
                   (x7882 (input)))
                  (begin
                    (write '(funapp 1496 19))
                    (display "\n")
                    (x7885 x7884 x7883 x7882))))
                (g7881
                 (letrec*
                  ((x7900
                    (begin
                      (write '(funapp 1500 21))
                      (display "\n")
                      ((lambda (j7341 k7342 f7343)
                         (letrec*
                          ((g7901
                            (lambda (g7339 g7340)
                              (letrec*
                               ((g7902
                                 (letrec*
                                  ((x7911
                                    (begin
                                      (write '(funapp 1507 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7903
                                    (letrec*
                                     ((x7906
                                       (begin
                                         (write '(funapp 1511 38))
                                         (display "\n")
                                         ((lambda (j7345 k7346 f7347)
                                            (letrec*
                                             ((g7907
                                               (lambda (g7344)
                                                 (letrec*
                                                  ((g7908
                                                    (letrec*
                                                     ((x7909
                                                       (letrec*
                                                        ((x7910
                                                          (begin
                                                            (write
                                                             '(funapp 1521 55))
                                                            (display "\n")
                                                            (any/c
                                                             j7345
                                                             k7346
                                                             g7344))))
                                                        (begin
                                                          (write
                                                           '(funapp 1525 53))
                                                          (display "\n")
                                                          (f7347 x7910)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1526 50))
                                                       (display "\n")
                                                       (any/c
                                                        j7345
                                                        k7346
                                                        x7909)))))
                                                  g7908))))
                                             g7907))
                                          j7341
                                          k7342
                                          g7339)))
                                      (x7904
                                       (letrec*
                                        ((x7905
                                          (begin
                                            (write '(funapp 1534 47))
                                            (display "\n")
                                            (listof any/c))))
                                        (begin
                                          (write '(funapp 1535 39))
                                          (display "\n")
                                          (x7905 j7341 k7342 g7340)))))
                                     (begin
                                       (write '(funapp 1536 36))
                                       (display "\n")
                                       (f7343 x7906 x7904)))))
                                  (begin
                                    (write '(funapp 1537 33))
                                    (display "\n")
                                    (x7911 j7341 k7342 x7903)))))
                               g7902))))
                          g7901))
                       (begin (write '(funapp 1540 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1541 21))
                         (display "\n")
                         'importer)
                       map)))
                   (x7899 (input))
                   (x7898 (input)))
                  (begin
                    (write '(funapp 1545 19))
                    (display "\n")
                    (x7900 x7899 x7898)))))
               g7881))))
           g7361))))
       g7359)))
    g7358)))
