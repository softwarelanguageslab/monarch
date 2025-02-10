(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7331 #t)) g7331)))
    (meta (lambda (v) (letrec* ((g7332 v)) g7332)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7333
          (letrec*
           ((g7334
             (letrec*
              ((x-e7335 lst))
              (letrec*
               ((v1742 x-e7335))
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
                   ((x-cnd7336
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7336
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
           g7334)))
        g7333)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7337 (lambda (v) (letrec* ((g7338 v)) g7338)))) g7337)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7339
          (letrec*
           ((x7340 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7340)))))
        g7339))))
   (letrec*
    ((g7341
      (letrec*
       ((g7342
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
           ((g7343 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7344
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7345
                     (lambda (k j lst)
                       (letrec*
                        ((g7346
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7347
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7347))
                             lst))))
                        g7346))))
                   g7345)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7348
                     (letrec*
                      ((x-cnd7349
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7349
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7348)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7350
                     (letrec*
                      ((x-cnd7351
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7351
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7350)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7352
                     (letrec*
                      ((x-cnd7353
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7353
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7352)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7356 #t)) g7356)) g7269))))
                      (if x-cnd7355
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7354)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7357
                     (letrec*
                      ((x-cnd7358
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7359 #t)) g7359)) g7272))))
                      (if x-cnd7358
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7357)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7361
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7360)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7362
                     (letrec*
                      ((x-cnd7363
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7363
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7362)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7364
                     (letrec*
                      ((x-cnd7365
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7365
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7364)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7366
                     (lambda (k j v)
                       (letrec*
                        ((g7367
                          (letrec*
                           ((x-cnd7368
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7368
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7367))))
                   g7366)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7369
                     (lambda (k j v)
                       (letrec*
                        ((g7370
                          (letrec*
                           ((x-cnd7371
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7371
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7375
                                (letrec*
                                 ((x7376
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7376))))
                               (x7372
                                (letrec*
                                 ((x7374
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7373
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7374 k j x7373)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7375 x7372)))))))
                        g7370))))
                   g7369)))
               (any? (lambda (v) (letrec* ((g7377 #t)) g7377)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7378
                     (letrec*
                      ((x7379
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7379)))))
                   g7378)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7380
                     (letrec*
                      ((x-cnd7381
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7382
                                (letrec*
                                 ((x7383
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7383)))))
                              g7382))
                           g7284))))
                      (if x-cnd7381
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7380)))
               (meta (lambda (v) (letrec* ((g7384 v)) g7384)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7386
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7387
                             (letrec*
                              ((x7388
                                (letrec*
                                 ((x7390
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7389
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7390 x7389)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7388)))))
                           g7387))))
                      g7386))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7385
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7385)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7392
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7393
                             (letrec*
                              ((x7394
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7395
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7396 x7395)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7394)))))
                           g7393))))
                      g7392))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7391
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7391)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7398
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7399
                             (letrec*
                              ((x7400
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7401
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7402 x7401)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7400)))))
                           g7399))))
                      g7398))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7397
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7397)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7404
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7405
                             (letrec*
                              ((x7406
                                (letrec*
                                 ((x7408
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7407
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7408 x7407)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7406)))))
                           g7405))))
                      g7404))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7403
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7403)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7410
                        (lambda (g7305)
                          (letrec*
                           ((g7411
                             (letrec*
                              ((x7412
                                (letrec*
                                 ((x7413
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7413)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7412)))))
                           g7411))))
                      g7410))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7409
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7409)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
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
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7418)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7417)))))
                           g7416))))
                      g7415))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7414
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7414)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7420
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7421
                             (letrec*
                              ((x7422
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7423
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7424 x7423)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7422)))))
                           g7421))))
                      g7420))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7419
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7419)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7426
                        (lambda (g7318)
                          (letrec*
                           ((g7427
                             (letrec*
                              ((x7428
                                (letrec*
                                 ((x7429
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7429)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7428)))))
                           g7427))))
                      g7426))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7425
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7425)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7431
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7432
                             (letrec*
                              ((x7433
                                (letrec*
                                 ((x7435
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7434
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7435 x7434)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7433)))))
                           g7432))))
                      g7431))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7430
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7430)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7436
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7436)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7437
                     (letrec*
                      ((x7438
                        (letrec*
                         ((x7439
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7439)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7438)))))
                   g7437)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7440
                     (letrec*
                      ((x7443
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7443))))
                    (g7441
                     (letrec*
                      ((x7444
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7444))))
                    (g7442
                     (letrec*
                      ((x-cnd7445
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7445
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7448
                           (letrec*
                            ((x7449
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7449))))
                          (x7446
                           (letrec*
                            ((x7447
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7447)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7448 x7446)))))))
                   g7442)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7450
                     (letrec*
                      ((x7451
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7451)))))
                   g7450)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7452
                     (letrec*
                      ((x7453
                        (letrec*
                         ((x7454
                           (letrec*
                            ((x7455
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7455)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7454)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7453)))))
                   g7452)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7459)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7458)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7457)))))
                   g7456)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7460
                     (letrec*
                      ((x7463
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7463))))
                    (g7461
                     (letrec*
                      ((x7464
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7464))))
                    (g7462
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
                       ((g7465
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7466 res))
                       g7466))))
                   g7462)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7467
                     (letrec*
                      ((x7468
                        (letrec*
                         ((x7469
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7469)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7468)))))
                   g7467)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7470
                     (letrec*
                      ((x7471
                        (letrec*
                         ((x7472
                           (letrec*
                            ((x7473
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7473)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7472)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7471)))))
                   g7470)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7474
                     (letrec*
                      ((x7476
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7476))))
                    (g7475
                     (letrec*
                      ((x-cnd7477
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7477
                        #f
                        (letrec*
                         ((x-cnd7478
                           (letrec*
                            ((x7479
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7479 k)))))
                         (if x-cnd7478
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7480
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7480)))))))))
                   g7475)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7481
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7482)))))
                   g7481)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7483
                     (letrec*
                      ((x7485
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7485))))
                    (g7484
                     (letrec*
                      ((x-cnd7486
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7486
                        ""
                        (letrec*
                         ((x7489
                           (letrec*
                            ((x7490
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7490))))
                          (x7487
                           (letrec*
                            ((x7488
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7488)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7489 x7487)))))))
                   g7484)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7491
                     (letrec*
                      ((x7494
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7494))))
                    (g7492
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7495))))
                    (g7493
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7496
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7496))))
                   g7493)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7498
                        (letrec*
                         ((x7499
                           (letrec*
                            ((x7500
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7500)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7499)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7498)))))
                   g7497)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7501
                     (letrec*
                      ((x7504
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7504))))
                    (g7502
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7505))))
                    (g7503
                     (letrec*
                      ((x-cnd7506
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7506
                        x
                        (letrec*
                         ((x7508
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7507
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7508 x7507)))))))
                   g7503)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7509
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7509)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7510
                     (letrec*
                      ((x-cnd7511
                        (letrec*
                         ((x7512 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7512)))))
                      (if x-cnd7511
                        (letrec*
                         ((x7513 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7513)))
                        #f))))
                   g7510)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7514
                     (letrec*
                      ((x7516
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7516))))
                    (g7515
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7517
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7518 (if val7243 val7243 #f)))
                             g7518)))))
                       g7517))))
                   g7515)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7519
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7520
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7520 9)))))
                      (letrec*
                       ((g7521
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7522
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7522 10)))))
                            (letrec*
                             ((g7523
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7524
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7524 32))))))
                             g7523)))))
                       g7521))))
                   g7519)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((x7526
                        (letrec*
                         ((x7527
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7527)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7526)))))
                   g7525)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7528
                     (letrec*
                      ((x7530
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7530))))
                    (g7529
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7529)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7531 #f)) g7531)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7532
                     (letrec*
                      ((x7533
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7533)))))
                   g7532)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7536))))
                    (g7535
                     (letrec*
                      ((x-cnd7537
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7537
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7535)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7539
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7541
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7540
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7541 x7540)))))
                            (letrec*
                             ((g7542
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7545
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7544
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7543
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7545 x7544 x7543)))))
                                  (letrec*
                                   ((g7546
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7554
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7553
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7550
                                             (letrec*
                                              ((x7552
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7551
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7552 x7551))))
                                            (x7547
                                             (letrec*
                                              ((x7549
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7548
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7549 x7548)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7554 x7553 x7550 x7547)))))
                                        (letrec*
                                         ((g7555
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7571
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7570
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7556
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7557
                                                    (letrec*
                                                     ((x7568
                                                       (letrec*
                                                        ((x7569
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
                                                          (= x7569 n))))
                                                      (x7558
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7559
                                                               (letrec*
                                                                ((x7566
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7560
                                                                  (letrec*
                                                                   ((x7563
                                                                     (letrec*
                                                                      ((x7565
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
                                                                       (x7564
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
                                                                         x7565
                                                                         x7564))))
                                                                    (x7561
                                                                     (letrec*
                                                                      ((x7562
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
                                                                         x7562)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7563
                                                                          x7561)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7566
                                                                      x7560)))))
                                                             g7559))))
                                                        (letrec*
                                                         ((g7567
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7567))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7568 x7558)))))
                                                  g7557))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7571 x7570 x7556))))))
                                         g7555)))))
                                   g7546)))))
                             g7542)))))
                       g7539))))
                   g7538)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7575)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7574)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7573)))))
                   g7572)))
               (caaddr
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
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7579)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7578)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7577)))))
                   g7576)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7580
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7580)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7581
                     (letrec*
                      ((x7583
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7583))))
                    (g7582
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7584
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7585 (if val7251 val7251 #f)))
                             g7585)))))
                       g7584))))
                   g7582)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7586
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7589))))
                    (g7587
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7590))))
                    (g7588
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
                       ((g7591
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7592 res))
                       g7592))))
                   g7588)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7593
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7593)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7594
                     (letrec*
                      ((x7597
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7597))))
                    (g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7599
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7599))))
                   g7596)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7601
                        (letrec*
                         ((x7602
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7602)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7601)))))
                   g7600)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7603
                     (letrec*
                      ((x7604
                        (letrec*
                         ((x7605
                           (letrec*
                            ((x7606
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7606)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7605)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7604)))))
                   g7603)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7607
                     (letrec*
                      ((x7608
                        (letrec*
                         ((x7609
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7609)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7608)))))
                   g7607)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7610
                     (letrec*
                      ((x7611
                        (letrec*
                         ((x7612
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7612)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7611)))))
                   g7610)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7616
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7616))))
                    (g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7618)))))
                   g7615)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
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
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7622)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7621)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7620)))))
                   g7619)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x7625
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7625))))
                    (g7624
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7624)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7626
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7626)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x7628
                        (letrec*
                         ((x7629
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7629)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7628)))))
                   g7627)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7630
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7630)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7631
                     (letrec*
                      ((x7633
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7633))))
                    (g7632
                     (letrec*
                      ((x-cnd7634
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7634
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7637
                           (letrec*
                            ((x7638
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7638))))
                          (x7635
                           (letrec*
                            ((x7636
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7636)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7637 x7635)))))))
                   g7632)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7642)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7641)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7640)))))
                   g7639)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7646)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7645)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7644)))))
                   g7643)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7647
                     (letrec*
                      ((x7649
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7649))))
                    (g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7650)))))
                   g7648)))
               (caadar
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
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7654)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7653)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7652)))))
                   g7651)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7655
                     (letrec*
                      ((x7658
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7658))))
                    (g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x-cnd7660
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7660
                        (letrec*
                         ((g7661
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7661)
                        (letrec*
                         ((x-cnd7662
                           (letrec*
                            ((x7663
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7663)))))
                         (if x-cnd7662
                           (letrec*
                            ((g7664
                              (letrec*
                               ((x7665
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7665)))))
                            g7664)
                           (letrec*
                            ((x-cnd7666
                              (letrec*
                               ((x7667
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7667)))))
                            (if x-cnd7666
                              (letrec*
                               ((g7668
                                 (letrec*
                                  ((x7670
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7669
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7670 x7669)))))
                               g7668)
                              (letrec*
                               ((x-cnd7671
                                 (letrec*
                                  ((x7672
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7672)))))
                               (if x-cnd7671
                                 (letrec*
                                  ((g7673
                                    (letrec*
                                     ((x7676
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7674
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7676 x7675 x7674)))))
                                  g7673)
                                 (letrec*
                                  ((x-cnd7677
                                    (letrec*
                                     ((x7678
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7678)))))
                                  (if x-cnd7677
                                    (letrec*
                                     ((g7679
                                       (letrec*
                                        ((x7683
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7682
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7681
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7680
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7683 x7682 x7681 x7680)))))
                                     g7679)
                                    (letrec*
                                     ((x-cnd7684
                                       (letrec*
                                        ((x7685
                                          (letrec*
                                           ((x7686
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7686)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7685)))))
                                     (if x-cnd7684
                                       (letrec*
                                        ((g7687
                                          (letrec*
                                           ((x7693
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7690
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7688
                                             (letrec*
                                              ((x7689
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7689)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7693
                                              x7692
                                              x7691
                                              x7690
                                              x7688)))))
                                        g7687)
                                       (letrec*
                                        ((x-cnd7694
                                          (letrec*
                                           ((x7695
                                             (letrec*
                                              ((x7696
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7696)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7695)))))
                                        (if x-cnd7694
                                          (letrec*
                                           ((g7697
                                             (letrec*
                                              ((x7705
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7704
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7703
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7702
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7700
                                                (letrec*
                                                 ((x7701
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7701))))
                                               (x7698
                                                (letrec*
                                                 ((x7699
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7699)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7705
                                                 x7704
                                                 x7703
                                                 x7702
                                                 x7700
                                                 x7698)))))
                                           g7697)
                                          (letrec*
                                           ((x-cnd7706
                                             (letrec*
                                              ((x7707
                                                (letrec*
                                                 ((x7708
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7708)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7707)))))
                                           (if x-cnd7706
                                             (letrec*
                                              ((g7709
                                                (letrec*
                                                 ((x7719
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7718
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7717
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7716
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7714
                                                   (letrec*
                                                    ((x7715
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7715))))
                                                  (x7712
                                                   (letrec*
                                                    ((x7713
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7713))))
                                                  (x7710
                                                   (letrec*
                                                    ((x7711
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7711)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7719
                                                    x7718
                                                    x7717
                                                    x7716
                                                    x7714
                                                    x7712
                                                    x7710)))))
                                              g7709)
                                             (letrec*
                                              ((g7720
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7720)))))))))))))))))))
                   g7657)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7721
                     (letrec*
                      ((x7723
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7723))))
                    (g7722
                     (letrec*
                      ((x-cnd7724
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7724
                        #f
                        (letrec*
                         ((x-cnd7725
                           (letrec*
                            ((x7726
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7726 e)))))
                         (if x-cnd7725
                           l
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7727)))))))))
                   g7722)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7731)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7730)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7729)))))
                   g7728)))
               (cadddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7735)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7734)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7733)))))
                   g7732)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7736
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7736)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7739))))
                    (g7738
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7738)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7740
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7741
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7741))))
                   g7740)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7743
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7743)))))
                   g7742)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7747
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7745
                           (letrec*
                            ((x7746
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7746)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7747 x7745)))))
                      (letrec*
                       ((g7748
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7748))))
                   g7744)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (letrec*
                         ((x7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7752)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7751)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7750)))))
                   g7749)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7753
                     (letrec*
                      ((x-cnd7754
                        (letrec*
                         ((x7755 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7755 c)))))
                      (if x-cnd7754
                        (letrec*
                         ((x7756 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7756)))
                        #f))))
                   g7753)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7757
                     (letrec*
                      ((x7759
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7759))))
                    (g7758
                     (letrec*
                      ((x-cnd7760
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7760
                        #f
                        (letrec*
                         ((x-cnd7761
                           (letrec*
                            ((x7762
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7762 k)))))
                         (if x-cnd7761
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7763)))))))))
                   g7758)))
               (not (lambda (x) (letrec* ((g7764 (if x #f #t))) g7764)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7765
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7765)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7766
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7768))))
                    (g7767
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7769
                        #f
                        (letrec*
                         ((x-cnd7770
                           (letrec*
                            ((x7771
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7771 e)))))
                         (if x-cnd7770
                           l
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7772)))))))))
                   g7767)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x7774
                        (letrec*
                         ((x7775
                           (letrec*
                            ((x7776
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7776)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7775)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7774)))))
                   g7773)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7780
                             (letrec*
                              ((x-cnd7781
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7781
                                0
                                (letrec*
                                 ((x7782
                                   (letrec*
                                    ((x7783
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7783)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7782)))))))
                           g7780))))
                      (letrec*
                       ((g7784
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7784))))
                   g7778)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7785
                     (letrec*
                      ((x7788
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7788))))
                    (g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7790
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7790))))
                   g7787)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7792
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7792)))))
                   g7791)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (letrec*
                         ((x7795
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7795)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7794)))))
                   g7793)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (letrec*
                      ((x-cnd7799
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7799
                        #f
                        (letrec*
                         ((x-cnd7800
                           (letrec*
                            ((x7801
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7801 k)))))
                         (if x-cnd7800
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7802)))))))))
                   g7797)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7803
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7804)))))
                   g7803)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7805
                     (letrec*
                      ((x7808
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7808))))
                    (g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7810)))))
                   g7807)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7812
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7812))))
                   g7811)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7816))))
                    (g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x-cnd7818
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7818
                        #t
                        (letrec*
                         ((x-cnd7819
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7819
                           (letrec*
                            ((g7820
                              (letrec*
                               ((x7822
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7822))))
                             (g7821
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7823)))))
                            g7821)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7815)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7824
                     (letrec*
                      ((x7826
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7826))))
                    (g7825
                     (letrec*
                      ((x-cnd7827
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7827
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7825)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7831
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7831))))
                    (g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7833
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7833))))
                   g7830)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7835
                        (letrec*
                         ((x7836
                           (letrec*
                            ((x7837
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7837)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7836)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7835)))))
                   g7834)))
               (newline (lambda () (letrec* ((g7838 #f)) g7838)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7839
                     (letrec*
                      ((x7841
                        (letrec*
                         ((x7842
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7842))))
                       (x7840
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7841 x7840)))))
                   g7839)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7843
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7845))))
                    (g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7846)))))
                   g7844)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7851))))
                    (g7848
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7852))))
                    (g7849
                     (letrec*
                      ((x7853
                        (letrec*
                         ((x7854
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7854)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7853))))
                    (g7850
                     (letrec*
                      ((x-cnd7855
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7855
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7857
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7856
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7857 x7856)))))))
                   g7850)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7858
                     (letrec*
                      ((x-cnd7859
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7859
                        a
                        (letrec*
                         ((x7860
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7860)))))))
                   g7858)))
               (main
                (lambda (len)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((xs
                        (begin
                          (write '(funapp 1404 28))
                          (display "\n")
                          (mk-list len))))
                      (letrec*
                       ((g7862
                         (letrec*
                          ((x-cnd7863
                            (letrec*
                             ((x7864
                               (begin
                                 (write '(funapp 1409 46))
                                 (display "\n")
                                 (= len 0))))
                             (begin
                               (write '(funapp 1409 58))
                               (display "\n")
                               (not x7864)))))
                          (if x-cnd7863
                            (letrec*
                             ((x7865
                               (begin
                                 (write '(funapp 1411 46))
                                 (display "\n")
                                 (reverse xs empty))))
                             (begin
                               (write '(funapp 1411 67))
                               (display "\n")
                               (car x7865)))
                            0))))
                       g7862))))
                   g7861)))
               (reverse
                (lambda (l ac)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x-cnd7867
                        (begin
                          (write '(funapp 1420 35))
                          (display "\n")
                          (empty? l))))
                      (if x-cnd7867
                        ac
                        (letrec*
                         ((x7870
                           (begin
                             (write '(funapp 1424 34))
                             (display "\n")
                             (cdr l)))
                          (x7868
                           (letrec*
                            ((x7869
                              (begin
                                (write '(funapp 1425 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1425 61))
                              (display "\n")
                              (cons x7869 ac)))))
                         (begin
                           (write '(funapp 1426 26))
                           (display "\n")
                           (reverse x7870 x7868)))))))
                   g7866)))
               (mk-list
                (lambda (n)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1433 35))
                          (display "\n")
                          (= n 0))))
                      (if x-cnd7872
                        empty
                        (letrec*
                         ((x7873
                           (letrec*
                            ((x7874
                              (begin
                                (write '(funapp 1437 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1437 61))
                              (display "\n")
                              (mk-list x7874)))))
                         (begin
                           (write '(funapp 1438 26))
                           (display "\n")
                           (cons n x7873)))))))
                   g7871))))
              (letrec*
               ((g7875
                 (letrec*
                  ((x7877
                    (begin
                      (write '(funapp 1444 21))
                      (display "\n")
                      ((lambda (j7328 k7329 f7330)
                         (letrec*
                          ((g7878
                            (lambda (g7327)
                              (letrec*
                               ((g7879
                                 (letrec*
                                  ((x7880
                                    (letrec*
                                     ((x7881
                                       (begin
                                         (write '(funapp 1453 44))
                                         (display "\n")
                                         (integer?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 1454 36))
                                       (display "\n")
                                       (f7330 x7881)))))
                                  (begin
                                    (write '(funapp 1455 33))
                                    (display "\n")
                                    (integer?/c j7328 k7329 x7880)))))
                               g7879))))
                          g7878))
                       (begin (write '(funapp 1458 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 1459 21))
                         (display "\n")
                         'importer)
                       main)))
                   (x7876 (input)))
                  (begin
                    (write '(funapp 1462 19))
                    (display "\n")
                    (x7877 x7876)))))
               g7875))))
           g7344))))
       g7342)))
    g7341)))
