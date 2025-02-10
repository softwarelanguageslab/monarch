(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7346 #t)) g7346)))
    (meta (lambda (v) (letrec* ((g7347 v)) g7347)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7348
          (letrec*
           ((g7349
             (letrec*
              ((x-e7350 lst))
              (letrec*
               ((v1742 x-e7350))
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
                   ((x-cnd7351
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7351
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
           g7349)))
        g7348)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7352 (lambda (v) (letrec* ((g7353 v)) g7353)))) g7352)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7354
          (letrec*
           ((x7355 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7355)))))
        g7354))))
   (letrec*
    ((g7356
      (letrec*
       ((g7357
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
           ((g7358 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7359
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7360
                     (lambda (k j lst)
                       (letrec*
                        ((g7361
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7362
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7362))
                             lst))))
                        g7361))))
                   g7360)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7364
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7363)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7366
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7365)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7368
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7367)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7371 #t)) g7371)) g7270))))
                      (if x-cnd7370
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7369)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7374 #t)) g7374)) g7273))))
                      (if x-cnd7373
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7372)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x-cnd7376
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7376
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7375)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7378
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7377)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x-cnd7380
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7380
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7379)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7381
                     (lambda (k j v)
                       (letrec*
                        ((g7382
                          (letrec*
                           ((x-cnd7383
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7383
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7382))))
                   g7381)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7384
                     (lambda (k j v)
                       (letrec*
                        ((g7385
                          (letrec*
                           ((x-cnd7386
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7386
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7390
                                (letrec*
                                 ((x7391
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7391))))
                               (x7387
                                (letrec*
                                 ((x7389
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7388
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7389 k j x7388)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7390 x7387)))))))
                        g7385))))
                   g7384)))
               (any? (lambda (v) (letrec* ((g7392 #t)) g7392)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7393
                     (letrec*
                      ((x7394
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7394)))))
                   g7393)))
               (nonzero?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7395
                     (letrec*
                      ((x-cnd7396
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7397
                                (letrec*
                                 ((x7398
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7398)))))
                              g7397))
                           g7285))))
                      (if x-cnd7396
                        g7285
                        (begin
                          (write '(blame g7283 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7395)))
               (meta (lambda (v) (letrec* ((g7399 v)) g7399)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7288 k7289 f7290)
                     (letrec*
                      ((g7401
                        (lambda (g7286 g7287)
                          (letrec*
                           ((g7402
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7286)))
                                  (x7404
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7287))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7290 x7405 x7404)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7288 k7289 x7403)))))
                           g7402))))
                      g7401))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7400
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7400)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7293 k7294 f7295)
                     (letrec*
                      ((g7407
                        (lambda (g7291 g7292)
                          (letrec*
                           ((g7408
                             (letrec*
                              ((x7409
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7291)))
                                  (x7410
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7292))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7295 x7411 x7410)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7293 k7294 x7409)))))
                           g7408))))
                      g7407))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7406
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7406)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7298 k7299 f7300)
                     (letrec*
                      ((g7413
                        (lambda (g7296 g7297)
                          (letrec*
                           ((g7414
                             (letrec*
                              ((x7415
                                (letrec*
                                 ((x7417
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7296)))
                                  (x7416
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7297))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7300 x7417 x7416)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7298 k7299 x7415)))))
                           g7414))))
                      g7413))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7412
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7412)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7303 k7304 f7305)
                     (letrec*
                      ((g7419
                        (lambda (g7301 g7302)
                          (letrec*
                           ((g7420
                             (letrec*
                              ((x7421
                                (letrec*
                                 ((x7423
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7301)))
                                  (x7422
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7302))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7305 x7423 x7422)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7303 k7304 x7421)))))
                           g7420))))
                      g7419))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7418
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7418)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7425
                        (lambda (g7306)
                          (letrec*
                           ((g7426
                             (letrec*
                              ((x7427
                                (letrec*
                                 ((x7428
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7309 x7428)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7307 k7308 x7427)))))
                           g7426))))
                      g7425))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7424
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7424)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7430
                        (lambda (g7310)
                          (letrec*
                           ((g7431
                             (letrec*
                              ((x7432
                                (letrec*
                                 ((x7433
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7313 x7433)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7311 k7312 x7432)))))
                           g7431))))
                      g7430))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7429
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7429)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7316 k7317 f7318)
                     (letrec*
                      ((g7435
                        (lambda (g7314 g7315)
                          (letrec*
                           ((g7436
                             (letrec*
                              ((x7437
                                (letrec*
                                 ((x7439
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7314)))
                                  (x7438
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7315))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7318 x7439 x7438)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7316 k7317 x7437)))))
                           g7436))))
                      g7435))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7434
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7434)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7441
                        (lambda (g7319)
                          (letrec*
                           ((g7442
                             (letrec*
                              ((x7443
                                (letrec*
                                 ((x7444
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7322 x7444)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7320 k7321 x7443)))))
                           g7442))))
                      g7441))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7440
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7440)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7325 k7326 f7327)
                     (letrec*
                      ((g7446
                        (lambda (g7323 g7324)
                          (letrec*
                           ((g7447
                             (letrec*
                              ((x7448
                                (letrec*
                                 ((x7450
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7325 k7326 g7323)))
                                  (x7449
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7325 k7326 g7324))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7327 x7450 x7449)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7325 k7326 x7448)))))
                           g7447))))
                      g7446))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7445
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7445)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7451
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7451)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x7453
                        (letrec*
                         ((x7454
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7454)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7453)))))
                   g7452)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x7458
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7458))))
                    (g7456
                     (letrec*
                      ((x7459
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7459))))
                    (g7457
                     (letrec*
                      ((x-cnd7460
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7460
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7463
                           (letrec*
                            ((x7464
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7464))))
                          (x7461
                           (letrec*
                            ((x7462
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7462)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7463 x7461)))))))
                   g7457)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x7466
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7466)))))
                   g7465)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x7468
                        (letrec*
                         ((x7469
                           (letrec*
                            ((x7470
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7470)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7469)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7468)))))
                   g7467)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7474)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7473)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7472)))))
                   g7471)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7478
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7478))))
                    (g7476
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7479))))
                    (g7477
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
                       ((g7480
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7481 res))
                       g7481))))
                   g7477)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7483
                        (letrec*
                         ((x7484
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7484)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7483)))))
                   g7482)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7485
                     (letrec*
                      ((x7486
                        (letrec*
                         ((x7487
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7488)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7487)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7486)))))
                   g7485)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7491))))
                    (g7490
                     (letrec*
                      ((x-cnd7492
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7492
                        #f
                        (letrec*
                         ((x-cnd7493
                           (letrec*
                            ((x7494
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7494 k)))))
                         (if x-cnd7493
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7495)))))))))
                   g7490)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7497
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7497)))))
                   g7496)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7500))))
                    (g7499
                     (letrec*
                      ((x-cnd7501
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7501
                        ""
                        (letrec*
                         ((x7504
                           (letrec*
                            ((x7505
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7505))))
                          (x7502
                           (letrec*
                            ((x7503
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7503)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7504 x7502)))))))
                   g7499)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x7509
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7509))))
                    (g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7511
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7511))))
                   g7508)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7512
                     (letrec*
                      ((x7513
                        (letrec*
                         ((x7514
                           (letrec*
                            ((x7515
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7515)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7514)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7513)))))
                   g7512)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x7519
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7519))))
                    (g7517
                     (letrec*
                      ((x7520
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7520))))
                    (g7518
                     (letrec*
                      ((x-cnd7521
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7521
                        x
                        (letrec*
                         ((x7523
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7522
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7523 x7522)))))))
                   g7518)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7524
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7524)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x-cnd7526
                        (letrec*
                         ((x7527 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7527)))))
                      (if x-cnd7526
                        (letrec*
                         ((x7528 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7528)))
                        #f))))
                   g7525)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((x7531
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7531))))
                    (g7530
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7532
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7533 (if val7243 val7243 #f)))
                             g7533)))))
                       g7532))))
                   g7530)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7535
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7535 9)))))
                      (letrec*
                       ((g7536
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7537
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7537 10)))))
                            (letrec*
                             ((g7538
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7539
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7539 32))))))
                             g7538)))))
                       g7536))))
                   g7534)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x7541
                        (letrec*
                         ((x7542
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7542)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7541)))))
                   g7540)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((x7545
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7545))))
                    (g7544
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7544)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7546 #f)) g7546)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7547
                     (letrec*
                      ((x7548
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7548)))))
                   g7547)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7549
                     (letrec*
                      ((x7551
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7551))))
                    (g7550
                     (letrec*
                      ((x-cnd7552
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7552
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7550)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7553
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7554
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7555
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7555
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7556
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7557
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7557
                                       (letrec*
                                        ((x-cnd7558
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7558
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7559
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7560
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7560
                                             (letrec*
                                              ((x-cnd7561
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7561
                                                (letrec*
                                                 ((x-cnd7562
                                                   (letrec*
                                                    ((x7564
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7563
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7564 x7563)))))
                                                 (if x-cnd7562
                                                   (letrec*
                                                    ((x7566
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7565
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7566 x7565)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7567
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7568
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7568
                                                (letrec*
                                                 ((x-cnd7569
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7569
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7570
                                                       (letrec*
                                                        ((x-cnd7571
                                                          (letrec*
                                                           ((x7572
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
                                                             (= x7572 n)))))
                                                        (if x-cnd7571
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7573
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
                                                                    ((g7574
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7575
                                                                           (letrec*
                                                                            ((x7577
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
                                                                             (x7576
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
                                                                               x7577
                                                                               x7576)))))
                                                                         (if x-cnd7575
                                                                           (letrec*
                                                                            ((x7578
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
                                                                               x7578)))
                                                                           #f)))))
                                                                    g7574))))
                                                                g7573))))
                                                           (letrec*
                                                            ((g7579
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7579))
                                                          #f))))
                                                     g7570))
                                                   #f))
                                                #f)))))
                                         g7567)))))
                                   g7559)))))
                             g7556)))))
                       g7554))))
                   g7553)))
               (cdaaar
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
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7583)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7582)))))
                      (begin
                        (write '(funapp 749 23))
                        (display "\n")
                        (cdr x7581)))))
                   g7580)))
               (caaddr
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
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7587)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7586)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7585)))))
                   g7584)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7588
                     (begin
                       (write '(funapp 762 53))
                       (display "\n")
                       (eq? x y))))
                   g7588)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7589
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7591))))
                    (g7590
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7592
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7593 (if val7252 val7252 #f)))
                             g7593)))))
                       g7592))))
                   g7590)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7598))))
                    (g7596
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
                       ((g7599
                         (begin
                           (write '(funapp 793 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7600 res))
                       g7600))))
                   g7596)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7601
                     (begin
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7601)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7602
                     (letrec*
                      ((x7605
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7605))))
                    (g7603
                     (letrec*
                      ((x7606
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7606))))
                    (g7604
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7607
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7607))))
                   g7604)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (begin
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7610)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (cdr x7609)))))
                   g7608)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (letrec*
                            ((x7614
                              (begin
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7614)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 826 23))
                        (display "\n")
                        (cdr x7612)))))
                   g7611)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x7616
                        (letrec*
                         ((x7617
                           (begin
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7617)))))
                      (begin
                        (write '(funapp 835 23))
                        (display "\n")
                        (car x7616)))))
                   g7615)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x7619
                        (letrec*
                         ((x7620
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7620)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7619)))))
                   g7618)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7624))))
                    (g7622
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7625))))
                    (g7623
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
                        (display "\n")
                        (not x7626)))))
                   g7623)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (letrec*
                         ((x7629
                           (letrec*
                            ((x7630
                              (begin
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7630)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7628)))))
                   g7627)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7633))))
                    (g7632
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7632)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7634
                     (begin
                       (write '(funapp 870 53))
                       (display "\n")
                       (memq e l))))
                   g7634)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7635
                     (letrec*
                      ((x7636
                        (letrec*
                         ((x7637
                           (begin
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7636)))))
                   g7635)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7638
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7638)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7639
                     (letrec*
                      ((x7641
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7641))))
                    (g7640
                     (letrec*
                      ((x-cnd7642
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7642
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7645
                           (letrec*
                            ((x7646
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7646))))
                          (x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7644)))))
                         (begin
                           (write '(funapp 892 26))
                           (display "\n")
                           (append x7645 x7643)))))))
                   g7640)))
               (caaadr
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
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7650)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 903 23))
                        (display "\n")
                        (car x7648)))))
                   g7647)))
               (cddadr
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
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7654)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7653)))))
                      (begin
                        (write '(funapp 914 23))
                        (display "\n")
                        (cdr x7652)))))
                   g7651)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7657))))
                    (g7656
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
                        (display "\n")
                        (= 1 x7658)))))
                   g7656)))
               (caadar
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
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7662)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7661)))))
                      (begin
                        (write '(funapp 931 23))
                        (display "\n")
                        (car x7660)))))
                   g7659)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7663
                     (letrec*
                      ((x7666
                        (begin
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7666))))
                    (g7664
                     (letrec*
                      ((x7667
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7667))))
                    (g7665
                     (letrec*
                      ((x-cnd7668
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7668
                        (letrec*
                         ((g7669
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7669)
                        (letrec*
                         ((x-cnd7670
                           (letrec*
                            ((x7671
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7671)))))
                         (if x-cnd7670
                           (letrec*
                            ((g7672
                              (letrec*
                               ((x7673
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7673)))))
                            g7672)
                           (letrec*
                            ((x-cnd7674
                              (letrec*
                               ((x7675
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7675)))))
                            (if x-cnd7674
                              (letrec*
                               ((g7676
                                 (letrec*
                                  ((x7678
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7677
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7678 x7677)))))
                               g7676)
                              (letrec*
                               ((x-cnd7679
                                 (letrec*
                                  ((x7680
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7680)))))
                               (if x-cnd7679
                                 (letrec*
                                  ((g7681
                                    (letrec*
                                     ((x7684
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7683
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7682
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7684 x7683 x7682)))))
                                  g7681)
                                 (letrec*
                                  ((x-cnd7685
                                    (letrec*
                                     ((x7686
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7686)))))
                                  (if x-cnd7685
                                    (letrec*
                                     ((g7687
                                       (letrec*
                                        ((x7691
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7690
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7689
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7688
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
                                          (display "\n")
                                          (proc x7691 x7690 x7689 x7688)))))
                                     g7687)
                                    (letrec*
                                     ((x-cnd7692
                                       (letrec*
                                        ((x7693
                                          (letrec*
                                           ((x7694
                                             (begin
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7694)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7693)))))
                                     (if x-cnd7692
                                       (letrec*
                                        ((g7695
                                          (letrec*
                                           ((x7701
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7700
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7699
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7696
                                             (letrec*
                                              ((x7697
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7697)))))
                                           (begin
                                             (write '(funapp 1011 44))
                                             (display "\n")
                                             (proc
                                              x7701
                                              x7700
                                              x7699
                                              x7698
                                              x7696)))))
                                        g7695)
                                       (letrec*
                                        ((x-cnd7702
                                          (letrec*
                                           ((x7703
                                             (letrec*
                                              ((x7704
                                                (begin
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7704)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7703)))))
                                        (if x-cnd7702
                                          (letrec*
                                           ((g7705
                                             (letrec*
                                              ((x7713
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7712
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7711
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7710
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7708
                                                (letrec*
                                                 ((x7709
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7709))))
                                               (x7706
                                                (letrec*
                                                 ((x7707
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7707)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (proc
                                                 x7713
                                                 x7712
                                                 x7711
                                                 x7710
                                                 x7708
                                                 x7706)))))
                                           g7705)
                                          (letrec*
                                           ((x-cnd7714
                                             (letrec*
                                              ((x7715
                                                (letrec*
                                                 ((x7716
                                                   (begin
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7716)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7715)))))
                                           (if x-cnd7714
                                             (letrec*
                                              ((g7717
                                                (letrec*
                                                 ((x7727
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7726
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7725
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7724
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7722
                                                   (letrec*
                                                    ((x7723
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7723))))
                                                  (x7720
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7721))))
                                                  (x7718
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7719)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
                                                   (display "\n")
                                                   (proc
                                                    x7727
                                                    x7726
                                                    x7725
                                                    x7724
                                                    x7722
                                                    x7720
                                                    x7718)))))
                                              g7717)
                                             (letrec*
                                              ((g7728
                                                (begin
                                                  (write '(funapp 1089 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7728)))))))))))))))))))
                   g7665)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7731))))
                    (g7730
                     (letrec*
                      ((x-cnd7732
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7732
                        #f
                        (letrec*
                         ((x-cnd7733
                           (letrec*
                            ((x7734
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7734 e)))))
                         (if x-cnd7733
                           l
                           (letrec*
                            ((x7735
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
                              (display "\n")
                              (member e x7735)))))))))
                   g7730)))
               (cddddr
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
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7739)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7738)))))
                      (begin
                        (write '(funapp 1117 23))
                        (display "\n")
                        (cdr x7737)))))
                   g7736)))
               (cadddr
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
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7743)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7742)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7744
                     (begin
                       (write '(funapp 1130 53))
                       (display "\n")
                       (random 42))))
                   g7744)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((x7747
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7747))))
                    (g7746
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7746)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7749
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7749))))
                   g7748)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7751)))))
                   g7750)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7753
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x7754)))
                           #f))))
                      (letrec*
                       ((g7755
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g7755))))
                   g7752)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7756
                     (letrec*
                      ((x7757
                        (letrec*
                         ((x7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x7759)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x7758)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x7757)))))
                   g7756)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x-cnd7761
                        (letrec*
                         ((x7762 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x7762 c)))))
                      (if x-cnd7761
                        (letrec*
                         ((x7763 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x7763)))
                        #f))))
                   g7760)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7766
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x7766))))
                    (g7765
                     (letrec*
                      ((x-cnd7767
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7767
                        #f
                        (letrec*
                         ((x-cnd7768
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x7769 k)))))
                         (if x-cnd7768
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7770
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x7770)))))))))
                   g7765)))
               (not (lambda (x) (letrec* ((g7771 (if x #f #t))) g7771)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7772
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g7772)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7775
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x7775))))
                    (g7774
                     (letrec*
                      ((x-cnd7776
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7776
                        #f
                        (letrec*
                         ((x-cnd7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x7778 e)))))
                         (if x-cnd7777
                           l
                           (letrec*
                            ((x7779
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x7779)))))))))
                   g7774)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7781
                        (letrec*
                         ((x7782
                           (letrec*
                            ((x7783
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x7783)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x7782)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x7781)))))
                   g7780)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7784
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x7786))))
                    (g7785
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7787
                             (letrec*
                              ((x-cnd7788
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7788
                                0
                                (letrec*
                                 ((x7789
                                   (letrec*
                                    ((x7790
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x7790)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x7789)))))))
                           g7787))))
                      (letrec*
                       ((g7791
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g7791))))
                   g7785)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x7796))))
                    (g7794
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7797
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7797))))
                   g7794)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x7799)))))
                   g7798)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (letrec*
                         ((x7802
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x7802)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x7801)))))
                   g7800)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x7805))))
                    (g7804
                     (letrec*
                      ((x-cnd7806
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7806
                        #f
                        (letrec*
                         ((x-cnd7807
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x7808 k)))))
                         (if x-cnd7807
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7809
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x7809)))))))))
                   g7804)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x7811)))))
                   g7810)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x7817)))))
                   g7814)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7818
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7819
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7819))))
                   g7818)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x7824
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x7824))))
                    (g7822
                     (letrec*
                      ((x-cnd7825
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7825
                        #t
                        (letrec*
                         ((x-cnd7826
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7826
                           (letrec*
                            ((g7827
                              (letrec*
                               ((x7829
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x7829))))
                             (g7828
                              (letrec*
                               ((x7830
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x7830)))))
                            g7828)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g7822)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x7833))))
                    (g7832
                     (letrec*
                      ((x-cnd7834
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7834
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7832)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x7839))))
                    (g7837
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7840
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7840))))
                   g7837)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7842
                        (letrec*
                         ((x7843
                           (letrec*
                            ((x7844
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7844)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7843)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x7842)))))
                   g7841)))
               (newline (lambda () (letrec* ((g7845 #f)) g7845)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7846
                     (letrec*
                      ((x7848
                        (letrec*
                         ((x7849
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x7849))))
                       (x7847
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x7848 x7847)))))
                   g7846)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x7852))))
                    (g7851
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x7853)))))
                   g7851)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7854
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x7858))))
                    (g7855
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x7859))))
                    (g7856
                     (letrec*
                      ((x7860
                        (letrec*
                         ((x7861
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x7861)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x7860))))
                    (g7857
                     (letrec*
                      ((x-cnd7862
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7862
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7864
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x7863
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x7864 x7863)))))))
                   g7857)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x-cnd7866
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7866
                        a
                        (letrec*
                         ((x7867
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x7867)))))))
                   g7865)))
               (f
                (lambda (g)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7872
                        (begin (write '(funapp 1420 31)) (display "\n") (x y)))
                       (x7869
                        (letrec*
                         ((x7871
                           (begin
                             (write '(funapp 1423 34))
                             (display "\n")
                             (+ x 1)))
                          (x7870
                           (begin
                             (write '(funapp 1423 50))
                             (display "\n")
                             (+ y 1))))
                         (begin
                           (write '(funapp 1424 26))
                           (display "\n")
                           (g x7871 x7870)))))
                      (begin
                        (write '(funapp 1425 23))
                        (display "\n")
                        (λ x7872 x7869)))))
                   g7868)))
               (unzip
                (lambda (x k)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x-cnd7874
                        (begin
                          (write '(funapp 1432 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7874
                        (begin
                          (write '(funapp 1434 25))
                          (display "\n")
                          (k 0 0))
                        (letrec*
                         ((x7876
                           (begin
                             (write '(funapp 1436 34))
                             (display "\n")
                             (- x 1)))
                          (x7875
                           (begin
                             (write '(funapp 1436 50))
                             (display "\n")
                             (f k))))
                         (begin
                           (write '(funapp 1437 26))
                           (display "\n")
                           (unzip x7876 x7875)))))))
                   g7873)))
               (zip
                (lambda (x y)
                  (letrec*
                   ((g7877
                     (letrec*
                      ((x-cnd7878
                        (begin
                          (write '(funapp 1444 35))
                          (display "\n")
                          (= x 0))))
                      (if x-cnd7878
                        (letrec*
                         ((x-cnd7879
                           (begin
                             (write '(funapp 1446 46))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7879
                           0
                           (begin
                             (write '(funapp 1446 71))
                             (display "\n")
                             'fail)))
                        (letrec*
                         ((x-cnd7880
                           (begin
                             (write '(funapp 1448 38))
                             (display "\n")
                             (= y 0))))
                         (if x-cnd7880
                           (begin
                             (write '(funapp 1450 27))
                             (display "\n")
                             'fail)
                           (letrec*
                            ((x7881
                              (letrec*
                               ((x7883
                                 (begin
                                   (write '(funapp 1454 40))
                                   (display "\n")
                                   (- x 1)))
                                (x7882
                                 (begin
                                   (write '(funapp 1454 56))
                                   (display "\n")
                                   (- y 1))))
                               (begin
                                 (write '(funapp 1455 32))
                                 (display "\n")
                                 (zip x7883 x7882)))))
                            (begin
                              (write '(funapp 1456 29))
                              (display "\n")
                              (+ 1 x7881)))))))))
                   g7877)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7884
                     (begin
                       (write '(funapp 1458 51))
                       (display "\n")
                       (unzip n zip))))
                   g7884))))
              (letrec*
               ((g7885
                 (letrec*
                  ((x7888
                    (begin
                      (write '(funapp 1463 21))
                      (display "\n")
                      ((lambda (j7329 k7330 f7331)
                         (letrec*
                          ((g7889
                            (lambda (g7328)
                              (letrec*
                               ((g7890
                                 (letrec*
                                  ((x7891
                                    (letrec*
                                     ((x7892
                                       (begin
                                         (write '(funapp 1473 38))
                                         (display "\n")
                                         ((lambda (j7339 k7340 f7341)
                                            (letrec*
                                             ((g7893
                                               (lambda (g7337 g7338)
                                                 (letrec*
                                                  ((g7894
                                                    (letrec*
                                                     ((x7895
                                                       (letrec*
                                                        ((x7897
                                                          (begin
                                                            (write
                                                             '(funapp 1483 55))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7339
                                                             k7340
                                                             g7337)))
                                                         (x7896
                                                          (begin
                                                            (write
                                                             '(funapp 1488 55))
                                                            (display "\n")
                                                            (integer?/c
                                                             j7339
                                                             k7340
                                                             g7338))))
                                                        (begin
                                                          (write
                                                           '(funapp 1492 53))
                                                          (display "\n")
                                                          (f7341
                                                           x7897
                                                           x7896)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1493 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7339
                                                        k7340
                                                        x7895)))))
                                                  g7894))))
                                             g7893))
                                          j7329
                                          k7330
                                          g7328))))
                                     (begin
                                       (write '(funapp 1502 36))
                                       (display "\n")
                                       (f7331 x7892)))))
                                  (begin
                                    (write '(funapp 1503 33))
                                    (display "\n")
                                    ((lambda (j7334 k7335 f7336)
                                       (letrec*
                                        ((g7898
                                          (lambda (g7332 g7333)
                                            (letrec*
                                             ((g7899
                                               (letrec*
                                                ((x7900
                                                  (letrec*
                                                   ((x7902
                                                     (begin
                                                       (write
                                                        '(funapp 1513 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7334
                                                        k7335
                                                        g7332)))
                                                    (x7901
                                                     (begin
                                                       (write
                                                        '(funapp 1518 50))
                                                       (display "\n")
                                                       (integer?/c
                                                        j7334
                                                        k7335
                                                        g7333))))
                                                   (begin
                                                     (write '(funapp 1522 48))
                                                     (display "\n")
                                                     (f7336 x7902 x7901)))))
                                                (begin
                                                  (write '(funapp 1523 45))
                                                  (display "\n")
                                                  (integer?/c
                                                   j7334
                                                   k7335
                                                   x7900)))))
                                             g7899))))
                                        g7898))
                                     j7329
                                     k7330
                                     x7891)))))
                               g7890))))
                          g7889))
                       (begin (write '(funapp 1531 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1532 21))
                         (display "\n")
                         'importer)
                       f)))
                   (x7887 (input)))
                  (begin
                    (write '(funapp 1535 19))
                    (display "\n")
                    (x7888 x7887))))
                (g7886
                 (letrec*
                  ((x7904
                    (begin
                      (write '(funapp 1539 21))
                      (display "\n")
                      ((lambda (j7343 k7344 f7345)
                         (letrec*
                          ((g7905
                            (lambda (g7342)
                              (letrec*
                               ((g7906
                                 (letrec*
                                  ((x7907
                                    (letrec*
                                     ((x7908
                                       (begin
                                         (write '(funapp 1548 44))
                                         (display "\n")
                                         (integer?/c j7343 k7344 g7342))))
                                     (begin
                                       (write '(funapp 1549 36))
                                       (display "\n")
                                       (f7345 x7908)))))
                                  (begin
                                    (write '(funapp 1550 33))
                                    (display "\n")
                                    (integer?/c j7343 k7344 x7907)))))
                               g7906))))
                          g7905))
                       (begin (write '(funapp 1553 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1554 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7903 (input)))
                  (begin
                    (write '(funapp 1557 19))
                    (display "\n")
                    (x7904 x7903)))))
               g7886))))
           g7359))))
       g7357)))
    g7356)))
