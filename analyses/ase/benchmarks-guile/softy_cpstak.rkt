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
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7351
                     (letrec*
                      ((x-cnd7352
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7352
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7351)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7354
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7353)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7356
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7355)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7359 #t)) g7359)) g7270))))
                      (if x-cnd7358
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7357)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7362 #t)) g7362)) g7273))))
                      (if x-cnd7361
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7360)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7364
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7363)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7366
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7365)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7367
                     (letrec*
                      ((x-cnd7368
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7368
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
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
                (lambda (g7283 g7284 g7285)
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
                           g7285))))
                      (if x-cnd7384
                        g7285
                        (begin
                          (write '(blame g7283 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7383)))
               (meta (lambda (v) (letrec* ((g7387 v)) g7387)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7288 k7289 f7290)
                     (letrec*
                      ((g7389
                        (lambda (g7286 g7287)
                          (letrec*
                           ((g7390
                             (letrec*
                              ((x7391
                                (letrec*
                                 ((x7393
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7286)))
                                  (x7392
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7287))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7290 x7393 x7392)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7288 k7289 x7391)))))
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
                  ((lambda (j7293 k7294 f7295)
                     (letrec*
                      ((g7395
                        (lambda (g7291 g7292)
                          (letrec*
                           ((g7396
                             (letrec*
                              ((x7397
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7291)))
                                  (x7398
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7292))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7295 x7399 x7398)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7293 k7294 x7397)))))
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
                  ((lambda (j7298 k7299 f7300)
                     (letrec*
                      ((g7401
                        (lambda (g7296 g7297)
                          (letrec*
                           ((g7402
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7296)))
                                  (x7404
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7297))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7300 x7405 x7404)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7298 k7299 x7403)))))
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
                  ((lambda (j7303 k7304 f7305)
                     (letrec*
                      ((g7407
                        (lambda (g7301 g7302)
                          (letrec*
                           ((g7408
                             (letrec*
                              ((x7409
                                (letrec*
                                 ((x7411
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7301)))
                                  (x7410
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7302))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7305 x7411 x7410)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7303 k7304 x7409)))))
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
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7413
                        (lambda (g7306)
                          (letrec*
                           ((g7414
                             (letrec*
                              ((x7415
                                (letrec*
                                 ((x7416
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7309 x7416)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7307 k7308 x7415)))))
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
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7418
                        (lambda (g7310)
                          (letrec*
                           ((g7419
                             (letrec*
                              ((x7420
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7313 x7421)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7311 k7312 x7420)))))
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
                  ((lambda (j7316 k7317 f7318)
                     (letrec*
                      ((g7423
                        (lambda (g7314 g7315)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7427
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7314)))
                                  (x7426
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7315))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7318 x7427 x7426)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7316 k7317 x7425)))))
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
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7429
                        (lambda (g7319)
                          (letrec*
                           ((g7430
                             (letrec*
                              ((x7431
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7322 x7432)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7320 k7321 x7431)))))
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
                  ((lambda (j7325 k7326 f7327)
                     (letrec*
                      ((g7434
                        (lambda (g7323 g7324)
                          (letrec*
                           ((g7435
                             (letrec*
                              ((x7436
                                (letrec*
                                 ((x7438
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7325 k7326 g7323)))
                                  (x7437
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7325 k7326 g7324))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7327 x7438 x7437)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7325 k7326 x7436)))))
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
                               ((x-cnd7543
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7543
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7544
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7545
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7545
                                       (letrec*
                                        ((x-cnd7546
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7546
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7547
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7548
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7548
                                             (letrec*
                                              ((x-cnd7549
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7549
                                                (letrec*
                                                 ((x-cnd7550
                                                   (letrec*
                                                    ((x7552
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7551
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7552 x7551)))))
                                                 (if x-cnd7550
                                                   (letrec*
                                                    ((x7554
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7553
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7554 x7553)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7555
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7556
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7556
                                                (letrec*
                                                 ((x-cnd7557
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7557
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7558
                                                       (letrec*
                                                        ((x-cnd7559
                                                          (letrec*
                                                           ((x7560
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
                                                             (= x7560 n)))))
                                                        (if x-cnd7559
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7561
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
                                                                    ((g7562
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7563
                                                                           (letrec*
                                                                            ((x7565
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
                                                                             (x7564
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
                                                                               x7565
                                                                               x7564)))))
                                                                         (if x-cnd7563
                                                                           (letrec*
                                                                            ((x7566
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
                                                                               x7566)))
                                                                           #f)))))
                                                                    g7562))))
                                                                g7561))))
                                                           (letrec*
                                                            ((g7567
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7567))
                                                          #f))))
                                                     g7558))
                                                   #f))
                                                #f)))))
                                         g7555)))))
                                   g7547)))))
                             g7544)))))
                       g7542))))
                   g7541)))
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
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7571)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7570)))))
                      (begin
                        (write '(funapp 749 23))
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
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7575)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7574)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7573)))))
                   g7572)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7576
                     (begin
                       (write '(funapp 762 53))
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
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7579))))
                    (g7578
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7580
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7581 (if val7252 val7252 #f)))
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
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7585))))
                    (g7583
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7586))))
                    (g7584
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
                       ((g7587
                         (begin
                           (write '(funapp 793 32))
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
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7589)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7595
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
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
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7598)))))
                      (begin
                        (write '(funapp 815 23))
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
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7602)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7601)))))
                      (begin
                        (write '(funapp 826 23))
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
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7605)))))
                      (begin
                        (write '(funapp 835 23))
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
                             (write '(funapp 842 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 843 23))
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
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7612))))
                    (g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
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
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7618)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7617)))))
                      (begin
                        (write '(funapp 862 23))
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
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7621))))
                    (g7620
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7620)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7622
                     (begin
                       (write '(funapp 870 53))
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
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7625)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7624)))))
                   g7623)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7626
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7626)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7629
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7629))))
                    (g7628
                     (letrec*
                      ((x-cnd7630
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7630
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7634))))
                          (x7631
                           (letrec*
                            ((x7632
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7632)))))
                         (begin
                           (write '(funapp 892 26))
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
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7638)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7637)))))
                      (begin
                        (write '(funapp 903 23))
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
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7642)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7641)))))
                      (begin
                        (write '(funapp 914 23))
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
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7645))))
                    (g7644
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
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
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7650)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7649)))))
                      (begin
                        (write '(funapp 931 23))
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
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7654))))
                    (g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((x-cnd7656
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7656
                        (letrec*
                         ((g7657
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7657)
                        (letrec*
                         ((x-cnd7658
                           (letrec*
                            ((x7659
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7659)))))
                         (if x-cnd7658
                           (letrec*
                            ((g7660
                              (letrec*
                               ((x7661
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7661)))))
                            g7660)
                           (letrec*
                            ((x-cnd7662
                              (letrec*
                               ((x7663
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7663)))))
                            (if x-cnd7662
                              (letrec*
                               ((g7664
                                 (letrec*
                                  ((x7666
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7665
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7666 x7665)))))
                               g7664)
                              (letrec*
                               ((x-cnd7667
                                 (letrec*
                                  ((x7668
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7668)))))
                               (if x-cnd7667
                                 (letrec*
                                  ((g7669
                                    (letrec*
                                     ((x7672
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7671
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7670
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7672 x7671 x7670)))))
                                  g7669)
                                 (letrec*
                                  ((x-cnd7673
                                    (letrec*
                                     ((x7674
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7674)))))
                                  (if x-cnd7673
                                    (letrec*
                                     ((g7675
                                       (letrec*
                                        ((x7679
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7678
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7677
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7676
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
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
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7682)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7681)))))
                                     (if x-cnd7680
                                       (letrec*
                                        ((g7683
                                          (letrec*
                                           ((x7689
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7688
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7687
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7686
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7684
                                             (letrec*
                                              ((x7685
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7685)))))
                                           (begin
                                             (write '(funapp 1011 44))
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
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7692)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7691)))))
                                        (if x-cnd7690
                                          (letrec*
                                           ((g7693
                                             (letrec*
                                              ((x7701
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7700
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7699
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7698
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7696
                                                (letrec*
                                                 ((x7697
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7697))))
                                               (x7694
                                                (letrec*
                                                 ((x7695
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7695)))))
                                              (begin
                                                (write '(funapp 1042 47))
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
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7704)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7703)))))
                                           (if x-cnd7702
                                             (letrec*
                                              ((g7705
                                                (letrec*
                                                 ((x7715
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7714
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7713
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7712
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7710
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7711))))
                                                  (x7708
                                                   (letrec*
                                                    ((x7709
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7709))))
                                                  (x7706
                                                   (letrec*
                                                    ((x7707
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7707)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
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
                                                  (write '(funapp 1089 49))
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
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7719))))
                    (g7718
                     (letrec*
                      ((x-cnd7720
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7720
                        #f
                        (letrec*
                         ((x-cnd7721
                           (letrec*
                            ((x7722
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7722 e)))))
                         (if x-cnd7721
                           l
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
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
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7727)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7726)))))
                      (begin
                        (write '(funapp 1117 23))
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
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7730)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7729)))))
                   g7728)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7732
                     (begin
                       (write '(funapp 1130 53))
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
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7735))))
                    (g7734
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7734)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7736
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7737
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
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
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7741
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x7742)))
                           #f))))
                      (letrec*
                       ((g7743
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g7743))))
                   g7740)))
               (cddaar
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
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x7747)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x7746)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x7745)))))
                   g7744)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x-cnd7749
                        (letrec*
                         ((x7750 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x7750 c)))))
                      (if x-cnd7749
                        (letrec*
                         ((x7751 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x7751)))
                        #f))))
                   g7748)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7752
                     (letrec*
                      ((x7754
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x7754))))
                    (g7753
                     (letrec*
                      ((x-cnd7755
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7755
                        #f
                        (letrec*
                         ((x-cnd7756
                           (letrec*
                            ((x7757
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x7757 k)))))
                         (if x-cnd7756
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x7758)))))))))
                   g7753)))
               (not (lambda (x) (letrec* ((g7759 (if x #f #t))) g7759)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7760
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g7760)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7761
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x7763))))
                    (g7762
                     (letrec*
                      ((x-cnd7764
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7764
                        #f
                        (letrec*
                         ((x-cnd7765
                           (letrec*
                            ((x7766
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x7766 e)))))
                         (if x-cnd7765
                           l
                           (letrec*
                            ((x7767
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x7767)))))))))
                   g7762)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7769
                        (letrec*
                         ((x7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x7771)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x7770)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x7769)))))
                   g7768)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7775
                             (letrec*
                              ((x-cnd7776
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7776
                                0
                                (letrec*
                                 ((x7777
                                   (letrec*
                                    ((x7778
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x7778)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x7777)))))))
                           g7775))))
                      (letrec*
                       ((g7779
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g7779))))
                   g7773)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7780
                     (letrec*
                      ((x7783
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x7783))))
                    (g7781
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x7784))))
                    (g7782
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7785
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7785))))
                   g7782)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7787
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x7787)))))
                   g7786)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x7790)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x7789)))))
                   g7788)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x7793))))
                    (g7792
                     (letrec*
                      ((x-cnd7794
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7794
                        #f
                        (letrec*
                         ((x-cnd7795
                           (letrec*
                            ((x7796
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x7796 k)))))
                         (if x-cnd7795
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7797
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x7797)))))))))
                   g7792)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x7799)))))
                   g7798)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7803
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x7803))))
                    (g7801
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x7804))))
                    (g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x7805)))))
                   g7802)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7807
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7807))))
                   g7806)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x7812))))
                    (g7810
                     (letrec*
                      ((x-cnd7813
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7813
                        #t
                        (letrec*
                         ((x-cnd7814
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7814
                           (letrec*
                            ((g7815
                              (letrec*
                               ((x7817
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x7817))))
                             (g7816
                              (letrec*
                               ((x7818
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x7818)))))
                            g7816)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g7810)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7821
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x7821))))
                    (g7820
                     (letrec*
                      ((x-cnd7822
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7822
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7820)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7823
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x7826))))
                    (g7824
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x7827))))
                    (g7825
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7828
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7828))))
                   g7825)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7830
                        (letrec*
                         ((x7831
                           (letrec*
                            ((x7832
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x7832)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x7831)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x7830)))))
                   g7829)))
               (newline (lambda () (letrec* ((g7833 #f)) g7833)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7836
                        (letrec*
                         ((x7837
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x7837))))
                       (x7835
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x7836 x7835)))))
                   g7834)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7838
                     (letrec*
                      ((x7840
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x7840))))
                    (g7839
                     (letrec*
                      ((x7841
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x7841)))))
                   g7839)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x7846))))
                    (g7843
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x7847))))
                    (g7844
                     (letrec*
                      ((x7848
                        (letrec*
                         ((x7849
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x7849)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x7848))))
                    (g7845
                     (letrec*
                      ((x-cnd7850
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7850
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7852
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x7851
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x7852 x7851)))))))
                   g7845)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x-cnd7854
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7854
                        a
                        (letrec*
                         ((x7855
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x7855)))))))
                   g7853)))
               (tak
                (lambda (x y z k)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x-cnd7857
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1420 52))
                             (display "\n")
                             (< y x))))
                         (begin
                           (write '(funapp 1420 62))
                           (display "\n")
                           (not x7858)))))
                      (if x-cnd7857
                        (begin (write '(funapp 1422 25)) (display "\n") (k z))
                        (letrec*
                         ((x7864
                           (begin
                             (write '(funapp 1424 34))
                             (display "\n")
                             (- x 1))))
                         (begin
                           (write '(funapp 1425 26))
                           (display "\n")
                           (tak
                            x7864
                            y
                            z
                            (lambda (v1)
                              (letrec*
                               ((g7859
                                 (letrec*
                                  ((x7863
                                    (begin
                                      (write '(funapp 1433 41))
                                      (display "\n")
                                      (- y 1))))
                                  (begin
                                    (write '(funapp 1434 33))
                                    (display "\n")
                                    (tak
                                     x7863
                                     z
                                     x
                                     (lambda (v2)
                                       (letrec*
                                        ((g7860
                                          (letrec*
                                           ((x7862
                                             (begin
                                               (write '(funapp 1442 48))
                                               (display "\n")
                                               (- z 1))))
                                           (begin
                                             (write '(funapp 1443 40))
                                             (display "\n")
                                             (tak
                                              x7862
                                              x
                                              y
                                              (lambda (v3)
                                                (letrec*
                                                 ((g7861
                                                   (begin
                                                     (write '(funapp 1449 52))
                                                     (display "\n")
                                                     (tak v1 v2 v3 k))))
                                                 g7861)))))))
                                        g7860)))))))
                               g7859)))))))))
                   g7856)))
               (tak-main
                (lambda (x y z)
                  (letrec*
                   ((g7865
                     (letrec*
                      ((x7866
                        (letrec*
                         ((x7867
                           (begin
                             (write '(funapp 1459 48))
                             (display "\n")
                             (x))))
                         (begin
                           (write '(funapp 1459 54))
                           (display "\n")
                           (λ x7867 x)))))
                      (begin
                        (write '(funapp 1460 23))
                        (display "\n")
                        (tak x y z x7866)))))
                   g7865))))
              (letrec*
               ((g7868
                 (letrec*
                  ((x7872
                    (begin
                      (write '(funapp 1466 21))
                      (display "\n")
                      ((lambda (j7331 k7332 f7333)
                         (letrec*
                          ((g7873
                            (lambda (g7328 g7329 g7330)
                              (letrec*
                               ((g7874
                                 (letrec*
                                  ((x7875
                                    (letrec*
                                     ((x7878
                                       (begin
                                         (write '(funapp 1475 44))
                                         (display "\n")
                                         (integer?/c j7331 k7332 g7328)))
                                      (x7877
                                       (begin
                                         (write '(funapp 1476 44))
                                         (display "\n")
                                         (integer?/c j7331 k7332 g7329)))
                                      (x7876
                                       (begin
                                         (write '(funapp 1477 44))
                                         (display "\n")
                                         (integer?/c j7331 k7332 g7330))))
                                     (begin
                                       (write '(funapp 1478 36))
                                       (display "\n")
                                       (f7333 x7878 x7877 x7876)))))
                                  (begin
                                    (write '(funapp 1479 33))
                                    (display "\n")
                                    (integer?/c j7331 k7332 x7875)))))
                               g7874))))
                          g7873))
                       (begin (write '(funapp 1482 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1483 21))
                         (display "\n")
                         'importer)
                       tak-main)))
                   (x7871 (input))
                   (x7870 (input))
                   (x7869 (input)))
                  (begin
                    (write '(funapp 1488 19))
                    (display "\n")
                    (x7872 x7871 x7870 x7869)))))
               g7868))))
           g7347))))
       g7345)))
    g7344)))
