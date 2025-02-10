(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7332 #t)) g7332)))
    (meta (lambda (v) (letrec* ((g7333 v)) g7333)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7334
          (letrec*
           ((g7335
             (letrec*
              ((x-e7336 lst))
              (letrec*
               ((v1742 x-e7336))
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
                   ((x-cnd7337
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7337
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
           g7335)))
        g7334)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7338 (lambda (v) (letrec* ((g7339 v)) g7339)))) g7338)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7340
          (letrec*
           ((x7341 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7341)))))
        g7340))))
   (letrec*
    ((g7342
      (letrec*
       ((g7343
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
           ((g7344 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7345
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7346
                     (lambda (k j lst)
                       (letrec*
                        ((g7347
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7348
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7348))
                             lst))))
                        g7347))))
                   g7346)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7349
                     (letrec*
                      ((x-cnd7350
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7350
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7349)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7351
                     (letrec*
                      ((x-cnd7352
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7352
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7351)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7353
                     (letrec*
                      ((x-cnd7354
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7354
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7353)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7355
                     (letrec*
                      ((x-cnd7356
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7357 #t)) g7357)) g7269))))
                      (if x-cnd7356
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7355)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7360 #t)) g7360)) g7272))))
                      (if x-cnd7359
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7358)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7361
                     (letrec*
                      ((x-cnd7362
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7362
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7361)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7364
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7363)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7365
                     (letrec*
                      ((x-cnd7366
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7366
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7365)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7367
                     (lambda (k j v)
                       (letrec*
                        ((g7368
                          (letrec*
                           ((x-cnd7369
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7369
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7368))))
                   g7367)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7370
                     (lambda (k j v)
                       (letrec*
                        ((g7371
                          (letrec*
                           ((x-cnd7372
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7372
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7376
                                (letrec*
                                 ((x7377
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7377))))
                               (x7373
                                (letrec*
                                 ((x7375
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7374
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7375 k j x7374)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7376 x7373)))))))
                        g7371))))
                   g7370)))
               (any? (lambda (v) (letrec* ((g7378 #t)) g7378)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7379
                     (letrec*
                      ((x7380
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7380)))))
                   g7379)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7381
                     (letrec*
                      ((x-cnd7382
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7383
                                (letrec*
                                 ((x7384
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7384)))))
                              g7383))
                           g7284))))
                      (if x-cnd7382
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7381)))
               (meta (lambda (v) (letrec* ((g7385 v)) g7385)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7387
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7388
                             (letrec*
                              ((x7389
                                (letrec*
                                 ((x7391
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7390
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7391 x7390)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7389)))))
                           g7388))))
                      g7387))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7386
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7386)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7393
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7394
                             (letrec*
                              ((x7395
                                (letrec*
                                 ((x7397
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7396
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7397 x7396)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7395)))))
                           g7394))))
                      g7393))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7392
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7392)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7399
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7400
                             (letrec*
                              ((x7401
                                (letrec*
                                 ((x7403
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7402
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7403 x7402)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7401)))))
                           g7400))))
                      g7399))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7398
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7398)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7405
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7406
                             (letrec*
                              ((x7407
                                (letrec*
                                 ((x7409
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7408
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7409 x7408)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7407)))))
                           g7406))))
                      g7405))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7404
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7404)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7411
                        (lambda (g7305)
                          (letrec*
                           ((g7412
                             (letrec*
                              ((x7413
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7414)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7413)))))
                           g7412))))
                      g7411))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7410
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7410)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7416
                        (lambda (g7309)
                          (letrec*
                           ((g7417
                             (letrec*
                              ((x7418
                                (letrec*
                                 ((x7419
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7419)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7418)))))
                           g7417))))
                      g7416))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7415
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7415)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7421
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7422
                             (letrec*
                              ((x7423
                                (letrec*
                                 ((x7425
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7424
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7425 x7424)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7423)))))
                           g7422))))
                      g7421))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7420
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7420)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7427
                        (lambda (g7318)
                          (letrec*
                           ((g7428
                             (letrec*
                              ((x7429
                                (letrec*
                                 ((x7430
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7430)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7429)))))
                           g7428))))
                      g7427))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7426
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7426)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7432
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7433
                             (letrec*
                              ((x7434
                                (letrec*
                                 ((x7436
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7435
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7436 x7435)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7434)))))
                           g7433))))
                      g7432))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7431
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7431)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7437
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7437)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7438
                     (letrec*
                      ((x7439
                        (letrec*
                         ((x7440
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7440)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7439)))))
                   g7438)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7441
                     (letrec*
                      ((x7444
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7444))))
                    (g7442
                     (letrec*
                      ((x7445
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7445))))
                    (g7443
                     (letrec*
                      ((x-cnd7446
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7446
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7449
                           (letrec*
                            ((x7450
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7450))))
                          (x7447
                           (letrec*
                            ((x7448
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7448)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7449 x7447)))))))
                   g7443)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7451
                     (letrec*
                      ((x7452
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7452)))))
                   g7451)))
               (cadadr
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7456)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7455)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7454)))))
                   g7453)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7460)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7459)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7458)))))
                   g7457)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7461
                     (letrec*
                      ((x7464
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7464))))
                    (g7462
                     (letrec*
                      ((x7465
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7465))))
                    (g7463
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
                       ((g7466
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7467 res))
                       g7467))))
                   g7463)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7468
                     (letrec*
                      ((x7469
                        (letrec*
                         ((x7470
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7470)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7469)))))
                   g7468)))
               (cdaadr
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
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7474)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7473)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7472)))))
                   g7471)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7475
                     (letrec*
                      ((x7477
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7477))))
                    (g7476
                     (letrec*
                      ((x-cnd7478
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7478
                        #f
                        (letrec*
                         ((x-cnd7479
                           (letrec*
                            ((x7480
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7480 k)))))
                         (if x-cnd7479
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7481
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7481)))))))))
                   g7476)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7482
                     (letrec*
                      ((x7483
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7483)))))
                   g7482)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7484
                     (letrec*
                      ((x7486
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7486))))
                    (g7485
                     (letrec*
                      ((x-cnd7487
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7487
                        ""
                        (letrec*
                         ((x7490
                           (letrec*
                            ((x7491
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7491))))
                          (x7488
                           (letrec*
                            ((x7489
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7489)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7490 x7488)))))))
                   g7485)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7492
                     (letrec*
                      ((x7495
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7495))))
                    (g7493
                     (letrec*
                      ((x7496
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7496))))
                    (g7494
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7497
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7497))))
                   g7494)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7498
                     (letrec*
                      ((x7499
                        (letrec*
                         ((x7500
                           (letrec*
                            ((x7501
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7501)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7500)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7499)))))
                   g7498)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7502
                     (letrec*
                      ((x7505
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7505))))
                    (g7503
                     (letrec*
                      ((x7506
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7506))))
                    (g7504
                     (letrec*
                      ((x-cnd7507
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7507
                        x
                        (letrec*
                         ((x7509
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7508
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7509 x7508)))))))
                   g7504)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7510
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7510)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7511
                     (letrec*
                      ((x-cnd7512
                        (letrec*
                         ((x7513 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7513)))))
                      (if x-cnd7512
                        (letrec*
                         ((x7514 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7514)))
                        #f))))
                   g7511)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7515
                     (letrec*
                      ((x7517
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7517))))
                    (g7516
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7518
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7519 (if val7243 val7243 #f)))
                             g7519)))))
                       g7518))))
                   g7516)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7521
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7521 9)))))
                      (letrec*
                       ((g7522
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7523
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7523 10)))))
                            (letrec*
                             ((g7524
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7525
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7525 32))))))
                             g7524)))))
                       g7522))))
                   g7520)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7526
                     (letrec*
                      ((x7527
                        (letrec*
                         ((x7528
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7528)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7527)))))
                   g7526)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7529
                     (letrec*
                      ((x7531
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7531))))
                    (g7530
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7530)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7532 #f)) g7532)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7533
                     (letrec*
                      ((x7534
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7534)))))
                   g7533)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7535
                     (letrec*
                      ((x7537
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7537))))
                    (g7536
                     (letrec*
                      ((x-cnd7538
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7538
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7536)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7539
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7540
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7542
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7541
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7542 x7541)))))
                            (letrec*
                             ((g7543
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7546
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7545
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7544
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7546 x7545 x7544)))))
                                  (letrec*
                                   ((g7547
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7555
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7554
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7551
                                             (letrec*
                                              ((x7553
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7552
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7553 x7552))))
                                            (x7548
                                             (letrec*
                                              ((x7550
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7549
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7550 x7549)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7555 x7554 x7551 x7548)))))
                                        (letrec*
                                         ((g7556
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7572
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7571
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7557
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7558
                                                    (letrec*
                                                     ((x7569
                                                       (letrec*
                                                        ((x7570
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
                                                          (= x7570 n))))
                                                      (x7559
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7560
                                                               (letrec*
                                                                ((x7567
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7561
                                                                  (letrec*
                                                                   ((x7564
                                                                     (letrec*
                                                                      ((x7566
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
                                                                       (x7565
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
                                                                         x7566
                                                                         x7565))))
                                                                    (x7562
                                                                     (letrec*
                                                                      ((x7563
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
                                                                         x7563)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7564
                                                                          x7562)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7567
                                                                      x7561)))))
                                                             g7560))))
                                                        (letrec*
                                                         ((g7568
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7568))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7569 x7559)))))
                                                  g7558))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7572 x7571 x7557))))))
                                         g7556)))))
                                   g7547)))))
                             g7543)))))
                       g7540))))
                   g7539)))
               (cdaaar
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
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7576)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7575)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7574)))))
                   g7573)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7577
                     (letrec*
                      ((x7578
                        (letrec*
                         ((x7579
                           (letrec*
                            ((x7580
                              (begin
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7580)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7579)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7578)))))
                   g7577)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7581
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7581)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7582
                     (letrec*
                      ((x7584
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7584))))
                    (g7583
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7585
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7586 (if val7251 val7251 #f)))
                             g7586)))))
                       g7585))))
                   g7583)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7590
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7590))))
                    (g7588
                     (letrec*
                      ((x7591
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7591))))
                    (g7589
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
                       ((g7592
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7593 res))
                       g7593))))
                   g7589)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7594
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7594)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7595
                     (letrec*
                      ((x7598
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7598))))
                    (g7596
                     (letrec*
                      ((x7599
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7599))))
                    (g7597
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7600
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7600))))
                   g7597)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7601
                     (letrec*
                      ((x7602
                        (letrec*
                         ((x7603
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7603)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7602)))))
                   g7601)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7604
                     (letrec*
                      ((x7605
                        (letrec*
                         ((x7606
                           (letrec*
                            ((x7607
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7607)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7606)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7605)))))
                   g7604)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7608
                     (letrec*
                      ((x7609
                        (letrec*
                         ((x7610
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7610)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7609)))))
                   g7608)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x7612
                        (letrec*
                         ((x7613
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7613)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7612)))))
                   g7611)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x7617
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7617))))
                    (g7615
                     (letrec*
                      ((x7618
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7618))))
                    (g7616
                     (letrec*
                      ((x7619
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7619)))))
                   g7616)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x7621
                        (letrec*
                         ((x7622
                           (letrec*
                            ((x7623
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7623)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7622)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7621)))))
                   g7620)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7624
                     (letrec*
                      ((x7626
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7626))))
                    (g7625
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7625)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7627
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7627)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x7629
                        (letrec*
                         ((x7630
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7630)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7629)))))
                   g7628)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7631
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7631)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x7634
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7634))))
                    (g7633
                     (letrec*
                      ((x-cnd7635
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7635
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7638
                           (letrec*
                            ((x7639
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7639))))
                          (x7636
                           (letrec*
                            ((x7637
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7637)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7638 x7636)))))))
                   g7633)))
               (caaadr
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
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7643)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7642)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7641)))))
                   g7640)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7644
                     (letrec*
                      ((x7645
                        (letrec*
                         ((x7646
                           (letrec*
                            ((x7647
                              (begin
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7647)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7646)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7645)))))
                   g7644)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x7650
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7650))))
                    (g7649
                     (letrec*
                      ((x7651
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7651)))))
                   g7649)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7652
                     (letrec*
                      ((x7653
                        (letrec*
                         ((x7654
                           (letrec*
                            ((x7655
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7655)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7654)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7653)))))
                   g7652)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7656
                     (letrec*
                      ((x7659
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7659))))
                    (g7657
                     (letrec*
                      ((x7660
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7660))))
                    (g7658
                     (letrec*
                      ((x-cnd7661
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7661
                        (letrec*
                         ((g7662
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7662)
                        (letrec*
                         ((x-cnd7663
                           (letrec*
                            ((x7664
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7664)))))
                         (if x-cnd7663
                           (letrec*
                            ((g7665
                              (letrec*
                               ((x7666
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7666)))))
                            g7665)
                           (letrec*
                            ((x-cnd7667
                              (letrec*
                               ((x7668
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7668)))))
                            (if x-cnd7667
                              (letrec*
                               ((g7669
                                 (letrec*
                                  ((x7671
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7670
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7671 x7670)))))
                               g7669)
                              (letrec*
                               ((x-cnd7672
                                 (letrec*
                                  ((x7673
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7673)))))
                               (if x-cnd7672
                                 (letrec*
                                  ((g7674
                                    (letrec*
                                     ((x7677
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7676
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7675
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7677 x7676 x7675)))))
                                  g7674)
                                 (letrec*
                                  ((x-cnd7678
                                    (letrec*
                                     ((x7679
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7679)))))
                                  (if x-cnd7678
                                    (letrec*
                                     ((g7680
                                       (letrec*
                                        ((x7684
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7683
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7682
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7681
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7684 x7683 x7682 x7681)))))
                                     g7680)
                                    (letrec*
                                     ((x-cnd7685
                                       (letrec*
                                        ((x7686
                                          (letrec*
                                           ((x7687
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7687)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7686)))))
                                     (if x-cnd7685
                                       (letrec*
                                        ((g7688
                                          (letrec*
                                           ((x7694
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7693
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7692
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7691
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7689
                                             (letrec*
                                              ((x7690
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7690)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7694
                                              x7693
                                              x7692
                                              x7691
                                              x7689)))))
                                        g7688)
                                       (letrec*
                                        ((x-cnd7695
                                          (letrec*
                                           ((x7696
                                             (letrec*
                                              ((x7697
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7697)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7696)))))
                                        (if x-cnd7695
                                          (letrec*
                                           ((g7698
                                             (letrec*
                                              ((x7706
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7705
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7704
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7703
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7701
                                                (letrec*
                                                 ((x7702
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7702))))
                                               (x7699
                                                (letrec*
                                                 ((x7700
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7700)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7706
                                                 x7705
                                                 x7704
                                                 x7703
                                                 x7701
                                                 x7699)))))
                                           g7698)
                                          (letrec*
                                           ((x-cnd7707
                                             (letrec*
                                              ((x7708
                                                (letrec*
                                                 ((x7709
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7709)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7708)))))
                                           (if x-cnd7707
                                             (letrec*
                                              ((g7710
                                                (letrec*
                                                 ((x7720
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7719
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7718
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7717
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7715
                                                   (letrec*
                                                    ((x7716
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7716))))
                                                  (x7713
                                                   (letrec*
                                                    ((x7714
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7714))))
                                                  (x7711
                                                   (letrec*
                                                    ((x7712
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7712)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7720
                                                    x7719
                                                    x7718
                                                    x7717
                                                    x7715
                                                    x7713
                                                    x7711)))))
                                              g7710)
                                             (letrec*
                                              ((g7721
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7721)))))))))))))))))))
                   g7658)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7722
                     (letrec*
                      ((x7724
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7724))))
                    (g7723
                     (letrec*
                      ((x-cnd7725
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7725
                        #f
                        (letrec*
                         ((x-cnd7726
                           (letrec*
                            ((x7727
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7727 e)))))
                         (if x-cnd7726
                           l
                           (letrec*
                            ((x7728
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7728)))))))))
                   g7723)))
               (cddddr
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
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7732)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7731)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7730)))))
                   g7729)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7733
                     (letrec*
                      ((x7734
                        (letrec*
                         ((x7735
                           (letrec*
                            ((x7736
                              (begin
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7736)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7735)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7734)))))
                   g7733)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7737
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7737)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7738
                     (letrec*
                      ((x7740
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7740))))
                    (g7739
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7739)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7741
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7742
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7742))))
                   g7741)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7744)))))
                   g7743)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7745
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7748
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7747)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7748 x7746)))))
                      (letrec*
                       ((g7749
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7749))))
                   g7745)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((x7751
                        (letrec*
                         ((x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7753)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7752)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7751)))))
                   g7750)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x-cnd7755
                        (letrec*
                         ((x7756 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7756 c)))))
                      (if x-cnd7755
                        (letrec*
                         ((x7757 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7757)))
                        #f))))
                   g7754)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7758
                     (letrec*
                      ((x7760
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7760))))
                    (g7759
                     (letrec*
                      ((x-cnd7761
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7761
                        #f
                        (letrec*
                         ((x-cnd7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7763 k)))))
                         (if x-cnd7762
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7764
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7764)))))))))
                   g7759)))
               (not (lambda (x) (letrec* ((g7765 (if x #f #t))) g7765)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7766
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7766)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7767
                     (letrec*
                      ((x7769
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7769))))
                    (g7768
                     (letrec*
                      ((x-cnd7770
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7770
                        #f
                        (letrec*
                         ((x-cnd7771
                           (letrec*
                            ((x7772
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7772 e)))))
                         (if x-cnd7771
                           l
                           (letrec*
                            ((x7773
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7773)))))))))
                   g7768)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7774
                     (letrec*
                      ((x7775
                        (letrec*
                         ((x7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7777)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7776)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7775)))))
                   g7774)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x7780
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7780))))
                    (g7779
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7781
                             (letrec*
                              ((x-cnd7782
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7782
                                0
                                (letrec*
                                 ((x7783
                                   (letrec*
                                    ((x7784
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7784)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7783)))))))
                           g7781))))
                      (letrec*
                       ((g7785
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7785))))
                   g7779)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7786
                     (letrec*
                      ((x7789
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7789))))
                    (g7787
                     (letrec*
                      ((x7790
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7790))))
                    (g7788
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7791
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7791))))
                   g7788)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7792
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7793)))))
                   g7792)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7794
                     (letrec*
                      ((x7795
                        (letrec*
                         ((x7796
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7796)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7795)))))
                   g7794)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7799))))
                    (g7798
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7800
                        #f
                        (letrec*
                         ((x-cnd7801
                           (letrec*
                            ((x7802
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7802 k)))))
                         (if x-cnd7801
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7803
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7803)))))))))
                   g7798)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7804
                     (letrec*
                      ((x7805
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7805)))))
                   g7804)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((x7809
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7809))))
                    (g7807
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7810))))
                    (g7808
                     (letrec*
                      ((x7811
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7811)))))
                   g7808)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7812
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7813
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7813))))
                   g7812)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7814
                     (letrec*
                      ((x7817
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7817))))
                    (g7815
                     (letrec*
                      ((x7818
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7818))))
                    (g7816
                     (letrec*
                      ((x-cnd7819
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7819
                        #t
                        (letrec*
                         ((x-cnd7820
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7820
                           (letrec*
                            ((g7821
                              (letrec*
                               ((x7823
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7823))))
                             (g7822
                              (letrec*
                               ((x7824
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7824)))))
                            g7822)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7816)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7825
                     (letrec*
                      ((x7827
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7827))))
                    (g7826
                     (letrec*
                      ((x-cnd7828
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7828
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7826)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7829
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7832))))
                    (g7830
                     (letrec*
                      ((x7833
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7833))))
                    (g7831
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7834
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7834))))
                   g7831)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7835
                     (letrec*
                      ((x7836
                        (letrec*
                         ((x7837
                           (letrec*
                            ((x7838
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7838)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7837)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7836)))))
                   g7835)))
               (newline (lambda () (letrec* ((g7839 #f)) g7839)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7842
                        (letrec*
                         ((x7843
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7843))))
                       (x7841
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7842 x7841)))))
                   g7840)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7844
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7846))))
                    (g7845
                     (letrec*
                      ((x7847
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7847)))))
                   g7845)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7848
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7852))))
                    (g7849
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7853))))
                    (g7850
                     (letrec*
                      ((x7854
                        (letrec*
                         ((x7855
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7855)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7854))))
                    (g7851
                     (letrec*
                      ((x-cnd7856
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7856
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7857
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7858 x7857)))))))
                   g7851)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x-cnd7860
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7860
                        a
                        (letrec*
                         ((x7861
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7861)))))))
                   g7859)))
               (sum
                (lambda (n)
                  (letrec*
                   ((g7862
                     (letrec*
                      ((x-cnd7863
                        (begin
                          (write '(funapp 1404 35))
                          (display "\n")
                          (<= n 0))))
                      (if x-cnd7863
                        0
                        (letrec*
                         ((x7864
                           (letrec*
                            ((x7865
                              (begin
                                (write '(funapp 1408 51))
                                (display "\n")
                                (- n 1))))
                            (begin
                              (write '(funapp 1408 61))
                              (display "\n")
                              (sum x7865)))))
                         (begin
                           (write '(funapp 1409 26))
                           (display "\n")
                           (+ n x7864)))))))
                   g7862))))
              (letrec*
               ((g7866
                 (begin
                   (write '(funapp 1413 18))
                   (display "\n")
                   ((lambda (j7328 k7329 f7330)
                      (letrec*
                       ((g7867
                         (lambda (g7327)
                           (letrec*
                            ((g7868
                              (letrec*
                               ((x7331
                                 (begin
                                   (write '(funapp 1420 38))
                                   (display "\n")
                                   (integer?/c j7328 k7329 g7327))))
                               (letrec*
                                ((g7869
                                  (letrec*
                                   ((x7871
                                     (begin
                                       (write '(funapp 1425 36))
                                       (display "\n")
                                       ((lambda (n)
                                          (letrec*
                                           ((g7872
                                             (letrec*
                                              ((x7873
                                                (begin
                                                  (write '(funapp 1429 51))
                                                  (display "\n")
                                                  (>=/c n))))
                                              (begin
                                                (write '(funapp 1430 43))
                                                (display "\n")
                                                (and/c integer?/c x7873)))))
                                           g7872))
                                        x7331)))
                                    (x7870
                                     (begin
                                       (write '(funapp 1433 42))
                                       (display "\n")
                                       (f7330 x7331))))
                                   (begin
                                     (write '(funapp 1434 34))
                                     (display "\n")
                                     (x7871 j7328 k7329 x7870)))))
                                g7869))))
                            g7868))))
                       g7867))
                    (begin (write '(funapp 1438 18)) (display "\n") 'module)
                    (begin (write '(funapp 1439 18)) (display "\n") 'importer)
                    sum))))
               g7866))))
           g7345))))
       g7343)))
    g7342)))
