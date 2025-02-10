(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7328 #t)) g7328)))
    (meta (lambda (v) (letrec* ((g7329 v)) g7329)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7330
          (letrec*
           ((g7331
             (letrec*
              ((x-e7332 lst))
              (letrec*
               ((v1742 x-e7332))
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
                   ((x-cnd7333
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7333
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
           g7331)))
        g7330)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7334 (lambda (v) (letrec* ((g7335 v)) g7335)))) g7334)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7336
          (letrec*
           ((x7337 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7337)))))
        g7336))))
   (letrec*
    ((g7338
      (letrec*
       ((g7339
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
           ((g7340 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7341
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7342
                     (lambda (k j lst)
                       (letrec*
                        ((g7343
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7344
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7344))
                             lst))))
                        g7343))))
                   g7342)))
               (real?/c
                (lambda (g7259 g7260 g7261)
                  (letrec*
                   ((g7345
                     (letrec*
                      ((x-cnd7346
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7261))))
                      (if x-cnd7346
                        g7261
                        (begin
                          (write '(blame g7259 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7259)))))))
                   g7345)))
               (boolean?/c
                (lambda (g7262 g7263 g7264)
                  (letrec*
                   ((g7347
                     (letrec*
                      ((x-cnd7348
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7264))))
                      (if x-cnd7348
                        g7264
                        (begin
                          (write '(blame g7262 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7262)))))))
                   g7347)))
               (number?/c
                (lambda (g7265 g7266 g7267)
                  (letrec*
                   ((g7349
                     (letrec*
                      ((x-cnd7350
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7267))))
                      (if x-cnd7350
                        g7267
                        (begin
                          (write '(blame g7265 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7265)))))))
                   g7349)))
               (any/c
                (lambda (g7268 g7269 g7270)
                  (letrec*
                   ((g7351
                     (letrec*
                      ((x-cnd7352
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7353 #t)) g7353)) g7270))))
                      (if x-cnd7352
                        g7270
                        (begin
                          (write '(blame g7268 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7268)))))))
                   g7351)))
               (any?/c
                (lambda (g7271 g7272 g7273)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7356 #t)) g7356)) g7273))))
                      (if x-cnd7355
                        g7273
                        (begin
                          (write '(blame g7271 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7271)))))))
                   g7354)))
               (cons?/c
                (lambda (g7274 g7275 g7276)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7276))))
                      (if x-cnd7358
                        g7276
                        (begin
                          (write '(blame g7274 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7274)))))))
                   g7357)))
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7359
                     (letrec*
                      ((x-cnd7360
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7360
                        g7279
                        (begin
                          (write '(blame g7277 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7277)))))))
                   g7359)))
               (integer?/c
                (lambda (g7280 g7281 g7282)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7362
                        g7282
                        (begin
                          (write '(blame g7280 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7361)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7363
                     (lambda (k j v)
                       (letrec*
                        ((g7364
                          (letrec*
                           ((x-cnd7365
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7365
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7364))))
                   g7363)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7366
                     (lambda (k j v)
                       (letrec*
                        ((g7367
                          (letrec*
                           ((x-cnd7368
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7368
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7372
                                (letrec*
                                 ((x7373
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7373))))
                               (x7369
                                (letrec*
                                 ((x7371
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7370
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7371 k j x7370)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7372 x7369)))))))
                        g7367))))
                   g7366)))
               (any? (lambda (v) (letrec* ((g7374 #t)) g7374)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7375
                     (letrec*
                      ((x7376
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7376)))))
                   g7375)))
               (nonzero?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7377
                     (letrec*
                      ((x-cnd7378
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7379
                                (letrec*
                                 ((x7380
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7380)))))
                              g7379))
                           g7285))))
                      (if x-cnd7378
                        g7285
                        (begin
                          (write '(blame g7283 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7377)))
               (meta (lambda (v) (letrec* ((g7381 v)) g7381)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7288 k7289 f7290)
                     (letrec*
                      ((g7383
                        (lambda (g7286 g7287)
                          (letrec*
                           ((g7384
                             (letrec*
                              ((x7385
                                (letrec*
                                 ((x7387
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7286)))
                                  (x7386
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7288 k7289 g7287))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7290 x7387 x7386)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7288 k7289 x7385)))))
                           g7384))))
                      g7383))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7382
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7382)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7293 k7294 f7295)
                     (letrec*
                      ((g7389
                        (lambda (g7291 g7292)
                          (letrec*
                           ((g7390
                             (letrec*
                              ((x7391
                                (letrec*
                                 ((x7393
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7291)))
                                  (x7392
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7293 k7294 g7292))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7295 x7393 x7392)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7293 k7294 x7391)))))
                           g7390))))
                      g7389))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7388
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7388)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7298 k7299 f7300)
                     (letrec*
                      ((g7395
                        (lambda (g7296 g7297)
                          (letrec*
                           ((g7396
                             (letrec*
                              ((x7397
                                (letrec*
                                 ((x7399
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7296)))
                                  (x7398
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7298 k7299 g7297))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7300 x7399 x7398)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7298 k7299 x7397)))))
                           g7396))))
                      g7395))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7394
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7394)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7303 k7304 f7305)
                     (letrec*
                      ((g7401
                        (lambda (g7301 g7302)
                          (letrec*
                           ((g7402
                             (letrec*
                              ((x7403
                                (letrec*
                                 ((x7405
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7301)))
                                  (x7404
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7303 k7304 g7302))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7305 x7405 x7404)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7303 k7304 x7403)))))
                           g7402))))
                      g7401))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7400
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7400)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7407
                        (lambda (g7306)
                          (letrec*
                           ((g7408
                             (letrec*
                              ((x7409
                                (letrec*
                                 ((x7410
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7309 x7410)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7307 k7308 x7409)))))
                           g7408))))
                      g7407))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7406
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7406)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7412
                        (lambda (g7310)
                          (letrec*
                           ((g7413
                             (letrec*
                              ((x7414
                                (letrec*
                                 ((x7415
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7313 x7415)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7311 k7312 x7414)))))
                           g7413))))
                      g7412))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7411
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7411)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7316 k7317 f7318)
                     (letrec*
                      ((g7417
                        (lambda (g7314 g7315)
                          (letrec*
                           ((g7418
                             (letrec*
                              ((x7419
                                (letrec*
                                 ((x7421
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7314)))
                                  (x7420
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7316 k7317 g7315))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7318 x7421 x7420)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7316 k7317 x7419)))))
                           g7418))))
                      g7417))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7416
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7416)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7423
                        (lambda (g7319)
                          (letrec*
                           ((g7424
                             (letrec*
                              ((x7425
                                (letrec*
                                 ((x7426
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7322 x7426)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7320 k7321 x7425)))))
                           g7424))))
                      g7423))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7422
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7422)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7325 k7326 f7327)
                     (letrec*
                      ((g7428
                        (lambda (g7323 g7324)
                          (letrec*
                           ((g7429
                             (letrec*
                              ((x7430
                                (letrec*
                                 ((x7432
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7325 k7326 g7323)))
                                  (x7431
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7325 k7326 g7324))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7327 x7432 x7431)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7325 k7326 x7430)))))
                           g7429))))
                      g7428))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7427
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7427)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7433
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7433)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7434
                     (letrec*
                      ((x7435
                        (letrec*
                         ((x7436
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7436)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7435)))))
                   g7434)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x7440
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7440))))
                    (g7438
                     (letrec*
                      ((x7441
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7441))))
                    (g7439
                     (letrec*
                      ((x-cnd7442
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7442
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7445
                           (letrec*
                            ((x7446
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7446))))
                          (x7443
                           (letrec*
                            ((x7444
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7444)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7445 x7443)))))))
                   g7439)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7447
                     (letrec*
                      ((x7448
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7448)))))
                   g7447)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7449
                     (letrec*
                      ((x7450
                        (letrec*
                         ((x7451
                           (letrec*
                            ((x7452
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7452)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7451)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7450)))))
                   g7449)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7453
                     (letrec*
                      ((x7454
                        (letrec*
                         ((x7455
                           (letrec*
                            ((x7456
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7456)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7455)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7454)))))
                   g7453)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x7460
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7460))))
                    (g7458
                     (letrec*
                      ((x7461
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7461))))
                    (g7459
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
                       ((g7462
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7463 res))
                       g7463))))
                   g7459)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7464
                     (letrec*
                      ((x7465
                        (letrec*
                         ((x7466
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7466)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7465)))))
                   g7464)))
               (cdaadr
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
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7470)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7469)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7468)))))
                   g7467)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7471
                     (letrec*
                      ((x7473
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7473))))
                    (g7472
                     (letrec*
                      ((x-cnd7474
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7474
                        #f
                        (letrec*
                         ((x-cnd7475
                           (letrec*
                            ((x7476
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7476 k)))))
                         (if x-cnd7475
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7477
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7477)))))))))
                   g7472)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7478
                     (letrec*
                      ((x7479
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7479)))))
                   g7478)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7482))))
                    (g7481
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7483
                        ""
                        (letrec*
                         ((x7486
                           (letrec*
                            ((x7487
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7487))))
                          (x7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7485)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7486 x7484)))))))
                   g7481)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7491))))
                    (g7489
                     (letrec*
                      ((x7492
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7492))))
                    (g7490
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7493
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7493))))
                   g7490)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7494
                     (letrec*
                      ((x7495
                        (letrec*
                         ((x7496
                           (letrec*
                            ((x7497
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7497)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7496)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7495)))))
                   g7494)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((x7502
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7502))))
                    (g7500
                     (letrec*
                      ((x-cnd7503
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7503
                        x
                        (letrec*
                         ((x7505
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7504
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7505 x7504)))))))
                   g7500)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7506
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7506)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x-cnd7508
                        (letrec*
                         ((x7509 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7509)))))
                      (if x-cnd7508
                        (letrec*
                         ((x7510 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7510)))
                        #f))))
                   g7507)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x7513
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7513))))
                    (g7512
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7514
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7515 (if val7243 val7243 #f)))
                             g7515)))))
                       g7514))))
                   g7512)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7517
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7517 9)))))
                      (letrec*
                       ((g7518
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7519
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7519 10)))))
                            (letrec*
                             ((g7520
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7521
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7521 32))))))
                             g7520)))))
                       g7518))))
                   g7516)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7522
                     (letrec*
                      ((x7523
                        (letrec*
                         ((x7524
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7524)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7523)))))
                   g7522)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x7527
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7527))))
                    (g7526
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7526)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7528 #f)) g7528)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((x7530
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7530)))))
                   g7529)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7533))))
                    (g7532
                     (letrec*
                      ((x-cnd7534
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7534
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7532)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7536
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7538
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7537
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7538 x7537)))))
                            (letrec*
                             ((g7539
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7542
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7541
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7540
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7542 x7541 x7540)))))
                                  (letrec*
                                   ((g7543
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7551
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7550
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7547
                                             (letrec*
                                              ((x7549
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7548
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7549 x7548))))
                                            (x7544
                                             (letrec*
                                              ((x7546
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7545
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7546 x7545)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7551 x7550 x7547 x7544)))))
                                        (letrec*
                                         ((g7552
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7568
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7567
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7553
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7554
                                                    (letrec*
                                                     ((x7565
                                                       (letrec*
                                                        ((x7566
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
                                                          (= x7566 n))))
                                                      (x7555
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7556
                                                               (letrec*
                                                                ((x7563
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7557
                                                                  (letrec*
                                                                   ((x7560
                                                                     (letrec*
                                                                      ((x7562
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
                                                                       (x7561
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
                                                                         x7562
                                                                         x7561))))
                                                                    (x7558
                                                                     (letrec*
                                                                      ((x7559
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
                                                                         x7559)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7560
                                                                          x7558)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7563
                                                                      x7557)))))
                                                             g7556))))
                                                        (letrec*
                                                         ((g7564
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7564))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7565 x7555)))))
                                                  g7554))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7568 x7567 x7553))))))
                                         g7552)))))
                                   g7543)))))
                             g7539)))))
                       g7536))))
                   g7535)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7569
                     (letrec*
                      ((x7570
                        (letrec*
                         ((x7571
                           (letrec*
                            ((x7572
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7572)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7571)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7570)))))
                   g7569)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7573
                     (letrec*
                      ((x7574
                        (letrec*
                         ((x7575
                           (letrec*
                            ((x7576
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7576)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7575)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7574)))))
                   g7573)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7577
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7577)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7580
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7580))))
                    (g7579
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7581
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7582 (if val7251 val7251 #f)))
                             g7582)))))
                       g7581))))
                   g7579)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7583
                     (letrec*
                      ((x7586
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7586))))
                    (g7584
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7587))))
                    (g7585
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
                       ((g7588
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7589 res))
                       g7589))))
                   g7585)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7590
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7590)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7591
                     (letrec*
                      ((x7594
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7594))))
                    (g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7596
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7596))))
                   g7593)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7598
                        (letrec*
                         ((x7599
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7599)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7598)))))
                   g7597)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (letrec*
                            ((x7603
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7603)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7606)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7605)))))
                   g7604)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7609)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7608)))))
                   g7607)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7613
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7613))))
                    (g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7615)))))
                   g7612)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (letrec*
                            ((x7619
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7619)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7622))))
                    (g7621
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7621)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7623
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7623)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7625
                        (letrec*
                         ((x7626
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7626)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7625)))))
                   g7624)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7627
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7627)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7630
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7630))))
                    (g7629
                     (letrec*
                      ((x-cnd7631
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7631
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7634
                           (letrec*
                            ((x7635
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7635))))
                          (x7632
                           (letrec*
                            ((x7633
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7633)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7634 x7632)))))))
                   g7629)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7636
                     (letrec*
                      ((x7637
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7639)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7638)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7637)))))
                   g7636)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7640
                     (letrec*
                      ((x7641
                        (letrec*
                         ((x7642
                           (letrec*
                            ((x7643
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7643)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7642)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7641)))))
                   g7640)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7646
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7646))))
                    (g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7647)))))
                   g7645)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7649
                        (letrec*
                         ((x7650
                           (letrec*
                            ((x7651
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7651)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7650)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7649)))))
                   g7648)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7655))))
                    (g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x-cnd7657
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7657
                        (letrec*
                         ((g7658
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7658)
                        (letrec*
                         ((x-cnd7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7660)))))
                         (if x-cnd7659
                           (letrec*
                            ((g7661
                              (letrec*
                               ((x7662
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7662)))))
                            g7661)
                           (letrec*
                            ((x-cnd7663
                              (letrec*
                               ((x7664
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7664)))))
                            (if x-cnd7663
                              (letrec*
                               ((g7665
                                 (letrec*
                                  ((x7667
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7666
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7667 x7666)))))
                               g7665)
                              (letrec*
                               ((x-cnd7668
                                 (letrec*
                                  ((x7669
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7669)))))
                               (if x-cnd7668
                                 (letrec*
                                  ((g7670
                                    (letrec*
                                     ((x7673
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7672
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7671
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7673 x7672 x7671)))))
                                  g7670)
                                 (letrec*
                                  ((x-cnd7674
                                    (letrec*
                                     ((x7675
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7675)))))
                                  (if x-cnd7674
                                    (letrec*
                                     ((g7676
                                       (letrec*
                                        ((x7680
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7679
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7678
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7677
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7680 x7679 x7678 x7677)))))
                                     g7676)
                                    (letrec*
                                     ((x-cnd7681
                                       (letrec*
                                        ((x7682
                                          (letrec*
                                           ((x7683
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7683)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7682)))))
                                     (if x-cnd7681
                                       (letrec*
                                        ((g7684
                                          (letrec*
                                           ((x7690
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7689
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7688
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7687
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7685
                                             (letrec*
                                              ((x7686
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7686)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7690
                                              x7689
                                              x7688
                                              x7687
                                              x7685)))))
                                        g7684)
                                       (letrec*
                                        ((x-cnd7691
                                          (letrec*
                                           ((x7692
                                             (letrec*
                                              ((x7693
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7693)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7692)))))
                                        (if x-cnd7691
                                          (letrec*
                                           ((g7694
                                             (letrec*
                                              ((x7702
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7701
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7700
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7699
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7697
                                                (letrec*
                                                 ((x7698
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7698))))
                                               (x7695
                                                (letrec*
                                                 ((x7696
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7696)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7702
                                                 x7701
                                                 x7700
                                                 x7699
                                                 x7697
                                                 x7695)))))
                                           g7694)
                                          (letrec*
                                           ((x-cnd7703
                                             (letrec*
                                              ((x7704
                                                (letrec*
                                                 ((x7705
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7705)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7704)))))
                                           (if x-cnd7703
                                             (letrec*
                                              ((g7706
                                                (letrec*
                                                 ((x7716
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7715
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7714
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7713
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7711
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7712))))
                                                  (x7709
                                                   (letrec*
                                                    ((x7710
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7710))))
                                                  (x7707
                                                   (letrec*
                                                    ((x7708
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7708)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7716
                                                    x7715
                                                    x7714
                                                    x7713
                                                    x7711
                                                    x7709
                                                    x7707)))))
                                              g7706)
                                             (letrec*
                                              ((g7717
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7717)))))))))))))))))))
                   g7654)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7720
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7720))))
                    (g7719
                     (letrec*
                      ((x-cnd7721
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7721
                        #f
                        (letrec*
                         ((x-cnd7722
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7723 e)))))
                         (if x-cnd7722
                           l
                           (letrec*
                            ((x7724
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7724)))))))))
                   g7719)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7725
                     (letrec*
                      ((x7726
                        (letrec*
                         ((x7727
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7728)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7727)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7726)))))
                   g7725)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7729
                     (letrec*
                      ((x7730
                        (letrec*
                         ((x7731
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7732)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7731)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7730)))))
                   g7729)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7733
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7733)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7736
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7736))))
                    (g7735
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7735)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7738
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7738))))
                   g7737)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7739
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7740)))))
                   g7739)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7744
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7742
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7743)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7744 x7742)))))
                      (letrec*
                       ((g7745
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7745))))
                   g7741)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7747
                        (letrec*
                         ((x7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7749)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7748)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7747)))))
                   g7746)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x-cnd7751
                        (letrec*
                         ((x7752 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7752 c)))))
                      (if x-cnd7751
                        (letrec*
                         ((x7753 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7753)))
                        #f))))
                   g7750)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7756
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7757
                        #f
                        (letrec*
                         ((x-cnd7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7759 k)))))
                         (if x-cnd7758
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7760)))))))))
                   g7755)))
               (not (lambda (x) (letrec* ((g7761 (if x #f #t))) g7761)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7762
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7762)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        #f
                        (letrec*
                         ((x-cnd7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7768 e)))))
                         (if x-cnd7767
                           l
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7769)))))))))
                   g7764)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7770
                     (letrec*
                      ((x7771
                        (letrec*
                         ((x7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7771)))))
                   g7770)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7776
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7776))))
                    (g7775
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7777
                             (letrec*
                              ((x-cnd7778
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7778
                                0
                                (letrec*
                                 ((x7779
                                   (letrec*
                                    ((x7780
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7780)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7779)))))))
                           g7777))))
                      (letrec*
                       ((g7781
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7781))))
                   g7775)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7785))))
                    (g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7787
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7787))))
                   g7784)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7789)))))
                   g7788)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7790
                     (letrec*
                      ((x7791
                        (letrec*
                         ((x7792
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7791)))))
                   g7790)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        #f
                        (letrec*
                         ((x-cnd7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7798 k)))))
                         (if x-cnd7797
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7799)))))))))
                   g7794)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7801)))))
                   g7800)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7807)))))
                   g7804)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7809
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7809))))
                   g7808)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7810
                     (letrec*
                      ((x7813
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7815
                        #t
                        (letrec*
                         ((x-cnd7816
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7816
                           (letrec*
                            ((g7817
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7819))))
                             (g7818
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7820)))))
                            g7818)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7812)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7821
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7823))))
                    (g7822
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7824
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7822)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7830
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7830))))
                   g7827)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7831
                     (letrec*
                      ((x7832
                        (letrec*
                         ((x7833
                           (letrec*
                            ((x7834
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7834)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7833)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7832)))))
                   g7831)))
               (newline (lambda () (letrec* ((g7835 #f)) g7835)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7838
                        (letrec*
                         ((x7839
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7839))))
                       (x7837
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7838 x7837)))))
                   g7836)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7842))))
                    (g7841
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7843)))))
                   g7841)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7848))))
                    (g7845
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7849))))
                    (g7846
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7851)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7850))))
                    (g7847
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7852
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7853
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7854 x7853)))))))
                   g7847)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7856
                        a
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7857)))))))
                   g7855)))
               (phi
                (letrec*
                 ((x7881 (begin (write '(funapp 1401 26)) (display "\n") (x1)))
                  (x7858
                   (letrec*
                    ((x7880
                      (begin (write '(funapp 1404 29)) (display "\n") (x2)))
                     (x7859
                      (letrec*
                       ((x7879
                         (begin (write '(funapp 1407 32)) (display "\n") (x3)))
                        (x7860
                         (letrec*
                          ((x7878
                            (begin
                              (write '(funapp 1410 35))
                              (display "\n")
                              (x4)))
                           (x7861
                            (letrec*
                             ((x7877
                               (begin
                                 (write '(funapp 1413 38))
                                 (display "\n")
                                 (x5)))
                              (x7862
                               (letrec*
                                ((x7876
                                  (begin
                                    (write '(funapp 1416 41))
                                    (display "\n")
                                    (x6)))
                                 (x7863
                                  (letrec*
                                   ((x7875
                                     (begin
                                       (write '(funapp 1419 44))
                                       (display "\n")
                                       (x7)))
                                    (x7864
                                     (letrec*
                                      ((x-cnd7865
                                        (begin
                                          (write '(funapp 1422 51))
                                          (display "\n")
                                          (or x1 x2))))
                                      (if x-cnd7865
                                        (letrec*
                                         ((x-cnd7866
                                           (letrec*
                                            ((x7868
                                              (begin
                                                (write '(funapp 1427 53))
                                                (display "\n")
                                                (not x2)))
                                             (x7867
                                              (begin
                                                (write '(funapp 1427 70))
                                                (display "\n")
                                                (not x3))))
                                            (begin
                                              (write '(funapp 1428 45))
                                              (display "\n")
                                              (or x1 x7868 x7867)))))
                                         (if x-cnd7866
                                           (letrec*
                                            ((x-cnd7869
                                              (begin
                                                (write '(funapp 1431 57))
                                                (display "\n")
                                                (or x3 x4))))
                                            (if x-cnd7869
                                              (letrec*
                                               ((x-cnd7870
                                                 (letrec*
                                                  ((x7871
                                                    (begin
                                                      (write '(funapp 1436 59))
                                                      (display "\n")
                                                      (not x4))))
                                                  (begin
                                                    (write '(funapp 1437 51))
                                                    (display "\n")
                                                    (or x7871 x1)))))
                                               (if x-cnd7870
                                                 (letrec*
                                                  ((x-cnd7872
                                                    (letrec*
                                                     ((x7874
                                                       (begin
                                                         (write
                                                          '(funapp 1442 62))
                                                         (display "\n")
                                                         (not x2)))
                                                      (x7873
                                                       (begin
                                                         (write
                                                          '(funapp 1443 62))
                                                         (display "\n")
                                                         (not x3))))
                                                     (begin
                                                       (write
                                                        '(funapp 1444 54))
                                                       (display "\n")
                                                       (or x7874 x7873)))))
                                                  (if x-cnd7872
                                                    (begin
                                                      (write '(funapp 1445 65))
                                                      (display "\n")
                                                      (or x4 x2))
                                                    #f))
                                                 #f))
                                              #f))
                                           #f))
                                        #f))))
                                   (begin
                                     (write '(funapp 1450 36))
                                     (display "\n")
                                     (λ x7875 x7864)))))
                                (begin
                                  (write '(funapp 1451 33))
                                  (display "\n")
                                  (λ x7876 x7863)))))
                             (begin
                               (write '(funapp 1452 30))
                               (display "\n")
                               (λ x7877 x7862)))))
                          (begin
                            (write '(funapp 1453 27))
                            (display "\n")
                            (λ x7878 x7861)))))
                       (begin
                         (write '(funapp 1454 24))
                         (display "\n")
                         (λ x7879 x7860)))))
                    (begin
                      (write '(funapp 1455 21))
                      (display "\n")
                      (λ x7880 x7859)))))
                 (begin
                   (write '(funapp 1456 18))
                   (display "\n")
                   (λ x7881 x7858))))
               (try
                (letrec*
                 ((x7884 (begin (write '(funapp 1459 26)) (display "\n") (f)))
                  (x7882
                   (letrec*
                    ((val7258
                      (begin (write '(funapp 1462 31)) (display "\n") (f #t))))
                    (letrec*
                     ((g7883
                       (if val7258
                         val7258
                         (begin
                           (write '(funapp 1463 58))
                           (display "\n")
                           (f #f)))))
                     g7883))))
                 (begin
                   (write '(funapp 1464 18))
                   (display "\n")
                   (λ x7884 x7882))))
               (sat-solve-7
                (letrec*
                 ((x7913 (begin (write '(funapp 1467 26)) (display "\n") (p)))
                  (x7885
                   (letrec*
                    ((x7886
                      (letrec*
                       ((x7912
                         (begin (write '(funapp 1472 32)) (display "\n") (n1)))
                        (x7887
                         (letrec*
                          ((x7888
                            (letrec*
                             ((x7911
                               (begin
                                 (write '(funapp 1477 38))
                                 (display "\n")
                                 (n2)))
                              (x7889
                               (letrec*
                                ((x7890
                                  (letrec*
                                   ((x7910
                                     (begin
                                       (write '(funapp 1482 44))
                                       (display "\n")
                                       (n3)))
                                    (x7891
                                     (letrec*
                                      ((x7892
                                        (letrec*
                                         ((x7909
                                           (begin
                                             (write '(funapp 1487 50))
                                             (display "\n")
                                             (n4)))
                                          (x7893
                                           (letrec*
                                            ((x7894
                                              (letrec*
                                               ((x7908
                                                 (begin
                                                   (write '(funapp 1492 56))
                                                   (display "\n")
                                                   (n5)))
                                                (x7895
                                                 (letrec*
                                                  ((x7896
                                                    (letrec*
                                                     ((x7907
                                                       (begin
                                                         (write
                                                          '(funapp 1497 62))
                                                         (display "\n")
                                                         (n6)))
                                                      (x7897
                                                       (letrec*
                                                        ((x7898
                                                          (letrec*
                                                           ((x7906
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1502
                                                                  68))
                                                               (display "\n")
                                                               (n7)))
                                                            (x7899
                                                             (letrec*
                                                              ((x7900
                                                                (letrec*
                                                                 ((x7901
                                                                   (letrec*
                                                                    ((x7902
                                                                      (letrec*
                                                                       ((x7903
                                                                         (letrec*
                                                                          ((x7904
                                                                            (letrec*
                                                                             ((x7905
                                                                               (begin
                                                                                 (write
                                                                                  '(funapp
                                                                                    1516
                                                                                    80))
                                                                                 (display
                                                                                  "\n")
                                                                                 (p
                                                                                  n1))))
                                                                             (begin
                                                                               (write
                                                                                '(funapp
                                                                                  1518
                                                                                  78))
                                                                               (display
                                                                                "\n")
                                                                               (x7905
                                                                                n2)))))
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               1520
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (x7904
                                                                             n3)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            1522
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x7903
                                                                          n4)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1524
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (x7902
                                                                       n5)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1526
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (x7901
                                                                    n6)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1527
                                                                   63))
                                                                (display "\n")
                                                                (x7900 n7)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1528
                                                                60))
                                                             (display "\n")
                                                             (λ x7906
                                                               x7899)))))
                                                        (begin
                                                          (write
                                                           '(funapp 1529 57))
                                                          (display "\n")
                                                          (try x7898)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1530 54))
                                                       (display "\n")
                                                       (λ x7907 x7897)))))
                                                  (begin
                                                    (write '(funapp 1531 51))
                                                    (display "\n")
                                                    (try x7896)))))
                                               (begin
                                                 (write '(funapp 1532 48))
                                                 (display "\n")
                                                 (λ x7908 x7895)))))
                                            (begin
                                              (write '(funapp 1533 45))
                                              (display "\n")
                                              (try x7894)))))
                                         (begin
                                           (write '(funapp 1534 42))
                                           (display "\n")
                                           (λ x7909 x7893)))))
                                      (begin
                                        (write '(funapp 1535 39))
                                        (display "\n")
                                        (try x7892)))))
                                   (begin
                                     (write '(funapp 1536 36))
                                     (display "\n")
                                     (λ x7910 x7891)))))
                                (begin
                                  (write '(funapp 1537 33))
                                  (display "\n")
                                  (try x7890)))))
                             (begin
                               (write '(funapp 1538 30))
                               (display "\n")
                               (λ x7911 x7889)))))
                          (begin
                            (write '(funapp 1539 27))
                            (display "\n")
                            (try x7888)))))
                       (begin
                         (write '(funapp 1540 24))
                         (display "\n")
                         (λ x7912 x7887)))))
                    (begin
                      (write '(funapp 1541 21))
                      (display "\n")
                      (try x7886)))))
                 (begin
                   (write '(funapp 1542 18))
                   (display "\n")
                   (λ x7913 x7885)))))
              (letrec*
               ((g7914
                 (begin
                   (write '(funapp 1543 32))
                   (display "\n")
                   (sat-solve-7 phi))))
               g7914))))
           g7341))))
       g7339)))
    g7338)))
