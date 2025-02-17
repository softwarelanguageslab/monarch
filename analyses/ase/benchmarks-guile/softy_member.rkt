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
               (cons/c cons?/c)
               (pair?/c
                (lambda (g7277 g7278 g7279)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 126 35))
                          (display "\n")
                          (pair? g7279))))
                      (if x-cnd7366
                        g7279
                        (begin
                          (write '(blame g7277 127 42))
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
                          (write '(funapp 134 35))
                          (display "\n")
                          (integer? g7282))))
                      (if x-cnd7368
                        g7282
                        (begin
                          (write '(blame g7280 135 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7280)))))))
                   g7367)))
               (symbol?/c
                (lambda (g7283 g7284 g7285)
                  (letrec*
                   ((g7369
                     (letrec*
                      ((x-cnd7370
                        (begin
                          (write '(funapp 142 35))
                          (display "\n")
                          (symbol? g7285))))
                      (if x-cnd7370
                        g7285
                        (begin
                          (write '(blame g7283 143 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7283)))))))
                   g7369)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7371
                     (lambda (k j v)
                       (letrec*
                        ((g7372
                          (letrec*
                           ((x-cnd7373
                             (begin
                               (write '(funapp 153 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7373
                             (begin
                               (write '(funapp 154 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7372))))
                   g7371)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7374
                     (lambda (k j v)
                       (letrec*
                        ((g7375
                          (letrec*
                           ((x-cnd7376
                             (begin
                               (write '(funapp 165 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7376
                             (begin
                               (write '(funapp 167 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7380
                                (letrec*
                                 ((x7381
                                   (begin
                                     (write '(funapp 171 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 172 34))
                                   (display "\n")
                                   (contract k j x7381))))
                               (x7377
                                (letrec*
                                 ((x7379
                                   (begin
                                     (write '(funapp 175 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7378
                                   (begin
                                     (write '(funapp 175 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 176 34))
                                   (display "\n")
                                   (x7379 k j x7378)))))
                              (begin
                                (write '(funapp 177 31))
                                (display "\n")
                                (orig-cons x7380 x7377)))))))
                        g7375))))
                   g7374)))
               (any? (lambda (v) (letrec* ((g7382 #t)) g7382)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7383
                     (letrec*
                      ((x7384
                        (begin
                          (write '(funapp 184 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 184 55))
                        (display "\n")
                        (not x7384)))))
                   g7383)))
               (nonzero?/c
                (lambda (g7286 g7287 g7288)
                  (letrec*
                   ((g7385
                     (letrec*
                      ((x-cnd7386
                        (begin
                          (write '(funapp 192 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7387
                                (letrec*
                                 ((x7388
                                   (begin
                                     (write '(funapp 194 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 194 64))
                                   (display "\n")
                                   (not x7388)))))
                              g7387))
                           g7288))))
                      (if x-cnd7386
                        g7288
                        (begin
                          (write '(blame g7286 199 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7286)))))))
                   g7385)))
               (meta (lambda (v) (letrec* ((g7389 v)) g7389)))
               (+
                (begin
                  (write '(funapp 203 17))
                  (display "\n")
                  ((lambda (j7291 k7292 f7293)
                     (letrec*
                      ((g7391
                        (lambda (g7289 g7290)
                          (letrec*
                           ((g7392
                             (letrec*
                              ((x7393
                                (letrec*
                                 ((x7395
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7289)))
                                  (x7394
                                   (begin
                                     (write '(funapp 213 40))
                                     (display "\n")
                                     (number?/c j7291 k7292 g7290))))
                                 (begin
                                   (write '(funapp 214 32))
                                   (display "\n")
                                   (f7293 x7395 x7394)))))
                              (begin
                                (write '(funapp 215 29))
                                (display "\n")
                                (number?/c j7291 k7292 x7393)))))
                           g7392))))
                      g7391))
                   (begin (write '(funapp 218 17)) (display "\n") 'server)
                   (begin (write '(funapp 219 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7390
                        (begin
                          (write '(funapp 220 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7390)))))
               (-
                (begin
                  (write '(funapp 222 17))
                  (display "\n")
                  ((lambda (j7296 k7297 f7298)
                     (letrec*
                      ((g7397
                        (lambda (g7294 g7295)
                          (letrec*
                           ((g7398
                             (letrec*
                              ((x7399
                                (letrec*
                                 ((x7401
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7294)))
                                  (x7400
                                   (begin
                                     (write '(funapp 232 40))
                                     (display "\n")
                                     (number?/c j7296 k7297 g7295))))
                                 (begin
                                   (write '(funapp 233 32))
                                   (display "\n")
                                   (f7298 x7401 x7400)))))
                              (begin
                                (write '(funapp 234 29))
                                (display "\n")
                                (number?/c j7296 k7297 x7399)))))
                           g7398))))
                      g7397))
                   (begin (write '(funapp 237 17)) (display "\n") 'server)
                   (begin (write '(funapp 238 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7396
                        (begin
                          (write '(funapp 239 49))
                          (display "\n")
                          (orig-- a b))))
                      g7396)))))
               (*
                (begin
                  (write '(funapp 241 17))
                  (display "\n")
                  ((lambda (j7301 k7302 f7303)
                     (letrec*
                      ((g7403
                        (lambda (g7299 g7300)
                          (letrec*
                           ((g7404
                             (letrec*
                              ((x7405
                                (letrec*
                                 ((x7407
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7299)))
                                  (x7406
                                   (begin
                                     (write '(funapp 251 40))
                                     (display "\n")
                                     (number?/c j7301 k7302 g7300))))
                                 (begin
                                   (write '(funapp 252 32))
                                   (display "\n")
                                   (f7303 x7407 x7406)))))
                              (begin
                                (write '(funapp 253 29))
                                (display "\n")
                                (number?/c j7301 k7302 x7405)))))
                           g7404))))
                      g7403))
                   (begin (write '(funapp 256 17)) (display "\n") 'server)
                   (begin (write '(funapp 257 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7402
                        (begin
                          (write '(funapp 258 49))
                          (display "\n")
                          (orig-* a b))))
                      g7402)))))
               (/
                (begin
                  (write '(funapp 260 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7409
                        (lambda (g7304 g7305)
                          (letrec*
                           ((g7410
                             (letrec*
                              ((x7411
                                (letrec*
                                 ((x7413
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7304)))
                                  (x7412
                                   (begin
                                     (write '(funapp 270 40))
                                     (display "\n")
                                     (number?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 271 32))
                                   (display "\n")
                                   (f7308 x7413 x7412)))))
                              (begin
                                (write '(funapp 272 29))
                                (display "\n")
                                (number?/c j7306 k7307 x7411)))))
                           g7410))))
                      g7409))
                   (begin (write '(funapp 275 17)) (display "\n") 'server)
                   (begin (write '(funapp 276 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7408
                        (begin
                          (write '(funapp 277 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7408)))))
               (car
                (begin
                  (write '(funapp 279 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7415
                        (lambda (g7309)
                          (letrec*
                           ((g7416
                             (letrec*
                              ((x7417
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 288 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 289 32))
                                   (display "\n")
                                   (f7312 x7418)))))
                              (begin
                                (write '(funapp 290 29))
                                (display "\n")
                                (any/c j7310 k7311 x7417)))))
                           g7416))))
                      g7415))
                   (begin (write '(funapp 293 17)) (display "\n") 'server)
                   (begin (write '(funapp 294 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7414
                        (begin
                          (write '(funapp 295 47))
                          (display "\n")
                          (orig-car p))))
                      g7414)))))
               (cdr
                (begin
                  (write '(funapp 297 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7420
                        (lambda (g7313)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7423
                                   (begin
                                     (write '(funapp 306 40))
                                     (display "\n")
                                     (pair?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 307 32))
                                   (display "\n")
                                   (f7316 x7423)))))
                              (begin
                                (write '(funapp 308 29))
                                (display "\n")
                                (any/c j7314 k7315 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 311 17)) (display "\n") 'server)
                   (begin (write '(funapp 312 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 313 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7419)))))
               (cons
                (begin
                  (write '(funapp 315 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7425
                        (lambda (g7317 g7318)
                          (letrec*
                           ((g7426
                             (letrec*
                              ((x7427
                                (letrec*
                                 ((x7429
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7317)))
                                  (x7428
                                   (begin
                                     (write '(funapp 325 40))
                                     (display "\n")
                                     (any/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 326 32))
                                   (display "\n")
                                   (f7321 x7429 x7428)))))
                              (begin
                                (write '(funapp 327 29))
                                (display "\n")
                                (pair?/c j7319 k7320 x7427)))))
                           g7426))))
                      g7425))
                   (begin (write '(funapp 330 17)) (display "\n") 'server)
                   (begin (write '(funapp 331 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7424
                        (begin
                          (write '(funapp 332 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7424)))))
               (vector-ref
                (begin
                  (write '(funapp 334 17))
                  (display "\n")
                  ((lambda (j7323 k7324 f7325)
                     (letrec*
                      ((g7431
                        (lambda (g7322)
                          (letrec*
                           ((g7432
                             (letrec*
                              ((x7433
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 343 40))
                                     (display "\n")
                                     (vector?/c j7323 k7324 g7322))))
                                 (begin
                                   (write '(funapp 344 32))
                                   (display "\n")
                                   (f7325 x7434)))))
                              (begin
                                (write '(funapp 345 29))
                                (display "\n")
                                (integer?/c j7323 k7324 x7433)))))
                           g7432))))
                      g7431))
                   (begin (write '(funapp 348 17)) (display "\n") 'server)
                   (begin (write '(funapp 349 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7430
                        (begin
                          (write '(funapp 351 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7430)))))
               (vector-set!
                (begin
                  (write '(funapp 353 17))
                  (display "\n")
                  ((lambda (j7328 k7329 f7330)
                     (letrec*
                      ((g7436
                        (lambda (g7326 g7327)
                          (letrec*
                           ((g7437
                             (letrec*
                              ((x7438
                                (letrec*
                                 ((x7440
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (vector?/c j7328 k7329 g7326)))
                                  (x7439
                                   (begin
                                     (write '(funapp 363 40))
                                     (display "\n")
                                     (integer?/c j7328 k7329 g7327))))
                                 (begin
                                   (write '(funapp 364 32))
                                   (display "\n")
                                   (f7330 x7440 x7439)))))
                              (begin
                                (write '(funapp 365 29))
                                (display "\n")
                                (any/c j7328 k7329 x7438)))))
                           g7437))))
                      g7436))
                   (begin (write '(funapp 368 17)) (display "\n") 'server)
                   (begin (write '(funapp 369 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7435
                        (begin
                          (write '(funapp 371 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7435)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7441
                     (if cnd
                       (begin (write '(funapp 375 35)) (display "\n") '())
                       (begin
                         (write '(funapp 375 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7441)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7442
                     (letrec*
                      ((x7443
                        (letrec*
                         ((x7444
                           (begin
                             (write '(funapp 382 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 382 58))
                           (display "\n")
                           (cdr x7444)))))
                      (begin
                        (write '(funapp 383 23))
                        (display "\n")
                        (cdr x7443)))))
                   g7442)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7445
                     (letrec*
                      ((x7448
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 389 62))
                        (display "\n")
                        (assert x7448))))
                    (g7446
                     (letrec*
                      ((x7449
                        (begin
                          (write '(funapp 390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 390 57))
                        (display "\n")
                        (assert x7449))))
                    (g7447
                     (letrec*
                      ((x-cnd7450
                        (begin
                          (write '(funapp 393 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7450
                        (begin (write '(funapp 395 24)) (display "\n") '())
                        (letrec*
                         ((x7453
                           (letrec*
                            ((x7454
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (f x7454))))
                          (x7451
                           (letrec*
                            ((x7452
                              (begin
                                (write '(funapp 398 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 398 61))
                              (display "\n")
                              (map f x7452)))))
                         (begin
                           (write '(funapp 399 26))
                           (display "\n")
                           (cons x7453 x7451)))))))
                   g7447)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7455
                     (letrec*
                      ((x7456
                        (begin
                          (write '(funapp 404 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 404 55))
                        (display "\n")
                        (cdr x7456)))))
                   g7455)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7457
                     (letrec*
                      ((x7458
                        (letrec*
                         ((x7459
                           (letrec*
                            ((x7460
                              (begin
                                (write '(funapp 413 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 413 61))
                              (display "\n")
                              (car x7460)))))
                         (begin
                           (write '(funapp 414 26))
                           (display "\n")
                           (cdr x7459)))))
                      (begin
                        (write '(funapp 415 23))
                        (display "\n")
                        (car x7458)))))
                   g7457)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x7462
                        (letrec*
                         ((x7463
                           (letrec*
                            ((x7464
                              (begin
                                (write '(funapp 424 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 424 61))
                              (display "\n")
                              (cdr x7464)))))
                         (begin
                           (write '(funapp 425 26))
                           (display "\n")
                           (car x7463)))))
                      (begin
                        (write '(funapp 426 23))
                        (display "\n")
                        (cdr x7462)))))
                   g7461)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7465
                     (letrec*
                      ((x7468
                        (begin
                          (write '(funapp 432 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 432 60))
                        (display "\n")
                        (assert x7468))))
                    (g7466
                     (letrec*
                      ((x7469
                        (begin
                          (write '(funapp 434 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 434 59))
                        (display "\n")
                        (assert x7469))))
                    (g7467
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 437 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 438 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7470
                         (begin
                           (write '(funapp 440 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7471 res))
                       g7471))))
                   g7467)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7472
                     (letrec*
                      ((x7473
                        (letrec*
                         ((x7474
                           (begin
                             (write '(funapp 448 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 448 58))
                           (display "\n")
                           (cdr x7474)))))
                      (begin
                        (write '(funapp 449 23))
                        (display "\n")
                        (car x7473)))))
                   g7472)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7476
                        (letrec*
                         ((x7477
                           (letrec*
                            ((x7478
                              (begin
                                (write '(funapp 458 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 458 61))
                              (display "\n")
                              (car x7478)))))
                         (begin
                           (write '(funapp 459 26))
                           (display "\n")
                           (car x7477)))))
                      (begin
                        (write '(funapp 460 23))
                        (display "\n")
                        (cdr x7476)))))
                   g7475)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7479
                     (letrec*
                      ((x7481
                        (begin
                          (write '(funapp 465 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 465 57))
                        (display "\n")
                        (assert x7481))))
                    (g7480
                     (letrec*
                      ((x-cnd7482
                        (begin
                          (write '(funapp 468 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7482
                        #f
                        (letrec*
                         ((x-cnd7483
                           (letrec*
                            ((x7484
                              (begin
                                (write '(funapp 473 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 473 56))
                              (display "\n")
                              (eq? x7484 k)))))
                         (if x-cnd7483
                           (begin
                             (write '(funapp 475 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 476 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 476 55))
                              (display "\n")
                              (assq k x7485)))))))))
                   g7480)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7486
                     (letrec*
                      ((x7487
                        (begin
                          (write '(funapp 481 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 481 60))
                        (display "\n")
                        (= 0 x7487)))))
                   g7486)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7488
                     (letrec*
                      ((x7490
                        (begin
                          (write '(funapp 486 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 486 57))
                        (display "\n")
                        (assert x7490))))
                    (g7489
                     (letrec*
                      ((x-cnd7491
                        (begin
                          (write '(funapp 489 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7491
                        ""
                        (letrec*
                         ((x7494
                           (letrec*
                            ((x7495
                              (begin
                                (write '(funapp 494 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 494 55))
                              (display "\n")
                              (char->string x7495))))
                          (x7492
                           (letrec*
                            ((x7493
                              (begin
                                (write '(funapp 496 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 496 55))
                              (display "\n")
                              (list->string x7493)))))
                         (begin
                           (write '(funapp 497 26))
                           (display "\n")
                           (string-append x7494 x7492)))))))
                   g7489)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7496
                     (letrec*
                      ((x7499
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7499))))
                    (g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 503 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 503 58))
                        (display "\n")
                        (assert x7500))))
                    (g7498
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 506 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7501
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 508 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7501))))
                   g7498)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7503
                        (letrec*
                         ((x7504
                           (letrec*
                            ((x7505
                              (begin
                                (write '(funapp 518 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 518 61))
                              (display "\n")
                              (cdr x7505)))))
                         (begin
                           (write '(funapp 519 26))
                           (display "\n")
                           (cdr x7504)))))
                      (begin
                        (write '(funapp 520 23))
                        (display "\n")
                        (cdr x7503)))))
                   g7502)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7506
                     (letrec*
                      ((x7509
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7509))))
                    (g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 526 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 526 57))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((x-cnd7511
                        (begin
                          (write '(funapp 529 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7511
                        x
                        (letrec*
                         ((x7513
                           (begin
                             (write '(funapp 533 34))
                             (display "\n")
                             (cdr x)))
                          (x7512
                           (begin
                             (write '(funapp 533 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 534 26))
                           (display "\n")
                           (list-tail x7513 x7512)))))))
                   g7508)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7514
                     (begin (write '(funapp 536 49)) (display "\n") '())))
                   g7514)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7515
                     (letrec*
                      ((x-cnd7516
                        (letrec*
                         ((x7517 #\a))
                         (begin
                           (write '(funapp 543 48))
                           (display "\n")
                           (char-ci>=? c x7517)))))
                      (if x-cnd7516
                        (letrec*
                         ((x7518 #\z))
                         (begin
                           (write '(funapp 545 48))
                           (display "\n")
                           (char-ci<=? c x7518)))
                        #f))))
                   g7515)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((x7521
                        (begin
                          (write '(funapp 551 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 551 59))
                        (display "\n")
                        (assert x7521))))
                    (g7520
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 554 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7522
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 560 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7523 (if val7243 val7243 #f)))
                             g7523)))))
                       g7522))))
                   g7520)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7524
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7525
                           (begin
                             (write '(funapp 572 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 572 62))
                           (display "\n")
                           (= x7525 9)))))
                      (letrec*
                       ((g7526
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7527
                                 (begin
                                   (write '(funapp 580 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 581 32))
                                 (display "\n")
                                 (= x7527 10)))))
                            (letrec*
                             ((g7528
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7529
                                    (begin
                                      (write '(funapp 587 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 588 35))
                                    (display "\n")
                                    (= x7529 32))))))
                             g7528)))))
                       g7526))))
                   g7524)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7530
                     (letrec*
                      ((x7531
                        (letrec*
                         ((x7532
                           (begin
                             (write '(funapp 597 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 597 58))
                           (display "\n")
                           (cdr x7532)))))
                      (begin
                        (write '(funapp 598 23))
                        (display "\n")
                        (cdr x7531)))))
                   g7530)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7535
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 603 59))
                        (display "\n")
                        (assert x7535))))
                    (g7534
                     (begin (write '(funapp 604 28)) (display "\n") (> x 0))))
                   g7534)))
               ($pc (begin (write '(funapp 606 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7536 #f)) g7536)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7537
                     (letrec*
                      ((x7538
                        (begin
                          (write '(funapp 612 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 612 55))
                        (display "\n")
                        (cdr x7538)))))
                   g7537)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((x7541
                        (begin
                          (write '(funapp 617 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 617 59))
                        (display "\n")
                        (assert x7541))))
                    (g7540
                     (letrec*
                      ((x-cnd7542
                        (begin
                          (write '(funapp 620 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7542
                        (begin
                          (write '(funapp 621 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 621 49))
                          (display "\n")
                          (floor x))))))
                   g7540)))
               ($cmp (begin (write '(funapp 623 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7543
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 629 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7544
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7545
                                 (begin
                                   (write '(funapp 637 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7545
                                 (begin
                                   (write '(funapp 638 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7546
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7547
                                       (begin
                                         (write '(funapp 646 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7547
                                       (letrec*
                                        ((x-cnd7548
                                          (begin
                                            (write '(funapp 649 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7548
                                          (begin
                                            (write '(funapp 650 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7549
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7550
                                             (begin
                                               (write '(funapp 659 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7550
                                             (letrec*
                                              ((x-cnd7551
                                                (begin
                                                  (write '(funapp 662 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7551
                                                (letrec*
                                                 ((x-cnd7552
                                                   (letrec*
                                                    ((x7554
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7553
                                                      (begin
                                                        (write
                                                         '(funapp 668 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 669 53))
                                                      (display "\n")
                                                      (equal? x7554 x7553)))))
                                                 (if x-cnd7552
                                                   (letrec*
                                                    ((x7556
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7555
                                                      (begin
                                                        (write
                                                         '(funapp 673 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 674 53))
                                                      (display "\n")
                                                      (equal? x7556 x7555)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7557
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7558
                                                (begin
                                                  (write '(funapp 683 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7558
                                                (letrec*
                                                 ((x-cnd7559
                                                   (begin
                                                     (write '(funapp 686 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7559
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 689 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7560
                                                       (letrec*
                                                        ((x-cnd7561
                                                          (letrec*
                                                           ((x7562
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  696
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 698 60))
                                                             (display "\n")
                                                             (= x7562 n)))))
                                                        (if x-cnd7561
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7563
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          707
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7564
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7565
                                                                           (letrec*
                                                                            ((x7567
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   716
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7566
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   720
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 723
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7567
                                                                               x7566)))))
                                                                         (if x-cnd7565
                                                                           (letrec*
                                                                            ((x7568
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   729
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 732
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7568)))
                                                                           #f)))))
                                                                    g7564))))
                                                                g7563))))
                                                           (letrec*
                                                            ((g7569
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   738
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7569))
                                                          #f))))
                                                     g7560))
                                                   #f))
                                                #f)))))
                                         g7557)))))
                                   g7549)))))
                             g7546)))))
                       g7544))))
                   g7543)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7570
                     (letrec*
                      ((x7571
                        (letrec*
                         ((x7572
                           (letrec*
                            ((x7573
                              (begin
                                (write '(funapp 756 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 756 61))
                              (display "\n")
                              (car x7573)))))
                         (begin
                           (write '(funapp 757 26))
                           (display "\n")
                           (car x7572)))))
                      (begin
                        (write '(funapp 758 23))
                        (display "\n")
                        (cdr x7571)))))
                   g7570)))
               (caaddr
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
                                (write '(funapp 767 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 767 61))
                              (display "\n")
                              (cdr x7577)))))
                         (begin
                           (write '(funapp 768 26))
                           (display "\n")
                           (car x7576)))))
                      (begin
                        (write '(funapp 769 23))
                        (display "\n")
                        (car x7575)))))
                   g7574)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7578
                     (begin
                       (write '(funapp 771 53))
                       (display "\n")
                       (eq? x y))))
                   g7578)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7579
                     (letrec*
                      ((x7581
                        (begin
                          (write '(funapp 775 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 775 59))
                        (display "\n")
                        (assert x7581))))
                    (g7580
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 778 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7582
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 784 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7583 (if val7252 val7252 #f)))
                             g7583)))))
                       g7582))))
                   g7580)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7584
                     (letrec*
                      ((x7587
                        (begin
                          (write '(funapp 794 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 794 60))
                        (display "\n")
                        (assert x7587))))
                    (g7585
                     (letrec*
                      ((x7588
                        (begin
                          (write '(funapp 796 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 796 59))
                        (display "\n")
                        (assert x7588))))
                    (g7586
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 799 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 800 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7589
                         (begin
                           (write '(funapp 802 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7590 res))
                       g7590))))
                   g7586)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7591
                     (begin
                       (write '(funapp 805 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 805 57)) (display "\n") '())))))
                   g7591)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 810 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 810 58))
                        (display "\n")
                        (assert x7596))))
                    (g7594
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 813 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7597
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 815 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7597))))
                   g7594)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7598
                     (letrec*
                      ((x7599
                        (letrec*
                         ((x7600
                           (begin
                             (write '(funapp 823 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 823 58))
                           (display "\n")
                           (car x7600)))))
                      (begin
                        (write '(funapp 824 23))
                        (display "\n")
                        (cdr x7599)))))
                   g7598)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (letrec*
                            ((x7604
                              (begin
                                (write '(funapp 833 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 833 61))
                              (display "\n")
                              (cdr x7604)))))
                         (begin
                           (write '(funapp 834 26))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 835 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7605
                     (letrec*
                      ((x7606
                        (letrec*
                         ((x7607
                           (begin
                             (write '(funapp 843 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 843 58))
                           (display "\n")
                           (cdr x7607)))))
                      (begin
                        (write '(funapp 844 23))
                        (display "\n")
                        (car x7606)))))
                   g7605)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (begin
                             (write '(funapp 851 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 851 58))
                           (display "\n")
                           (car x7610)))))
                      (begin
                        (write '(funapp 852 23))
                        (display "\n")
                        (car x7609)))))
                   g7608)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7614
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7614))))
                    (g7612
                     (letrec*
                      ((x7615
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 858 58))
                        (display "\n")
                        (assert x7615))))
                    (g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 859 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 859 66))
                        (display "\n")
                        (not x7616)))))
                   g7613)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x7618
                        (letrec*
                         ((x7619
                           (letrec*
                            ((x7620
                              (begin
                                (write '(funapp 869 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 869 61))
                              (display "\n")
                              (car x7620)))))
                         (begin
                           (write '(funapp 870 26))
                           (display "\n")
                           (car x7619)))))
                      (begin
                        (write '(funapp 871 23))
                        (display "\n")
                        (car x7618)))))
                   g7617)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7621
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 876 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 876 59))
                        (display "\n")
                        (assert x7623))))
                    (g7622
                     (begin (write '(funapp 877 28)) (display "\n") (< x 0))))
                   g7622)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7624
                     (begin
                       (write '(funapp 879 53))
                       (display "\n")
                       (memq e l))))
                   g7624)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (begin
                             (write '(funapp 885 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 885 58))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 886 23))
                        (display "\n")
                        (car x7626)))))
                   g7625)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7628
                     (begin (write '(funapp 888 51)) (display "\n") '())))
                   g7628)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 892 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 892 57))
                        (display "\n")
                        (assert x7631))))
                    (g7630
                     (letrec*
                      ((x-cnd7632
                        (begin
                          (write '(funapp 895 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7632
                        (begin (write '(funapp 897 24)) (display "\n") '())
                        (letrec*
                         ((x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (reverse x7636))))
                          (x7633
                           (letrec*
                            ((x7634
                              (begin
                                (write '(funapp 900 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 900 61))
                              (display "\n")
                              (list x7634)))))
                         (begin
                           (write '(funapp 901 26))
                           (display "\n")
                           (append x7635 x7633)))))))
                   g7630)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7638
                        (letrec*
                         ((x7639
                           (letrec*
                            ((x7640
                              (begin
                                (write '(funapp 910 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 910 61))
                              (display "\n")
                              (car x7640)))))
                         (begin
                           (write '(funapp 911 26))
                           (display "\n")
                           (car x7639)))))
                      (begin
                        (write '(funapp 912 23))
                        (display "\n")
                        (car x7638)))))
                   g7637)))
               (cddadr
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
                                (write '(funapp 921 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 921 61))
                              (display "\n")
                              (car x7644)))))
                         (begin
                           (write '(funapp 922 26))
                           (display "\n")
                           (cdr x7643)))))
                      (begin
                        (write '(funapp 923 23))
                        (display "\n")
                        (cdr x7642)))))
                   g7641)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 928 59))
                        (display "\n")
                        (assert x7647))))
                    (g7646
                     (letrec*
                      ((x7648
                        (begin
                          (write '(funapp 929 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 929 60))
                        (display "\n")
                        (= 1 x7648)))))
                   g7646)))
               (caadar
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
                                (write '(funapp 938 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 938 61))
                              (display "\n")
                              (cdr x7652)))))
                         (begin
                           (write '(funapp 939 26))
                           (display "\n")
                           (car x7651)))))
                      (begin
                        (write '(funapp 940 23))
                        (display "\n")
                        (car x7650)))))
                   g7649)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 946 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 946 59))
                        (display "\n")
                        (assert x7656))))
                    (g7654
                     (letrec*
                      ((x7657
                        (begin
                          (write '(funapp 947 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 947 60))
                        (display "\n")
                        (assert x7657))))
                    (g7655
                     (letrec*
                      ((x-cnd7658
                        (begin
                          (write '(funapp 950 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7658
                        (letrec*
                         ((g7659
                           (begin
                             (write '(funapp 952 42))
                             (display "\n")
                             (proc))))
                         g7659)
                        (letrec*
                         ((x-cnd7660
                           (letrec*
                            ((x7661
                              (begin
                                (write '(funapp 955 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 955 58))
                              (display "\n")
                              (null? x7661)))))
                         (if x-cnd7660
                           (letrec*
                            ((g7662
                              (letrec*
                               ((x7663
                                 (begin
                                   (write '(funapp 959 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 959 61))
                                 (display "\n")
                                 (proc x7663)))))
                            g7662)
                           (letrec*
                            ((x-cnd7664
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 963 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 963 62))
                                 (display "\n")
                                 (null? x7665)))))
                            (if x-cnd7664
                              (letrec*
                               ((g7666
                                 (letrec*
                                  ((x7668
                                    (begin
                                      (write '(funapp 968 43))
                                      (display "\n")
                                      (car args)))
                                   (x7667
                                    (begin
                                      (write '(funapp 968 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 969 35))
                                    (display "\n")
                                    (proc x7668 x7667)))))
                               g7666)
                              (letrec*
                               ((x-cnd7669
                                 (letrec*
                                  ((x7670
                                    (begin
                                      (write '(funapp 974 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 975 35))
                                    (display "\n")
                                    (null? x7670)))))
                               (if x-cnd7669
                                 (letrec*
                                  ((g7671
                                    (letrec*
                                     ((x7674
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (car args)))
                                      (x7673
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7672
                                       (begin
                                         (write '(funapp 982 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 983 38))
                                       (display "\n")
                                       (proc x7674 x7673 x7672)))))
                                  g7671)
                                 (letrec*
                                  ((x-cnd7675
                                    (letrec*
                                     ((x7676
                                       (begin
                                         (write '(funapp 988 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 989 38))
                                       (display "\n")
                                       (null? x7676)))))
                                  (if x-cnd7675
                                    (letrec*
                                     ((g7677
                                       (letrec*
                                        ((x7681
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (car args)))
                                         (x7680
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7679
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7678
                                          (begin
                                            (write '(funapp 997 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (proc x7681 x7680 x7679 x7678)))))
                                     g7677)
                                    (letrec*
                                     ((x-cnd7682
                                       (letrec*
                                        ((x7683
                                          (letrec*
                                           ((x7684
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1006 44))
                                             (display "\n")
                                             (cdr x7684)))))
                                        (begin
                                          (write '(funapp 1007 41))
                                          (display "\n")
                                          (null? x7683)))))
                                     (if x-cnd7682
                                       (letrec*
                                        ((g7685
                                          (letrec*
                                           ((x7691
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (car args)))
                                            (x7690
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7689
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7688
                                             (begin
                                               (write '(funapp 1015 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7686
                                             (letrec*
                                              ((x7687
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1019 47))
                                                (display "\n")
                                                (car x7687)))))
                                           (begin
                                             (write '(funapp 1020 44))
                                             (display "\n")
                                             (proc
                                              x7691
                                              x7690
                                              x7689
                                              x7688
                                              x7686)))))
                                        g7685)
                                       (letrec*
                                        ((x-cnd7692
                                          (letrec*
                                           ((x7693
                                             (letrec*
                                              ((x7694
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1033 47))
                                                (display "\n")
                                                (cddr x7694)))))
                                           (begin
                                             (write '(funapp 1034 44))
                                             (display "\n")
                                             (null? x7693)))))
                                        (if x-cnd7692
                                          (letrec*
                                           ((g7695
                                             (letrec*
                                              ((x7703
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7702
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7701
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7700
                                                (begin
                                                  (write '(funapp 1042 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7698
                                                (letrec*
                                                 ((x7699
                                                   (begin
                                                     (write '(funapp 1045 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1046 50))
                                                   (display "\n")
                                                   (car x7699))))
                                               (x7696
                                                (letrec*
                                                 ((x7697
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1050 50))
                                                   (display "\n")
                                                   (cadr x7697)))))
                                              (begin
                                                (write '(funapp 1051 47))
                                                (display "\n")
                                                (proc
                                                 x7703
                                                 x7702
                                                 x7701
                                                 x7700
                                                 x7698
                                                 x7696)))))
                                           g7695)
                                          (letrec*
                                           ((x-cnd7704
                                             (letrec*
                                              ((x7705
                                                (letrec*
                                                 ((x7706
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1065 50))
                                                   (display "\n")
                                                   (cdddr x7706)))))
                                              (begin
                                                (write '(funapp 1066 47))
                                                (display "\n")
                                                (null? x7705)))))
                                           (if x-cnd7704
                                             (letrec*
                                              ((g7707
                                                (letrec*
                                                 ((x7717
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7716
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7715
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7714
                                                   (begin
                                                     (write '(funapp 1074 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7712
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 1077 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1078 53))
                                                      (display "\n")
                                                      (car x7713))))
                                                  (x7710
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 1081 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1082 53))
                                                      (display "\n")
                                                      (cadr x7711))))
                                                  (x7708
                                                   (letrec*
                                                    ((x7709
                                                      (begin
                                                        (write
                                                         '(funapp 1085 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1086 53))
                                                      (display "\n")
                                                      (caddr x7709)))))
                                                 (begin
                                                   (write '(funapp 1087 50))
                                                   (display "\n")
                                                   (proc
                                                    x7717
                                                    x7716
                                                    x7715
                                                    x7714
                                                    x7712
                                                    x7710
                                                    x7708)))))
                                              g7707)
                                             (letrec*
                                              ((g7718
                                                (begin
                                                  (write '(funapp 1098 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7718)))))))))))))))))))
                   g7655)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7721
                        (begin
                          (write '(funapp 1104 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1104 57))
                        (display "\n")
                        (assert x7721))))
                    (g7720
                     (letrec*
                      ((x-cnd7722
                        (begin
                          (write '(funapp 1107 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7722
                        #f
                        (letrec*
                         ((x-cnd7723
                           (letrec*
                            ((x7724
                              (begin
                                (write '(funapp 1112 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1112 55))
                              (display "\n")
                              (equal? x7724 e)))))
                         (if x-cnd7723
                           l
                           (letrec*
                            ((x7725
                              (begin
                                (write '(funapp 1115 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1115 55))
                              (display "\n")
                              (member e x7725)))))))))
                   g7720)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7726
                     (letrec*
                      ((x7727
                        (letrec*
                         ((x7728
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1124 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1124 61))
                              (display "\n")
                              (cdr x7729)))))
                         (begin
                           (write '(funapp 1125 26))
                           (display "\n")
                           (cdr x7728)))))
                      (begin
                        (write '(funapp 1126 23))
                        (display "\n")
                        (cdr x7727)))))
                   g7726)))
               (cadddr
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
                                (write '(funapp 1135 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1135 61))
                              (display "\n")
                              (cdr x7733)))))
                         (begin
                           (write '(funapp 1136 26))
                           (display "\n")
                           (cdr x7732)))))
                      (begin
                        (write '(funapp 1137 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7734
                     (begin
                       (write '(funapp 1139 53))
                       (display "\n")
                       (random 42))))
                   g7734)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7737
                        (begin
                          (write '(funapp 1143 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1143 59))
                        (display "\n")
                        (assert x7737))))
                    (g7736
                     (begin (write '(funapp 1144 28)) (display "\n") (= x 0))))
                   g7736)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1151 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7739
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1153 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7739))))
                   g7738)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((x7741
                        (begin
                          (write '(funapp 1159 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1159 55))
                        (display "\n")
                        (car x7741)))))
                   g7740)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7743
                           (begin
                             (write '(funapp 1169 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7743
                           (letrec*
                            ((x7744
                              (begin
                                (write '(funapp 1171 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1171 55))
                              (display "\n")
                              (list? x7744)))
                           #f))))
                      (letrec*
                       ((g7745
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1174 52))
                             (display "\n")
                             (null? l)))))
                       g7745))))
                   g7742)))
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
                                (write '(funapp 1184 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1184 61))
                              (display "\n")
                              (car x7749)))))
                         (begin
                           (write '(funapp 1185 26))
                           (display "\n")
                           (cdr x7748)))))
                      (begin
                        (write '(funapp 1186 23))
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
                           (write '(funapp 1193 58))
                           (display "\n")
                           (char<=? x7752 c)))))
                      (if x-cnd7751
                        (letrec*
                         ((x7753 #\9))
                         (begin
                           (write '(funapp 1195 48))
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
                          (write '(funapp 1202 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1202 57))
                        (display "\n")
                        (assert x7756))))
                    (g7755
                     (letrec*
                      ((x-cnd7757
                        (begin
                          (write '(funapp 1205 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7757
                        #f
                        (letrec*
                         ((x-cnd7758
                           (letrec*
                            ((x7759
                              (begin
                                (write '(funapp 1210 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1210 56))
                              (display "\n")
                              (eqv? x7759 k)))))
                         (if x-cnd7758
                           (begin
                             (write '(funapp 1212 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7760
                              (begin
                                (write '(funapp 1213 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1213 55))
                              (display "\n")
                              (assq k x7760)))))))))
                   g7755)))
               (not (lambda (x) (letrec* ((g7761 (if x #f #t))) g7761)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7762
                     (begin
                       (write '(funapp 1217 50))
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
                          (write '(funapp 1221 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1221 57))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 1224 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        #f
                        (letrec*
                         ((x-cnd7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1229 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1229 55))
                              (display "\n")
                              (eq? x7768 e)))))
                         (if x-cnd7767
                           l
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1232 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1232 55))
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
                                (write '(funapp 1241 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1241 61))
                              (display "\n")
                              (car x7773)))))
                         (begin
                           (write '(funapp 1242 26))
                           (display "\n")
                           (cdr x7772)))))
                      (begin
                        (write '(funapp 1243 23))
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
                          (write '(funapp 1248 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1248 57))
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
                                  (write '(funapp 1256 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7778
                                0
                                (letrec*
                                 ((x7779
                                   (letrec*
                                    ((x7780
                                      (begin
                                        (write '(funapp 1261 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1261 63))
                                      (display "\n")
                                      (rec x7780)))))
                                 (begin
                                   (write '(funapp 1262 34))
                                   (display "\n")
                                   (+ 1 x7779)))))))
                           g7777))))
                      (letrec*
                       ((g7781
                         (begin
                           (write '(funapp 1264 40))
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
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7785))))
                    (g7783
                     (letrec*
                      ((x7786
                        (begin
                          (write '(funapp 1270 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1270 58))
                        (display "\n")
                        (assert x7786))))
                    (g7784
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1273 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7787
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1275 52))
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
                          (write '(funapp 1281 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1281 65))
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
                             (write '(funapp 1288 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1288 58))
                           (display "\n")
                           (car x7792)))))
                      (begin
                        (write '(funapp 1289 23))
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
                          (write '(funapp 1294 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1294 57))
                        (display "\n")
                        (assert x7795))))
                    (g7794
                     (letrec*
                      ((x-cnd7796
                        (begin
                          (write '(funapp 1297 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7796
                        #f
                        (letrec*
                         ((x-cnd7797
                           (letrec*
                            ((x7798
                              (begin
                                (write '(funapp 1302 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1302 56))
                              (display "\n")
                              (equal? x7798 k)))))
                         (if x-cnd7797
                           (begin
                             (write '(funapp 1304 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7799
                              (begin
                                (write '(funapp 1305 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1305 55))
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
                          (write '(funapp 1310 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1310 55))
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
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7805))))
                    (g7803
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1316 58))
                        (display "\n")
                        (assert x7806))))
                    (g7804
                     (letrec*
                      ((x7807
                        (begin
                          (write '(funapp 1317 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1317 63))
                        (display "\n")
                        (not x7807)))))
                   g7804)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7808
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1324 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7809
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1326 52))
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
                          (write '(funapp 1332 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1332 62))
                        (display "\n")
                        (assert x7813))))
                    (g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1333 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1333 57))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x-cnd7815
                        (begin
                          (write '(funapp 1336 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7815
                        #t
                        (letrec*
                         ((x-cnd7816
                           (begin
                             (write '(funapp 1340 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7816
                           (letrec*
                            ((g7817
                              (letrec*
                               ((x7819
                                 (begin
                                   (write '(funapp 1343 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1343 64))
                                 (display "\n")
                                 (f x7819))))
                             (g7818
                              (letrec*
                               ((x7820
                                 (begin
                                   (write '(funapp 1345 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1345 58))
                                 (display "\n")
                                 (for-each f x7820)))))
                            g7818)
                           (begin
                             (write '(funapp 1347 27))
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
                          (write '(funapp 1352 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1352 59))
                        (display "\n")
                        (assert x7823))))
                    (g7822
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 1354 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7824
                        (begin
                          (write '(funapp 1354 67))
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
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7828))))
                    (g7826
                     (letrec*
                      ((x7829
                        (begin
                          (write '(funapp 1360 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1360 58))
                        (display "\n")
                        (assert x7829))))
                    (g7827
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1363 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7830
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1365 52))
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
                                (write '(funapp 1375 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1375 61))
                              (display "\n")
                              (cdr x7834)))))
                         (begin
                           (write '(funapp 1376 26))
                           (display "\n")
                           (cdr x7833)))))
                      (begin
                        (write '(funapp 1377 23))
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
                             (write '(funapp 1385 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1385 58))
                           (display "\n")
                           (abs x7839))))
                       (x7837
                        (begin
                          (write '(funapp 1386 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1387 23))
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
                          (write '(funapp 1393 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1393 59))
                        (display "\n")
                        (assert x7842))))
                    (g7841
                     (letrec*
                      ((x7843
                        (begin
                          (write '(funapp 1394 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1394 56))
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
                          (write '(funapp 1399 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1399 57))
                        (display "\n")
                        (assert x7848))))
                    (g7845
                     (letrec*
                      ((x7849
                        (begin
                          (write '(funapp 1400 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1400 63))
                        (display "\n")
                        (assert x7849))))
                    (g7846
                     (letrec*
                      ((x7850
                        (letrec*
                         ((x7851
                           (begin
                             (write '(funapp 1403 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1403 61))
                           (display "\n")
                           (< index x7851)))))
                      (begin
                        (write '(funapp 1404 23))
                        (display "\n")
                        (assert x7850))))
                    (g7847
                     (letrec*
                      ((x-cnd7852
                        (begin
                          (write '(funapp 1407 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7852
                        (begin
                          (write '(funapp 1409 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1411 34))
                             (display "\n")
                             (cdr l)))
                          (x7853
                           (begin
                             (write '(funapp 1411 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1412 26))
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
                          (write '(funapp 1419 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7856
                        a
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1422 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1422 57))
                           (display "\n")
                           (gcd b x7857)))))))
                   g7855)))
               (member
                (lambda (x l)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1429 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7859
                        empty
                        (letrec*
                         ((x-cnd7860
                           (letrec*
                            ((x7861
                              (begin
                                (write '(funapp 1434 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1434 55))
                              (display "\n")
                              (equal? x x7861)))))
                         (if x-cnd7860
                           l
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 1437 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1437 55))
                              (display "\n")
                              (member x x7862)))))))))
                   g7858))))
              (letrec*
               ((g7863
                 (begin
                   (write '(funapp 1441 18))
                   (display "\n")
                   ((lambda (j7331 k7332 f7333)
                      (letrec*
                       ((g7864
                         (lambda ()
                           (letrec*
                            ((g7865
                              (letrec*
                               ((x7867
                                 (letrec*
                                  ((x7869
                                    (begin
                                      (write '(funapp 1450 41))
                                      (display "\n")
                                      (listof any/c)))
                                   (x7868
                                    (begin
                                      (write '(funapp 1450 64))
                                      (display "\n")
                                      (listof any/c))))
                                  (begin
                                    (write '(funapp 1451 33))
                                    (display "\n")
                                    (any/c x7869 x7868))))
                                (x7866
                                 (begin
                                   (write '(funapp 1452 38))
                                   (display "\n")
                                   (f7333))))
                               (begin
                                 (write '(funapp 1453 30))
                                 (display "\n")
                                 (x7867 j7331 k7332 x7866)))))
                            g7865))))
                       g7864))
                    (begin (write '(funapp 1456 18)) (display "\n") 'module)
                    (begin (write '(funapp 1457 18)) (display "\n") 'importer)
                    member))))
               g7863))))
           g7347))))
       g7345)))
    g7344)))
