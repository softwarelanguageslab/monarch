(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7339 #t)) g7339)))
    (meta (lambda (v) (letrec* ((g7340 v)) g7340)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7341
          (letrec*
           ((g7342
             (letrec*
              ((x-e7343 lst))
              (letrec*
               ((v1742 x-e7343))
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
                   ((x-cnd7344
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7344
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
           g7342)))
        g7341)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7345 (lambda (v) (letrec* ((g7346 v)) g7346)))) g7345)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7347
          (letrec*
           ((x7348 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7348)))))
        g7347))))
   (letrec*
    ((g7349
      (letrec*
       ((g7350
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
           ((g7351 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7352
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7353
                     (lambda (k j lst)
                       (letrec*
                        ((g7354
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7355
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7355))
                             lst))))
                        g7354))))
                   g7353)))
               (real?/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7269))))
                      (if x-cnd7357
                        g7269
                        (begin
                          (write '(blame g7267 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7356)))
               (boolean?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7272))))
                      (if x-cnd7359
                        g7272
                        (begin
                          (write '(blame g7270 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7358)))
               (number?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7275))))
                      (if x-cnd7361
                        g7275
                        (begin
                          (write '(blame g7273 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7360)))
               (any/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7364 #t)) g7364)) g7278))))
                      (if x-cnd7363
                        g7278
                        (begin
                          (write '(blame g7276 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7362)))
               (any?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7367 #t)) g7367)) g7281))))
                      (if x-cnd7366
                        g7281
                        (begin
                          (write '(blame g7279 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7365)))
               (cons?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7284))))
                      (if x-cnd7369
                        g7284
                        (begin
                          (write '(blame g7282 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7368)))
               (pair?/c
                (lambda (g7285 g7286 g7287)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7287))))
                      (if x-cnd7371
                        g7287
                        (begin
                          (write '(blame g7285 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7285)))))))
                   g7370)))
               (integer?/c
                (lambda (g7288 g7289 g7290)
                  (letrec*
                   ((g7372
                     (letrec*
                      ((x-cnd7373
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7290))))
                      (if x-cnd7373
                        g7290
                        (begin
                          (write '(blame g7288 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7288)))))))
                   g7372)))
               (symbol?/c
                (lambda (g7291 g7292 g7293)
                  (letrec*
                   ((g7374
                     (letrec*
                      ((x-cnd7375
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7293))))
                      (if x-cnd7375
                        g7293
                        (begin
                          (write '(blame g7291 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7291)))))))
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
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7378
                             (begin
                               (write '(funapp 153 42))
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
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7381
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7385
                                (letrec*
                                 ((x7386
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7386))))
                               (x7382
                                (letrec*
                                 ((x7384
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7383
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7384 k j x7383)))))
                              (begin
                                (write '(funapp 176 31))
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
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7389)))))
                   g7388)))
               (nonzero?/c
                (lambda (g7294 g7295 g7296)
                  (letrec*
                   ((g7390
                     (letrec*
                      ((x-cnd7391
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7392
                                (letrec*
                                 ((x7393
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7393)))))
                              g7392))
                           g7296))))
                      (if x-cnd7391
                        g7296
                        (begin
                          (write '(blame g7294 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7294)))))))
                   g7390)))
               (meta (lambda (v) (letrec* ((g7394 v)) g7394)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7299 k7300 f7301)
                     (letrec*
                      ((g7396
                        (lambda (g7297 g7298)
                          (letrec*
                           ((g7397
                             (letrec*
                              ((x7398
                                (letrec*
                                 ((x7400
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7299 k7300 g7297)))
                                  (x7399
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7299 k7300 g7298))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7301 x7400 x7399)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7299 k7300 x7398)))))
                           g7397))))
                      g7396))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7395
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7395)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7304 k7305 f7306)
                     (letrec*
                      ((g7402
                        (lambda (g7302 g7303)
                          (letrec*
                           ((g7403
                             (letrec*
                              ((x7404
                                (letrec*
                                 ((x7406
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7304 k7305 g7302)))
                                  (x7405
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7304 k7305 g7303))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7306 x7406 x7405)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7304 k7305 x7404)))))
                           g7403))))
                      g7402))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7401
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7401)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7309 k7310 f7311)
                     (letrec*
                      ((g7408
                        (lambda (g7307 g7308)
                          (letrec*
                           ((g7409
                             (letrec*
                              ((x7410
                                (letrec*
                                 ((x7412
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7309 k7310 g7307)))
                                  (x7411
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7309 k7310 g7308))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7311 x7412 x7411)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7309 k7310 x7410)))))
                           g7409))))
                      g7408))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7407
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7407)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7314 k7315 f7316)
                     (letrec*
                      ((g7414
                        (lambda (g7312 g7313)
                          (letrec*
                           ((g7415
                             (letrec*
                              ((x7416
                                (letrec*
                                 ((x7418
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7314 k7315 g7312)))
                                  (x7417
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7314 k7315 g7313))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7316 x7418 x7417)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7314 k7315 x7416)))))
                           g7415))))
                      g7414))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7413
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7413)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7318 k7319 f7320)
                     (letrec*
                      ((g7420
                        (lambda (g7317)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7423
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7318 k7319 g7317))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7320 x7423)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7318 k7319 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7419)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7322 k7323 f7324)
                     (letrec*
                      ((g7425
                        (lambda (g7321)
                          (letrec*
                           ((g7426
                             (letrec*
                              ((x7427
                                (letrec*
                                 ((x7428
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7322 k7323 g7321))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7324 x7428)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7322 k7323 x7427)))))
                           g7426))))
                      g7425))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7424
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7424)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7327 k7328 f7329)
                     (letrec*
                      ((g7430
                        (lambda (g7325 g7326)
                          (letrec*
                           ((g7431
                             (letrec*
                              ((x7432
                                (letrec*
                                 ((x7434
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7327 k7328 g7325)))
                                  (x7433
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7327 k7328 g7326))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7329 x7434 x7433)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7327 k7328 x7432)))))
                           g7431))))
                      g7430))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7429
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7429)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7331 k7332 f7333)
                     (letrec*
                      ((g7436
                        (lambda (g7330)
                          (letrec*
                           ((g7437
                             (letrec*
                              ((x7438
                                (letrec*
                                 ((x7439
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7331 k7332 g7330))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7333 x7439)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7331 k7332 x7438)))))
                           g7437))))
                      g7436))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7435
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7435)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7336 k7337 f7338)
                     (letrec*
                      ((g7441
                        (lambda (g7334 g7335)
                          (letrec*
                           ((g7442
                             (letrec*
                              ((x7443
                                (letrec*
                                 ((x7445
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7336 k7337 g7334)))
                                  (x7444
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7336 k7337 g7335))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7338 x7445 x7444)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7336 k7337 x7443)))))
                           g7442))))
                      g7441))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7440
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7440)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7446
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
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
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7449)))))
                      (begin
                        (write '(funapp 382 23))
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
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7453))))
                    (g7451
                     (letrec*
                      ((x7454
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7454))))
                    (g7452
                     (letrec*
                      ((x-cnd7455
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7455
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7458
                           (letrec*
                            ((x7459
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7459))))
                          (x7456
                           (letrec*
                            ((x7457
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7457)))))
                         (begin
                           (write '(funapp 398 26))
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
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
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
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7465)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7464)))))
                      (begin
                        (write '(funapp 414 23))
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
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7469)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7468)))))
                      (begin
                        (write '(funapp 425 23))
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
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7473))))
                    (g7471
                     (letrec*
                      ((x7474
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7474))))
                    (g7472
                     (letrec*
                      ((output-port
                        (begin
                          (write '(funapp 436 37))
                          (display "\n")
                          (open-output-file filename)))
                       (res
                        (begin
                          (write '(funapp 437 29))
                          (display "\n")
                          (proc output-port))))
                      (letrec*
                       ((g7475
                         (begin
                           (write '(funapp 439 32))
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
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7479)))))
                      (begin
                        (write '(funapp 448 23))
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
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7483)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7482)))))
                      (begin
                        (write '(funapp 459 23))
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
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7486))))
                    (g7485
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7487
                        #f
                        (letrec*
                         ((x-cnd7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7489 k)))))
                         (if x-cnd7488
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
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
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
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
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7495))))
                    (g7494
                     (letrec*
                      ((x-cnd7496
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7496
                        ""
                        (letrec*
                         ((x7499
                           (letrec*
                            ((x7500
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7500))))
                          (x7497
                           (letrec*
                            ((x7498
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7498)))))
                         (begin
                           (write '(funapp 496 26))
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
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7504))))
                    (g7502
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7505))))
                    (g7503
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7506
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
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
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7510)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7509)))))
                      (begin
                        (write '(funapp 519 23))
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
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7514))))
                    (g7512
                     (letrec*
                      ((x7515
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7515))))
                    (g7513
                     (letrec*
                      ((x-cnd7516
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7516
                        x
                        (letrec*
                         ((x7518
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7517
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7518 x7517)))))))
                   g7513)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7519
                     (begin (write '(funapp 535 49)) (display "\n") '())))
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
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7522)))))
                      (if x-cnd7521
                        (letrec*
                         ((x7523 #\z))
                         (begin
                           (write '(funapp 544 48))
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
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7526))))
                    (g7525
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7527
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
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
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
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
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7532 10)))))
                            (letrec*
                             ((g7533
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7534
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
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
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7537)))))
                      (begin
                        (write '(funapp 597 23))
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
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7540))))
                    (g7539
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7539)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7541 #f)) g7541)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7542
                     (letrec*
                      ((x7543
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
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
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7546))))
                    (g7545
                     (letrec*
                      ((x-cnd7547
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7547
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7545)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7548
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7549
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7550
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7550
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7551
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7552
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7552
                                       (letrec*
                                        ((x-cnd7553
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7553
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7554
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7555
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7555
                                             (letrec*
                                              ((x-cnd7556
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7556
                                                (letrec*
                                                 ((x-cnd7557
                                                   (letrec*
                                                    ((x7559
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7558
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7559 x7558)))))
                                                 (if x-cnd7557
                                                   (letrec*
                                                    ((x7561
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7560
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7561 x7560)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7562
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7563
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7563
                                                (letrec*
                                                 ((x-cnd7564
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7564
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7565
                                                       (letrec*
                                                        ((x-cnd7566
                                                          (letrec*
                                                           ((x7567
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  695
                                                                  62))
                                                               (display "\n")
                                                               (vector-length
                                                                b))))
                                                           (begin
                                                             (write
                                                              '(funapp 697 60))
                                                             (display "\n")
                                                             (= x7567 n)))))
                                                        (if x-cnd7566
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7568
                                                                  (letrec*
                                                                   ((val7250
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          706
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (=
                                                                        i
                                                                        n))))
                                                                   (letrec*
                                                                    ((g7569
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7570
                                                                           (letrec*
                                                                            ((x7572
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   715
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 a
                                                                                 i)))
                                                                             (x7571
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   719
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (vector-ref
                                                                                 b
                                                                                 i))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 722
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (equal?
                                                                               x7572
                                                                               x7571)))))
                                                                         (if x-cnd7570
                                                                           (letrec*
                                                                            ((x7573
                                                                              (begin
                                                                                (write
                                                                                 '(funapp
                                                                                   728
                                                                                   79))
                                                                                (display
                                                                                 "\n")
                                                                                (+
                                                                                 i
                                                                                 1))))
                                                                            (begin
                                                                              (write
                                                                               '(funapp
                                                                                 731
                                                                                 77))
                                                                              (display
                                                                               "\n")
                                                                              (loop
                                                                               x7573)))
                                                                           #f)))))
                                                                    g7569))))
                                                                g7568))))
                                                           (letrec*
                                                            ((g7574
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7574))
                                                          #f))))
                                                     g7565))
                                                   #f))
                                                #f)))))
                                         g7562)))))
                                   g7554)))))
                             g7551)))))
                       g7549))))
                   g7548)))
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
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7578)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7577)))))
                      (begin
                        (write '(funapp 757 23))
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
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7582)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7581)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7580)))))
                   g7579)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7583
                     (begin
                       (write '(funapp 770 53))
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
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7586))))
                    (g7585
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7587
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7588 (if val7252 val7252 #f)))
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
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7592))))
                    (g7590
                     (letrec*
                      ((x7593
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7593))))
                    (g7591
                     (letrec*
                      ((input-port
                        (begin
                          (write '(funapp 798 36))
                          (display "\n")
                          (open-input-file filename)))
                       (res
                        (begin
                          (write '(funapp 799 29))
                          (display "\n")
                          (proc input-port))))
                      (letrec*
                       ((g7594
                         (begin
                           (write '(funapp 801 32))
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
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7596)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7597
                     (letrec*
                      ((x7600
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7600))))
                    (g7598
                     (letrec*
                      ((x7601
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7601))))
                    (g7599
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7602
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
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
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 823 23))
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
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7609)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 834 23))
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
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7612)))))
                      (begin
                        (write '(funapp 843 23))
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
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7615)))))
                      (begin
                        (write '(funapp 851 23))
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
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7619))))
                    (g7617
                     (letrec*
                      ((x7620
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7620))))
                    (g7618
                     (letrec*
                      ((x7621
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
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
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7625)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7624)))))
                      (begin
                        (write '(funapp 870 23))
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
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7628))))
                    (g7627
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7627)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7629
                     (begin
                       (write '(funapp 878 53))
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
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7632)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7631)))))
                   g7630)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7633
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7633)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7634
                     (letrec*
                      ((x7636
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7636))))
                    (g7635
                     (letrec*
                      ((x-cnd7637
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7637
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7640
                           (letrec*
                            ((x7641
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7641))))
                          (x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7639)))))
                         (begin
                           (write '(funapp 900 26))
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
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7645)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7644)))))
                      (begin
                        (write '(funapp 911 23))
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
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7649)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7648)))))
                      (begin
                        (write '(funapp 922 23))
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
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7652))))
                    (g7651
                     (letrec*
                      ((x7653
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
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
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7657)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7656)))))
                      (begin
                        (write '(funapp 939 23))
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
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7661))))
                    (g7659
                     (letrec*
                      ((x7662
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7662))))
                    (g7660
                     (letrec*
                      ((x-cnd7663
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7663
                        (letrec*
                         ((g7664
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7664)
                        (letrec*
                         ((x-cnd7665
                           (letrec*
                            ((x7666
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7666)))))
                         (if x-cnd7665
                           (letrec*
                            ((g7667
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7668)))))
                            g7667)
                           (letrec*
                            ((x-cnd7669
                              (letrec*
                               ((x7670
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7670)))))
                            (if x-cnd7669
                              (letrec*
                               ((g7671
                                 (letrec*
                                  ((x7673
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7672
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7673 x7672)))))
                               g7671)
                              (letrec*
                               ((x-cnd7674
                                 (letrec*
                                  ((x7675
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7675)))))
                               (if x-cnd7674
                                 (letrec*
                                  ((g7676
                                    (letrec*
                                     ((x7679
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7678
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7677
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7679 x7678 x7677)))))
                                  g7676)
                                 (letrec*
                                  ((x-cnd7680
                                    (letrec*
                                     ((x7681
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7681)))))
                                  (if x-cnd7680
                                    (letrec*
                                     ((g7682
                                       (letrec*
                                        ((x7686
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7685
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7684
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7683
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
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
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7689)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7688)))))
                                     (if x-cnd7687
                                       (letrec*
                                        ((g7690
                                          (letrec*
                                           ((x7696
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7695
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7694
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7691
                                             (letrec*
                                              ((x7692
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7692)))))
                                           (begin
                                             (write '(funapp 1019 44))
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
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7699)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7698)))))
                                        (if x-cnd7697
                                          (letrec*
                                           ((g7700
                                             (letrec*
                                              ((x7708
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7707
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7706
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7705
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7703
                                                (letrec*
                                                 ((x7704
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7704))))
                                               (x7701
                                                (letrec*
                                                 ((x7702
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7702)))))
                                              (begin
                                                (write '(funapp 1050 47))
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
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7711)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7710)))))
                                           (if x-cnd7709
                                             (letrec*
                                              ((g7712
                                                (letrec*
                                                 ((x7722
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7721
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7720
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7719
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7717
                                                   (letrec*
                                                    ((x7718
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7718))))
                                                  (x7715
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7716))))
                                                  (x7713
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7714)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
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
                                                  (write '(funapp 1097 49))
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
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7726))))
                    (g7725
                     (letrec*
                      ((x-cnd7727
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7727
                        #f
                        (letrec*
                         ((x-cnd7728
                           (letrec*
                            ((x7729
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7729 e)))))
                         (if x-cnd7728
                           l
                           (letrec*
                            ((x7730
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
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
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7734)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7733)))))
                      (begin
                        (write '(funapp 1125 23))
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
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7738)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7737)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7739
                     (begin
                       (write '(funapp 1138 53))
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
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x7742))))
                    (g7741
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7741)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7744
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
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
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x7746)))))
                   g7745)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7747
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd7748
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7748
                           (letrec*
                            ((x7749
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x7749)))
                           #f))))
                      (letrec*
                       ((g7750
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g7750))))
                   g7747)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7752
                        (letrec*
                         ((x7753
                           (letrec*
                            ((x7754
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x7754)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x7753)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x7752)))))
                   g7751)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x-cnd7756
                        (letrec*
                         ((x7757 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x7757 c)))))
                      (if x-cnd7756
                        (letrec*
                         ((x7758 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x7758)))
                        #f))))
                   g7755)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7761
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x7761))))
                    (g7760
                     (letrec*
                      ((x-cnd7762
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7762
                        #f
                        (letrec*
                         ((x-cnd7763
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x7764 k)))))
                         (if x-cnd7763
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7765
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x7765)))))))))
                   g7760)))
               (not (lambda (x) (letrec* ((g7766 (if x #f #t))) g7766)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7767
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g7767)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7768
                     (letrec*
                      ((x7770
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x7770))))
                    (g7769
                     (letrec*
                      ((x-cnd7771
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7771
                        #f
                        (letrec*
                         ((x-cnd7772
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x7773 e)))))
                         (if x-cnd7772
                           l
                           (letrec*
                            ((x7774
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x7774)))))))))
                   g7769)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7775
                     (letrec*
                      ((x7776
                        (letrec*
                         ((x7777
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x7778)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x7777)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x7776)))))
                   g7775)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7781
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x7781))))
                    (g7780
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7782
                             (letrec*
                              ((x-cnd7783
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7783
                                0
                                (letrec*
                                 ((x7784
                                   (letrec*
                                    ((x7785
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x7785)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x7784)))))))
                           g7782))))
                      (letrec*
                       ((g7786
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g7786))))
                   g7780)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((x7791
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x7791))))
                    (g7789
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7792
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7792))))
                   g7789)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x7794)))))
                   g7793)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (letrec*
                         ((x7797
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x7797)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x7796)))))
                   g7795)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7798
                     (letrec*
                      ((x7800
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x7800))))
                    (g7799
                     (letrec*
                      ((x-cnd7801
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7801
                        #f
                        (letrec*
                         ((x-cnd7802
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x7803 k)))))
                         (if x-cnd7802
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7804
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x7804)))))))))
                   g7799)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7806
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x7806)))))
                   g7805)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x7811))))
                    (g7809
                     (letrec*
                      ((x7812
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x7812)))))
                   g7809)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7814
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7814))))
                   g7813)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x7819
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x7819))))
                    (g7817
                     (letrec*
                      ((x-cnd7820
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7820
                        #t
                        (letrec*
                         ((x-cnd7821
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7821
                           (letrec*
                            ((g7822
                              (letrec*
                               ((x7824
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x7824))))
                             (g7823
                              (letrec*
                               ((x7825
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x7825)))))
                            g7823)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g7817)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7826
                     (letrec*
                      ((x7828
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x7828))))
                    (g7827
                     (letrec*
                      ((x-cnd7829
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7829
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7827)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x7833))))
                    (g7831
                     (letrec*
                      ((x7834
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x7834))))
                    (g7832
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7835
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7835))))
                   g7832)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7836
                     (letrec*
                      ((x7837
                        (letrec*
                         ((x7838
                           (letrec*
                            ((x7839
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x7839)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x7838)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x7837)))))
                   g7836)))
               (newline (lambda () (letrec* ((g7840 #f)) g7840)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7841
                     (letrec*
                      ((x7843
                        (letrec*
                         ((x7844
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x7844))))
                       (x7842
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x7843 x7842)))))
                   g7841)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x7847))))
                    (g7846
                     (letrec*
                      ((x7848
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x7848)))))
                   g7846)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x7853))))
                    (g7850
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x7854))))
                    (g7851
                     (letrec*
                      ((x7855
                        (letrec*
                         ((x7856
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x7856)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x7855))))
                    (g7852
                     (letrec*
                      ((x-cnd7857
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7857
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7859
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x7858
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x7859 x7858)))))))
                   g7852)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7860
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7861
                        a
                        (letrec*
                         ((x7862
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x7862)))))))
                   g7860)))
               (phi
                (letrec*
                 ((x7888 (begin (write '(funapp 1425 26)) (display "\n") (x1)))
                  (x7863
                   (letrec*
                    ((x7887
                      (begin (write '(funapp 1428 29)) (display "\n") (x2)))
                     (x7864
                      (letrec*
                       ((x7886
                         (begin (write '(funapp 1431 32)) (display "\n") (x3)))
                        (x7865
                         (letrec*
                          ((x7885
                            (begin
                              (write '(funapp 1434 35))
                              (display "\n")
                              (x4)))
                           (x7866
                            (letrec*
                             ((x7884
                               (begin
                                 (write '(funapp 1437 38))
                                 (display "\n")
                                 (x5)))
                              (x7867
                               (letrec*
                                ((x7883
                                  (begin
                                    (write '(funapp 1440 41))
                                    (display "\n")
                                    (x6)))
                                 (x7868
                                  (letrec*
                                   ((x7882
                                     (begin
                                       (write '(funapp 1443 44))
                                       (display "\n")
                                       (x7)))
                                    (x7869
                                     (letrec*
                                      ((x-cnd7870
                                        (letrec*
                                         ((val7259 x1))
                                         (letrec*
                                          ((g7871 (if val7259 val7259 x2)))
                                          g7871))))
                                      (if x-cnd7870
                                        (letrec*
                                         ((x-cnd7872
                                           (letrec*
                                            ((val7260 x1))
                                            (letrec*
                                             ((g7873
                                               (if val7260
                                                 val7260
                                                 (letrec*
                                                  ((val7261
                                                    (begin
                                                      (write '(funapp 1462 61))
                                                      (display "\n")
                                                      (not x2))))
                                                  (letrec*
                                                   ((g7874
                                                     (if val7261
                                                       val7261
                                                       (begin
                                                         (write
                                                          '(funapp 1467 56))
                                                         (display "\n")
                                                         (not x3)))))
                                                   g7874)))))
                                             g7873))))
                                         (if x-cnd7872
                                           (letrec*
                                            ((x-cnd7875
                                              (letrec*
                                               ((val7262 x3))
                                               (letrec*
                                                ((g7876
                                                  (if val7262 val7262 x4)))
                                                g7876))))
                                            (if x-cnd7875
                                              (letrec*
                                               ((x-cnd7877
                                                 (letrec*
                                                  ((val7263
                                                    (begin
                                                      (write '(funapp 1483 61))
                                                      (display "\n")
                                                      (not x4))))
                                                  (letrec*
                                                   ((g7878
                                                     (if val7263 val7263 x1)))
                                                   g7878))))
                                               (if x-cnd7877
                                                 (letrec*
                                                  ((x-cnd7879
                                                    (letrec*
                                                     ((val7264
                                                       (begin
                                                         (write
                                                          '(funapp 1492 64))
                                                         (display "\n")
                                                         (not x2))))
                                                     (letrec*
                                                      ((g7880
                                                        (if val7264
                                                          val7264
                                                          (begin
                                                            (write
                                                             '(funapp 1497 59))
                                                            (display "\n")
                                                            (not x3)))))
                                                      g7880))))
                                                  (if x-cnd7879
                                                    (letrec*
                                                     ((val7265 x4))
                                                     (letrec*
                                                      ((g7881
                                                        (if val7265
                                                          val7265
                                                          x2)))
                                                      g7881))
                                                    #f))
                                                 #f))
                                              #f))
                                           #f))
                                        #f))))
                                   (begin
                                     (write '(funapp 1513 36))
                                     (display "\n")
                                     (λ x7882 x7869)))))
                                (begin
                                  (write '(funapp 1514 33))
                                  (display "\n")
                                  (λ x7883 x7868)))))
                             (begin
                               (write '(funapp 1515 30))
                               (display "\n")
                               (λ x7884 x7867)))))
                          (begin
                            (write '(funapp 1516 27))
                            (display "\n")
                            (λ x7885 x7866)))))
                       (begin
                         (write '(funapp 1517 24))
                         (display "\n")
                         (λ x7886 x7865)))))
                    (begin
                      (write '(funapp 1518 21))
                      (display "\n")
                      (λ x7887 x7864)))))
                 (begin
                   (write '(funapp 1519 18))
                   (display "\n")
                   (λ x7888 x7863))))
               (try
                (letrec*
                 ((x7891 (begin (write '(funapp 1522 26)) (display "\n") (f)))
                  (x7889
                   (letrec*
                    ((val7266
                      (begin (write '(funapp 1525 31)) (display "\n") (f #t))))
                    (letrec*
                     ((g7890
                       (if val7266
                         val7266
                         (begin
                           (write '(funapp 1526 58))
                           (display "\n")
                           (f #f)))))
                     g7890))))
                 (begin
                   (write '(funapp 1527 18))
                   (display "\n")
                   (λ x7891 x7889))))
               (sat-solve-7
                (letrec*
                 ((x7920 (begin (write '(funapp 1530 26)) (display "\n") (p)))
                  (x7892
                   (letrec*
                    ((x7893
                      (letrec*
                       ((x7919
                         (begin (write '(funapp 1535 32)) (display "\n") (n1)))
                        (x7894
                         (letrec*
                          ((x7895
                            (letrec*
                             ((x7918
                               (begin
                                 (write '(funapp 1540 38))
                                 (display "\n")
                                 (n2)))
                              (x7896
                               (letrec*
                                ((x7897
                                  (letrec*
                                   ((x7917
                                     (begin
                                       (write '(funapp 1545 44))
                                       (display "\n")
                                       (n3)))
                                    (x7898
                                     (letrec*
                                      ((x7899
                                        (letrec*
                                         ((x7916
                                           (begin
                                             (write '(funapp 1550 50))
                                             (display "\n")
                                             (n4)))
                                          (x7900
                                           (letrec*
                                            ((x7901
                                              (letrec*
                                               ((x7915
                                                 (begin
                                                   (write '(funapp 1555 56))
                                                   (display "\n")
                                                   (n5)))
                                                (x7902
                                                 (letrec*
                                                  ((x7903
                                                    (letrec*
                                                     ((x7914
                                                       (begin
                                                         (write
                                                          '(funapp 1560 62))
                                                         (display "\n")
                                                         (n6)))
                                                      (x7904
                                                       (letrec*
                                                        ((x7905
                                                          (letrec*
                                                           ((x7913
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  1565
                                                                  68))
                                                               (display "\n")
                                                               (n7)))
                                                            (x7906
                                                             (letrec*
                                                              ((x7907
                                                                (letrec*
                                                                 ((x7908
                                                                   (letrec*
                                                                    ((x7909
                                                                      (letrec*
                                                                       ((x7910
                                                                         (letrec*
                                                                          ((x7911
                                                                            (letrec*
                                                                             ((x7912
                                                                               (begin
                                                                                 (write
                                                                                  '(funapp
                                                                                    1579
                                                                                    80))
                                                                                 (display
                                                                                  "\n")
                                                                                 (p
                                                                                  n1))))
                                                                             (begin
                                                                               (write
                                                                                '(funapp
                                                                                  1581
                                                                                  78))
                                                                               (display
                                                                                "\n")
                                                                               (x7912
                                                                                n2)))))
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               1583
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (x7911
                                                                             n3)))))
                                                                       (begin
                                                                         (write
                                                                          '(funapp
                                                                            1585
                                                                            72))
                                                                         (display
                                                                          "\n")
                                                                         (x7910
                                                                          n4)))))
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         1587
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (x7909
                                                                       n5)))))
                                                                 (begin
                                                                   (write
                                                                    '(funapp
                                                                      1589
                                                                      66))
                                                                   (display
                                                                    "\n")
                                                                   (x7908
                                                                    n6)))))
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   1590
                                                                   63))
                                                                (display "\n")
                                                                (x7907 n7)))))
                                                           (begin
                                                             (write
                                                              '(funapp
                                                                1591
                                                                60))
                                                             (display "\n")
                                                             (λ x7913
                                                               x7906)))))
                                                        (begin
                                                          (write
                                                           '(funapp 1592 57))
                                                          (display "\n")
                                                          (try x7905)))))
                                                     (begin
                                                       (write
                                                        '(funapp 1593 54))
                                                       (display "\n")
                                                       (λ x7914 x7904)))))
                                                  (begin
                                                    (write '(funapp 1594 51))
                                                    (display "\n")
                                                    (try x7903)))))
                                               (begin
                                                 (write '(funapp 1595 48))
                                                 (display "\n")
                                                 (λ x7915 x7902)))))
                                            (begin
                                              (write '(funapp 1596 45))
                                              (display "\n")
                                              (try x7901)))))
                                         (begin
                                           (write '(funapp 1597 42))
                                           (display "\n")
                                           (λ x7916 x7900)))))
                                      (begin
                                        (write '(funapp 1598 39))
                                        (display "\n")
                                        (try x7899)))))
                                   (begin
                                     (write '(funapp 1599 36))
                                     (display "\n")
                                     (λ x7917 x7898)))))
                                (begin
                                  (write '(funapp 1600 33))
                                  (display "\n")
                                  (try x7897)))))
                             (begin
                               (write '(funapp 1601 30))
                               (display "\n")
                               (λ x7918 x7896)))))
                          (begin
                            (write '(funapp 1602 27))
                            (display "\n")
                            (try x7895)))))
                       (begin
                         (write '(funapp 1603 24))
                         (display "\n")
                         (λ x7919 x7894)))))
                    (begin
                      (write '(funapp 1604 21))
                      (display "\n")
                      (try x7893)))))
                 (begin
                   (write '(funapp 1605 18))
                   (display "\n")
                   (λ x7920 x7892)))))
              (letrec*
               ((g7921
                 (begin
                   (write '(funapp 1606 32))
                   (display "\n")
                   (sat-solve-7 phi))))
               g7921))))
           g7352))))
       g7350)))
    g7349)))
