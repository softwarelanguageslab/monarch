(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7337 #t)) g7337)))
    (meta (lambda (v) (letrec* ((g7338 v)) g7338)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7339
          (letrec*
           ((g7340
             (letrec*
              ((x-e7341 lst))
              (letrec*
               ((v1742 x-e7341))
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
                   ((x-cnd7342
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7342
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
           g7340)))
        g7339)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7343 (lambda (v) (letrec* ((g7344 v)) g7344)))) g7343)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7345
          (letrec*
           ((x7346 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7346)))))
        g7345))))
   (letrec*
    ((g7347
      (letrec*
       ((g7348
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
           ((g7349 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7350
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7351
                     (lambda (k j lst)
                       (letrec*
                        ((g7352
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7353
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7353))
                             lst))))
                        g7352))))
                   g7351)))
               (real?/c
                (lambda (g7258 g7259 g7260)
                  (letrec*
                   ((g7354
                     (letrec*
                      ((x-cnd7355
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7260))))
                      (if x-cnd7355
                        g7260
                        (begin
                          (write '(blame g7258 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7258)))))))
                   g7354)))
               (boolean?/c
                (lambda (g7261 g7262 g7263)
                  (letrec*
                   ((g7356
                     (letrec*
                      ((x-cnd7357
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7263))))
                      (if x-cnd7357
                        g7263
                        (begin
                          (write '(blame g7261 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7261)))))))
                   g7356)))
               (number?/c
                (lambda (g7264 g7265 g7266)
                  (letrec*
                   ((g7358
                     (letrec*
                      ((x-cnd7359
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7266))))
                      (if x-cnd7359
                        g7266
                        (begin
                          (write '(blame g7264 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7264)))))))
                   g7358)))
               (any/c
                (lambda (g7267 g7268 g7269)
                  (letrec*
                   ((g7360
                     (letrec*
                      ((x-cnd7361
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7362 #t)) g7362)) g7269))))
                      (if x-cnd7361
                        g7269
                        (begin
                          (write '(blame g7267 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7267)))))))
                   g7360)))
               (any?/c
                (lambda (g7270 g7271 g7272)
                  (letrec*
                   ((g7363
                     (letrec*
                      ((x-cnd7364
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7365 #t)) g7365)) g7272))))
                      (if x-cnd7364
                        g7272
                        (begin
                          (write '(blame g7270 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7270)))))))
                   g7363)))
               (cons?/c
                (lambda (g7273 g7274 g7275)
                  (letrec*
                   ((g7366
                     (letrec*
                      ((x-cnd7367
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7275))))
                      (if x-cnd7367
                        g7275
                        (begin
                          (write '(blame g7273 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7273)))))))
                   g7366)))
               (pair?/c
                (lambda (g7276 g7277 g7278)
                  (letrec*
                   ((g7368
                     (letrec*
                      ((x-cnd7369
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7278))))
                      (if x-cnd7369
                        g7278
                        (begin
                          (write '(blame g7276 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7276)))))))
                   g7368)))
               (integer?/c
                (lambda (g7279 g7280 g7281)
                  (letrec*
                   ((g7370
                     (letrec*
                      ((x-cnd7371
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7281))))
                      (if x-cnd7371
                        g7281
                        (begin
                          (write '(blame g7279 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7279)))))))
                   g7370)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7372
                     (lambda (k j v)
                       (letrec*
                        ((g7373
                          (letrec*
                           ((x-cnd7374
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7374
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7373))))
                   g7372)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7375
                     (lambda (k j v)
                       (letrec*
                        ((g7376
                          (letrec*
                           ((x-cnd7377
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7377
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7381
                                (letrec*
                                 ((x7382
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7382))))
                               (x7378
                                (letrec*
                                 ((x7380
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7379
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7380 k j x7379)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7381 x7378)))))))
                        g7376))))
                   g7375)))
               (any? (lambda (v) (letrec* ((g7383 #t)) g7383)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7384
                     (letrec*
                      ((x7385
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7385)))))
                   g7384)))
               (nonzero?/c
                (lambda (g7282 g7283 g7284)
                  (letrec*
                   ((g7386
                     (letrec*
                      ((x-cnd7387
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7388
                                (letrec*
                                 ((x7389
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7389)))))
                              g7388))
                           g7284))))
                      (if x-cnd7387
                        g7284
                        (begin
                          (write '(blame g7282 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7282)))))))
                   g7386)))
               (meta (lambda (v) (letrec* ((g7390 v)) g7390)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7287 k7288 f7289)
                     (letrec*
                      ((g7392
                        (lambda (g7285 g7286)
                          (letrec*
                           ((g7393
                             (letrec*
                              ((x7394
                                (letrec*
                                 ((x7396
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7285)))
                                  (x7395
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7287 k7288 g7286))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7289 x7396 x7395)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7287 k7288 x7394)))))
                           g7393))))
                      g7392))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7391
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7391)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7398
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7399
                             (letrec*
                              ((x7400
                                (letrec*
                                 ((x7402
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7401
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7294 x7402 x7401)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7400)))))
                           g7399))))
                      g7398))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7397
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7397)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7404
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7405
                             (letrec*
                              ((x7406
                                (letrec*
                                 ((x7408
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7407
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7299 x7408 x7407)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7406)))))
                           g7405))))
                      g7404))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7403
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7403)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7410
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7411
                             (letrec*
                              ((x7412
                                (letrec*
                                 ((x7414
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7413
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7304 x7414 x7413)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7412)))))
                           g7411))))
                      g7410))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7409
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7409)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7306 k7307 f7308)
                     (letrec*
                      ((g7416
                        (lambda (g7305)
                          (letrec*
                           ((g7417
                             (letrec*
                              ((x7418
                                (letrec*
                                 ((x7419
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7306 k7307 g7305))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7308 x7419)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7306 k7307 x7418)))))
                           g7417))))
                      g7416))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7415
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7415)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7310 k7311 f7312)
                     (letrec*
                      ((g7421
                        (lambda (g7309)
                          (letrec*
                           ((g7422
                             (letrec*
                              ((x7423
                                (letrec*
                                 ((x7424
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7310 k7311 g7309))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7312 x7424)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7310 k7311 x7423)))))
                           g7422))))
                      g7421))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7420
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7420)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7426
                        (lambda (g7313 g7314)
                          (letrec*
                           ((g7427
                             (letrec*
                              ((x7428
                                (letrec*
                                 ((x7430
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7313)))
                                  (x7429
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7317 x7430 x7429)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7315 k7316 x7428)))))
                           g7427))))
                      g7426))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7425
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7425)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7319 k7320 f7321)
                     (letrec*
                      ((g7432
                        (lambda (g7318)
                          (letrec*
                           ((g7433
                             (letrec*
                              ((x7434
                                (letrec*
                                 ((x7435
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7319 k7320 g7318))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7321 x7435)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7319 k7320 x7434)))))
                           g7433))))
                      g7432))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7431
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7431)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7437
                        (lambda (g7322 g7323)
                          (letrec*
                           ((g7438
                             (letrec*
                              ((x7439
                                (letrec*
                                 ((x7441
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7322)))
                                  (x7440
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7326 x7441 x7440)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7324 k7325 x7439)))))
                           g7438))))
                      g7437))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7436
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7436)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7442
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7442)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7443
                     (letrec*
                      ((x7444
                        (letrec*
                         ((x7445
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7445)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7444)))))
                   g7443)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7446
                     (letrec*
                      ((x7449
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7449))))
                    (g7447
                     (letrec*
                      ((x7450
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7450))))
                    (g7448
                     (letrec*
                      ((x-cnd7451
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7451
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7454
                           (letrec*
                            ((x7455
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7455))))
                          (x7452
                           (letrec*
                            ((x7453
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7453)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7454 x7452)))))))
                   g7448)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7456
                     (letrec*
                      ((x7457
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7457)))))
                   g7456)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7458
                     (letrec*
                      ((x7459
                        (letrec*
                         ((x7460
                           (letrec*
                            ((x7461
                              (begin
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7461)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7460)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7459)))))
                   g7458)))
               (cdadar
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
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7465)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7464)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7463)))))
                   g7462)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7466
                     (letrec*
                      ((x7469
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7469))))
                    (g7467
                     (letrec*
                      ((x7470
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7470))))
                    (g7468
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
                       ((g7471
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7472 res))
                       g7472))))
                   g7468)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7473
                     (letrec*
                      ((x7474
                        (letrec*
                         ((x7475
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7475)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7474)))))
                   g7473)))
               (cdaadr
                (lambda (x)
                  (letrec*
                   ((g7476
                     (letrec*
                      ((x7477
                        (letrec*
                         ((x7478
                           (letrec*
                            ((x7479
                              (begin
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7479)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7478)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7477)))))
                   g7476)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7480
                     (letrec*
                      ((x7482
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7482))))
                    (g7481
                     (letrec*
                      ((x-cnd7483
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7483
                        #f
                        (letrec*
                         ((x-cnd7484
                           (letrec*
                            ((x7485
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7485 k)))))
                         (if x-cnd7484
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7486
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7486)))))))))
                   g7481)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7487
                     (letrec*
                      ((x7488
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7488)))))
                   g7487)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7489
                     (letrec*
                      ((x7491
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7491))))
                    (g7490
                     (letrec*
                      ((x-cnd7492
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7492
                        ""
                        (letrec*
                         ((x7495
                           (letrec*
                            ((x7496
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7496))))
                          (x7493
                           (letrec*
                            ((x7494
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7494)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7495 x7493)))))))
                   g7490)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7497
                     (letrec*
                      ((x7500
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7500))))
                    (g7498
                     (letrec*
                      ((x7501
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7501))))
                    (g7499
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7502
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7502))))
                   g7499)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7503
                     (letrec*
                      ((x7504
                        (letrec*
                         ((x7505
                           (letrec*
                            ((x7506
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7506)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7505)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7504)))))
                   g7503)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7507
                     (letrec*
                      ((x7510
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7510))))
                    (g7508
                     (letrec*
                      ((x7511
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7511))))
                    (g7509
                     (letrec*
                      ((x-cnd7512
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7512
                        x
                        (letrec*
                         ((x7514
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7513
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7514 x7513)))))))
                   g7509)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7515
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7515)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7516
                     (letrec*
                      ((x-cnd7517
                        (letrec*
                         ((x7518 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7518)))))
                      (if x-cnd7517
                        (letrec*
                         ((x7519 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7519)))
                        #f))))
                   g7516)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7520
                     (letrec*
                      ((x7522
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7522))))
                    (g7521
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7523
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7524 (if val7243 val7243 #f)))
                             g7524)))))
                       g7523))))
                   g7521)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7525
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7526
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7526 9)))))
                      (letrec*
                       ((g7527
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7528
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7528 10)))))
                            (letrec*
                             ((g7529
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7530
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7530 32))))))
                             g7529)))))
                       g7527))))
                   g7525)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7531
                     (letrec*
                      ((x7532
                        (letrec*
                         ((x7533
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7533)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7532)))))
                   g7531)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7534
                     (letrec*
                      ((x7536
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7536))))
                    (g7535
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7535)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7537 #f)) g7537)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7538
                     (letrec*
                      ((x7539
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7539)))))
                   g7538)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7540
                     (letrec*
                      ((x7542
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7542))))
                    (g7541
                     (letrec*
                      ((x-cnd7543
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7543
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7541)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7544
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7545
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x7547
                                 (begin
                                   (write '(funapp 628 40))
                                   (display "\n")
                                   (null? a)))
                                (x7546
                                 (begin
                                   (write '(funapp 628 58))
                                   (display "\n")
                                   (null? b))))
                               (begin
                                 (write '(funapp 629 32))
                                 (display "\n")
                                 (and x7547 x7546)))))
                            (letrec*
                             ((g7548
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x7551
                                       (begin
                                         (write '(funapp 637 46))
                                         (display "\n")
                                         (string? a)))
                                      (x7550
                                       (begin
                                         (write '(funapp 638 46))
                                         (display "\n")
                                         (string? b)))
                                      (x7549
                                       (begin
                                         (write '(funapp 639 46))
                                         (display "\n")
                                         (string=? a b))))
                                     (begin
                                       (write '(funapp 640 38))
                                       (display "\n")
                                       (and x7551 x7550 x7549)))))
                                  (letrec*
                                   ((g7552
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x7560
                                             (begin
                                               (write '(funapp 648 52))
                                               (display "\n")
                                               (pair? a)))
                                            (x7559
                                             (begin
                                               (write '(funapp 649 52))
                                               (display "\n")
                                               (pair? b)))
                                            (x7556
                                             (letrec*
                                              ((x7558
                                                (begin
                                                  (write '(funapp 652 55))
                                                  (display "\n")
                                                  (car a)))
                                               (x7557
                                                (begin
                                                  (write '(funapp 652 71))
                                                  (display "\n")
                                                  (car b))))
                                              (begin
                                                (write '(funapp 653 47))
                                                (display "\n")
                                                (equal? x7558 x7557))))
                                            (x7553
                                             (letrec*
                                              ((x7555
                                                (begin
                                                  (write '(funapp 656 55))
                                                  (display "\n")
                                                  (cdr a)))
                                               (x7554
                                                (begin
                                                  (write '(funapp 656 71))
                                                  (display "\n")
                                                  (cdr b))))
                                              (begin
                                                (write '(funapp 657 47))
                                                (display "\n")
                                                (equal? x7555 x7554)))))
                                           (begin
                                             (write '(funapp 658 44))
                                             (display "\n")
                                             (and x7560 x7559 x7556 x7553)))))
                                        (letrec*
                                         ((g7561
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x7577
                                                (begin
                                                  (write '(funapp 664 55))
                                                  (display "\n")
                                                  (vector? a)))
                                               (x7576
                                                (begin
                                                  (write '(funapp 665 55))
                                                  (display "\n")
                                                  (vector? b)))
                                               (x7562
                                                (letrec*
                                                 ((n
                                                   (begin
                                                     (write '(funapp 668 54))
                                                     (display "\n")
                                                     (vector-length a))))
                                                 (letrec*
                                                  ((g7563
                                                    (letrec*
                                                     ((x7574
                                                       (letrec*
                                                        ((x7575
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
                                                          (= x7575 n))))
                                                      (x7564
                                                       (letrec*
                                                        ((loop
                                                          (lambda (i)
                                                            (letrec*
                                                             ((g7565
                                                               (letrec*
                                                                ((x7572
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       685
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (= i n)))
                                                                 (x7566
                                                                  (letrec*
                                                                   ((x7569
                                                                     (letrec*
                                                                      ((x7571
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
                                                                       (x7570
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
                                                                         x7571
                                                                         x7570))))
                                                                    (x7567
                                                                     (letrec*
                                                                      ((x7568
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
                                                                         x7568)))))
                                                                   (begin
                                                                     (write
                                                                      '(funapp
                                                                        709
                                                                        68))
                                                                     (display
                                                                      "\n")
                                                                     (and x7569
                                                                          x7567)))))
                                                                (begin
                                                                  (write
                                                                   '(funapp
                                                                     711
                                                                     65))
                                                                  (display
                                                                   "\n")
                                                                  (or x7572
                                                                      x7566)))))
                                                             g7565))))
                                                        (letrec*
                                                         ((g7573
                                                           (begin
                                                             (write
                                                              '(funapp 715 66))
                                                             (display "\n")
                                                             (loop 0))))
                                                         g7573))))
                                                     (begin
                                                       (write '(funapp 717 54))
                                                       (display "\n")
                                                       (and x7574 x7564)))))
                                                  g7563))))
                                              (begin
                                                (write '(funapp 719 47))
                                                (display "\n")
                                                (and x7577 x7576 x7562))))))
                                         g7561)))))
                                   g7552)))))
                             g7548)))))
                       g7545))))
                   g7544)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7578
                     (letrec*
                      ((x7579
                        (letrec*
                         ((x7580
                           (letrec*
                            ((x7581
                              (begin
                                (write '(funapp 732 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 732 61))
                              (display "\n")
                              (car x7581)))))
                         (begin
                           (write '(funapp 733 26))
                           (display "\n")
                           (car x7580)))))
                      (begin
                        (write '(funapp 734 23))
                        (display "\n")
                        (cdr x7579)))))
                   g7578)))
               (caaddr
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
                                (write '(funapp 743 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 743 61))
                              (display "\n")
                              (cdr x7585)))))
                         (begin
                           (write '(funapp 744 26))
                           (display "\n")
                           (car x7584)))))
                      (begin
                        (write '(funapp 745 23))
                        (display "\n")
                        (car x7583)))))
                   g7582)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7586
                     (begin
                       (write '(funapp 747 53))
                       (display "\n")
                       (eq? x y))))
                   g7586)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7587
                     (letrec*
                      ((x7589
                        (begin
                          (write '(funapp 751 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 751 59))
                        (display "\n")
                        (assert x7589))))
                    (g7588
                     (letrec*
                      ((val7250
                        (begin
                          (write '(funapp 754 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7590
                         (if val7250
                           val7250
                           (letrec*
                            ((val7251
                              (begin
                                (write '(funapp 760 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7591 (if val7251 val7251 #f)))
                             g7591)))))
                       g7590))))
                   g7588)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7592
                     (letrec*
                      ((x7595
                        (begin
                          (write '(funapp 770 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 770 60))
                        (display "\n")
                        (assert x7595))))
                    (g7593
                     (letrec*
                      ((x7596
                        (begin
                          (write '(funapp 772 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 772 59))
                        (display "\n")
                        (assert x7596))))
                    (g7594
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
                       ((g7597
                         (begin
                           (write '(funapp 778 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7598 res))
                       g7598))))
                   g7594)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7599
                     (begin
                       (write '(funapp 781 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 781 57)) (display "\n") '())))))
                   g7599)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7600
                     (letrec*
                      ((x7603
                        (begin
                          (write '(funapp 785 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 785 58))
                        (display "\n")
                        (assert x7603))))
                    (g7601
                     (letrec*
                      ((x7604
                        (begin
                          (write '(funapp 786 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 786 58))
                        (display "\n")
                        (assert x7604))))
                    (g7602
                     (letrec*
                      ((val7252
                        (begin
                          (write '(funapp 789 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7605
                         (if val7252
                           val7252
                           (begin
                             (write '(funapp 791 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7605))))
                   g7602)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7606
                     (letrec*
                      ((x7607
                        (letrec*
                         ((x7608
                           (begin
                             (write '(funapp 799 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 799 58))
                           (display "\n")
                           (car x7608)))))
                      (begin
                        (write '(funapp 800 23))
                        (display "\n")
                        (cdr x7607)))))
                   g7606)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7609
                     (letrec*
                      ((x7610
                        (letrec*
                         ((x7611
                           (letrec*
                            ((x7612
                              (begin
                                (write '(funapp 809 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 809 61))
                              (display "\n")
                              (cdr x7612)))))
                         (begin
                           (write '(funapp 810 26))
                           (display "\n")
                           (car x7611)))))
                      (begin
                        (write '(funapp 811 23))
                        (display "\n")
                        (cdr x7610)))))
                   g7609)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x7614
                        (letrec*
                         ((x7615
                           (begin
                             (write '(funapp 819 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 819 58))
                           (display "\n")
                           (cdr x7615)))))
                      (begin
                        (write '(funapp 820 23))
                        (display "\n")
                        (car x7614)))))
                   g7613)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x7617
                        (letrec*
                         ((x7618
                           (begin
                             (write '(funapp 827 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 827 58))
                           (display "\n")
                           (car x7618)))))
                      (begin
                        (write '(funapp 828 23))
                        (display "\n")
                        (car x7617)))))
                   g7616)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7619
                     (letrec*
                      ((x7622
                        (begin
                          (write '(funapp 833 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 833 58))
                        (display "\n")
                        (assert x7622))))
                    (g7620
                     (letrec*
                      ((x7623
                        (begin
                          (write '(funapp 834 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 834 58))
                        (display "\n")
                        (assert x7623))))
                    (g7621
                     (letrec*
                      ((x7624
                        (begin
                          (write '(funapp 835 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 835 66))
                        (display "\n")
                        (not x7624)))))
                   g7621)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x7626
                        (letrec*
                         ((x7627
                           (letrec*
                            ((x7628
                              (begin
                                (write '(funapp 845 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 845 61))
                              (display "\n")
                              (car x7628)))))
                         (begin
                           (write '(funapp 846 26))
                           (display "\n")
                           (car x7627)))))
                      (begin
                        (write '(funapp 847 23))
                        (display "\n")
                        (car x7626)))))
                   g7625)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7629
                     (letrec*
                      ((x7631
                        (begin
                          (write '(funapp 852 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 852 59))
                        (display "\n")
                        (assert x7631))))
                    (g7630
                     (begin (write '(funapp 853 28)) (display "\n") (< x 0))))
                   g7630)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7632
                     (begin
                       (write '(funapp 855 53))
                       (display "\n")
                       (memq e l))))
                   g7632)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7633
                     (letrec*
                      ((x7634
                        (letrec*
                         ((x7635
                           (begin
                             (write '(funapp 861 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 861 58))
                           (display "\n")
                           (car x7635)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7634)))))
                   g7633)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7636
                     (begin (write '(funapp 864 51)) (display "\n") '())))
                   g7636)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7637
                     (letrec*
                      ((x7639
                        (begin
                          (write '(funapp 868 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 868 57))
                        (display "\n")
                        (assert x7639))))
                    (g7638
                     (letrec*
                      ((x-cnd7640
                        (begin
                          (write '(funapp 871 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7640
                        (begin (write '(funapp 873 24)) (display "\n") '())
                        (letrec*
                         ((x7643
                           (letrec*
                            ((x7644
                              (begin
                                (write '(funapp 875 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 875 61))
                              (display "\n")
                              (reverse x7644))))
                          (x7641
                           (letrec*
                            ((x7642
                              (begin
                                (write '(funapp 876 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 876 61))
                              (display "\n")
                              (list x7642)))))
                         (begin
                           (write '(funapp 877 26))
                           (display "\n")
                           (append x7643 x7641)))))))
                   g7638)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7645
                     (letrec*
                      ((x7646
                        (letrec*
                         ((x7647
                           (letrec*
                            ((x7648
                              (begin
                                (write '(funapp 886 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 886 61))
                              (display "\n")
                              (car x7648)))))
                         (begin
                           (write '(funapp 887 26))
                           (display "\n")
                           (car x7647)))))
                      (begin
                        (write '(funapp 888 23))
                        (display "\n")
                        (car x7646)))))
                   g7645)))
               (cddadr
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
                                (write '(funapp 897 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 897 61))
                              (display "\n")
                              (car x7652)))))
                         (begin
                           (write '(funapp 898 26))
                           (display "\n")
                           (cdr x7651)))))
                      (begin
                        (write '(funapp 899 23))
                        (display "\n")
                        (cdr x7650)))))
                   g7649)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7653
                     (letrec*
                      ((x7655
                        (begin
                          (write '(funapp 904 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 904 59))
                        (display "\n")
                        (assert x7655))))
                    (g7654
                     (letrec*
                      ((x7656
                        (begin
                          (write '(funapp 905 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 905 60))
                        (display "\n")
                        (= 1 x7656)))))
                   g7654)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7657
                     (letrec*
                      ((x7658
                        (letrec*
                         ((x7659
                           (letrec*
                            ((x7660
                              (begin
                                (write '(funapp 914 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 914 61))
                              (display "\n")
                              (cdr x7660)))))
                         (begin
                           (write '(funapp 915 26))
                           (display "\n")
                           (car x7659)))))
                      (begin
                        (write '(funapp 916 23))
                        (display "\n")
                        (car x7658)))))
                   g7657)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7661
                     (letrec*
                      ((x7664
                        (begin
                          (write '(funapp 922 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 922 59))
                        (display "\n")
                        (assert x7664))))
                    (g7662
                     (letrec*
                      ((x7665
                        (begin
                          (write '(funapp 923 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 923 60))
                        (display "\n")
                        (assert x7665))))
                    (g7663
                     (letrec*
                      ((x-cnd7666
                        (begin
                          (write '(funapp 926 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7666
                        (letrec*
                         ((g7667
                           (begin
                             (write '(funapp 928 42))
                             (display "\n")
                             (proc))))
                         g7667)
                        (letrec*
                         ((x-cnd7668
                           (letrec*
                            ((x7669
                              (begin
                                (write '(funapp 931 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 931 58))
                              (display "\n")
                              (null? x7669)))))
                         (if x-cnd7668
                           (letrec*
                            ((g7670
                              (letrec*
                               ((x7671
                                 (begin
                                   (write '(funapp 935 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 935 61))
                                 (display "\n")
                                 (proc x7671)))))
                            g7670)
                           (letrec*
                            ((x-cnd7672
                              (letrec*
                               ((x7673
                                 (begin
                                   (write '(funapp 939 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 939 62))
                                 (display "\n")
                                 (null? x7673)))))
                            (if x-cnd7672
                              (letrec*
                               ((g7674
                                 (letrec*
                                  ((x7676
                                    (begin
                                      (write '(funapp 944 43))
                                      (display "\n")
                                      (car args)))
                                   (x7675
                                    (begin
                                      (write '(funapp 944 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 945 35))
                                    (display "\n")
                                    (proc x7676 x7675)))))
                               g7674)
                              (letrec*
                               ((x-cnd7677
                                 (letrec*
                                  ((x7678
                                    (begin
                                      (write '(funapp 950 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 951 35))
                                    (display "\n")
                                    (null? x7678)))))
                               (if x-cnd7677
                                 (letrec*
                                  ((g7679
                                    (letrec*
                                     ((x7682
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7681
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7680
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 959 38))
                                       (display "\n")
                                       (proc x7682 x7681 x7680)))))
                                  g7679)
                                 (letrec*
                                  ((x-cnd7683
                                    (letrec*
                                     ((x7684
                                       (begin
                                         (write '(funapp 964 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 965 38))
                                       (display "\n")
                                       (null? x7684)))))
                                  (if x-cnd7683
                                    (letrec*
                                     ((g7685
                                       (letrec*
                                        ((x7689
                                          (begin
                                            (write '(funapp 970 49))
                                            (display "\n")
                                            (car args)))
                                         (x7688
                                          (begin
                                            (write '(funapp 971 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7687
                                          (begin
                                            (write '(funapp 972 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7686
                                          (begin
                                            (write '(funapp 973 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 974 41))
                                          (display "\n")
                                          (proc x7689 x7688 x7687 x7686)))))
                                     g7685)
                                    (letrec*
                                     ((x-cnd7690
                                       (letrec*
                                        ((x7691
                                          (letrec*
                                           ((x7692
                                             (begin
                                               (write '(funapp 981 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 982 44))
                                             (display "\n")
                                             (cdr x7692)))))
                                        (begin
                                          (write '(funapp 983 41))
                                          (display "\n")
                                          (null? x7691)))))
                                     (if x-cnd7690
                                       (letrec*
                                        ((g7693
                                          (letrec*
                                           ((x7699
                                             (begin
                                               (write '(funapp 988 52))
                                               (display "\n")
                                               (car args)))
                                            (x7698
                                             (begin
                                               (write '(funapp 989 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7697
                                             (begin
                                               (write '(funapp 990 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7696
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7694
                                             (letrec*
                                              ((x7695
                                                (begin
                                                  (write '(funapp 994 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 995 47))
                                                (display "\n")
                                                (car x7695)))))
                                           (begin
                                             (write '(funapp 996 44))
                                             (display "\n")
                                             (proc
                                              x7699
                                              x7698
                                              x7697
                                              x7696
                                              x7694)))))
                                        g7693)
                                       (letrec*
                                        ((x-cnd7700
                                          (letrec*
                                           ((x7701
                                             (letrec*
                                              ((x7702
                                                (begin
                                                  (write '(funapp 1008 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1009 47))
                                                (display "\n")
                                                (cddr x7702)))))
                                           (begin
                                             (write '(funapp 1010 44))
                                             (display "\n")
                                             (null? x7701)))))
                                        (if x-cnd7700
                                          (letrec*
                                           ((g7703
                                             (letrec*
                                              ((x7711
                                                (begin
                                                  (write '(funapp 1015 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7710
                                                (begin
                                                  (write '(funapp 1016 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7709
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7708
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7706
                                                (letrec*
                                                 ((x7707
                                                   (begin
                                                     (write '(funapp 1021 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1022 50))
                                                   (display "\n")
                                                   (car x7707))))
                                               (x7704
                                                (letrec*
                                                 ((x7705
                                                   (begin
                                                     (write '(funapp 1025 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1026 50))
                                                   (display "\n")
                                                   (cadr x7705)))))
                                              (begin
                                                (write '(funapp 1027 47))
                                                (display "\n")
                                                (proc
                                                 x7711
                                                 x7710
                                                 x7709
                                                 x7708
                                                 x7706
                                                 x7704)))))
                                           g7703)
                                          (letrec*
                                           ((x-cnd7712
                                             (letrec*
                                              ((x7713
                                                (letrec*
                                                 ((x7714
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cdddr x7714)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (null? x7713)))))
                                           (if x-cnd7712
                                             (letrec*
                                              ((g7715
                                                (letrec*
                                                 ((x7725
                                                   (begin
                                                     (write '(funapp 1047 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7724
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7723
                                                   (begin
                                                     (write '(funapp 1049 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7722
                                                   (begin
                                                     (write '(funapp 1050 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7720
                                                   (letrec*
                                                    ((x7721
                                                      (begin
                                                        (write
                                                         '(funapp 1053 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1054 53))
                                                      (display "\n")
                                                      (car x7721))))
                                                  (x7718
                                                   (letrec*
                                                    ((x7719
                                                      (begin
                                                        (write
                                                         '(funapp 1057 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1058 53))
                                                      (display "\n")
                                                      (cadr x7719))))
                                                  (x7716
                                                   (letrec*
                                                    ((x7717
                                                      (begin
                                                        (write
                                                         '(funapp 1061 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1062 53))
                                                      (display "\n")
                                                      (caddr x7717)))))
                                                 (begin
                                                   (write '(funapp 1063 50))
                                                   (display "\n")
                                                   (proc
                                                    x7725
                                                    x7724
                                                    x7723
                                                    x7722
                                                    x7720
                                                    x7718
                                                    x7716)))))
                                              g7715)
                                             (letrec*
                                              ((g7726
                                                (begin
                                                  (write '(funapp 1074 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7726)))))))))))))))))))
                   g7663)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7727
                     (letrec*
                      ((x7729
                        (begin
                          (write '(funapp 1080 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1080 57))
                        (display "\n")
                        (assert x7729))))
                    (g7728
                     (letrec*
                      ((x-cnd7730
                        (begin
                          (write '(funapp 1083 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7730
                        #f
                        (letrec*
                         ((x-cnd7731
                           (letrec*
                            ((x7732
                              (begin
                                (write '(funapp 1088 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1088 55))
                              (display "\n")
                              (equal? x7732 e)))))
                         (if x-cnd7731
                           l
                           (letrec*
                            ((x7733
                              (begin
                                (write '(funapp 1091 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1091 55))
                              (display "\n")
                              (member e x7733)))))))))
                   g7728)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7734
                     (letrec*
                      ((x7735
                        (letrec*
                         ((x7736
                           (letrec*
                            ((x7737
                              (begin
                                (write '(funapp 1100 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1100 61))
                              (display "\n")
                              (cdr x7737)))))
                         (begin
                           (write '(funapp 1101 26))
                           (display "\n")
                           (cdr x7736)))))
                      (begin
                        (write '(funapp 1102 23))
                        (display "\n")
                        (cdr x7735)))))
                   g7734)))
               (cadddr
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
                                (write '(funapp 1111 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1111 61))
                              (display "\n")
                              (cdr x7741)))))
                         (begin
                           (write '(funapp 1112 26))
                           (display "\n")
                           (cdr x7740)))))
                      (begin
                        (write '(funapp 1113 23))
                        (display "\n")
                        (car x7739)))))
                   g7738)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7742
                     (begin
                       (write '(funapp 1115 53))
                       (display "\n")
                       (random 42))))
                   g7742)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7743
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 1119 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1119 59))
                        (display "\n")
                        (assert x7745))))
                    (g7744
                     (begin (write '(funapp 1120 28)) (display "\n") (= x 0))))
                   g7744)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 1127 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7747
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 1129 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7747))))
                   g7746)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7748
                     (letrec*
                      ((x7749
                        (begin
                          (write '(funapp 1135 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1135 55))
                        (display "\n")
                        (car x7749)))))
                   g7748)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g7750
                     (letrec*
                      ((val7254
                        (letrec*
                         ((x7753
                           (begin
                             (write '(funapp 1145 34))
                             (display "\n")
                             (pair? l)))
                          (x7751
                           (letrec*
                            ((x7752
                              (begin
                                (write '(funapp 1146 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1146 61))
                              (display "\n")
                              (list? x7752)))))
                         (begin
                           (write '(funapp 1147 26))
                           (display "\n")
                           (and x7753 x7751)))))
                      (letrec*
                       ((g7754
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1149 52))
                             (display "\n")
                             (null? l)))))
                       g7754))))
                   g7750)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g7755
                     (letrec*
                      ((x7756
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 1159 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1159 61))
                              (display "\n")
                              (car x7758)))))
                         (begin
                           (write '(funapp 1160 26))
                           (display "\n")
                           (cdr x7757)))))
                      (begin
                        (write '(funapp 1161 23))
                        (display "\n")
                        (cdr x7756)))))
                   g7755)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x-cnd7760
                        (letrec*
                         ((x7761 #\0))
                         (begin
                           (write '(funapp 1168 58))
                           (display "\n")
                           (char<=? x7761 c)))))
                      (if x-cnd7760
                        (letrec*
                         ((x7762 #\9))
                         (begin
                           (write '(funapp 1170 48))
                           (display "\n")
                           (char<=? c x7762)))
                        #f))))
                   g7759)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g7763
                     (letrec*
                      ((x7765
                        (begin
                          (write '(funapp 1177 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1177 57))
                        (display "\n")
                        (assert x7765))))
                    (g7764
                     (letrec*
                      ((x-cnd7766
                        (begin
                          (write '(funapp 1180 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7766
                        #f
                        (letrec*
                         ((x-cnd7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 1185 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1185 56))
                              (display "\n")
                              (eqv? x7768 k)))))
                         (if x-cnd7767
                           (begin
                             (write '(funapp 1187 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7769
                              (begin
                                (write '(funapp 1188 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1188 55))
                              (display "\n")
                              (assq k x7769)))))))))
                   g7764)))
               (not (lambda (x) (letrec* ((g7770 (if x #f #t))) g7770)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g7771
                     (begin
                       (write '(funapp 1192 50))
                       (display "\n")
                       (append l1 l2))))
                   g7771)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g7772
                     (letrec*
                      ((x7774
                        (begin
                          (write '(funapp 1196 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1196 57))
                        (display "\n")
                        (assert x7774))))
                    (g7773
                     (letrec*
                      ((x-cnd7775
                        (begin
                          (write '(funapp 1199 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7775
                        #f
                        (letrec*
                         ((x-cnd7776
                           (letrec*
                            ((x7777
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (eq? x7777 e)))))
                         (if x-cnd7776
                           l
                           (letrec*
                            ((x7778
                              (begin
                                (write '(funapp 1207 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1207 55))
                              (display "\n")
                              (memq e x7778)))))))))
                   g7773)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g7779
                     (letrec*
                      ((x7780
                        (letrec*
                         ((x7781
                           (letrec*
                            ((x7782
                              (begin
                                (write '(funapp 1216 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1216 61))
                              (display "\n")
                              (car x7782)))))
                         (begin
                           (write '(funapp 1217 26))
                           (display "\n")
                           (cdr x7781)))))
                      (begin
                        (write '(funapp 1218 23))
                        (display "\n")
                        (car x7780)))))
                   g7779)))
               (length
                (lambda (l)
                  (letrec*
                   ((g7783
                     (letrec*
                      ((x7785
                        (begin
                          (write '(funapp 1223 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1223 57))
                        (display "\n")
                        (assert x7785))))
                    (g7784
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g7786
                             (letrec*
                              ((x-cnd7787
                                (begin
                                  (write '(funapp 1231 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd7787
                                0
                                (letrec*
                                 ((x7788
                                   (letrec*
                                    ((x7789
                                      (begin
                                        (write '(funapp 1236 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1236 63))
                                      (display "\n")
                                      (rec x7789)))))
                                 (begin
                                   (write '(funapp 1237 34))
                                   (display "\n")
                                   (+ 1 x7788)))))))
                           g7786))))
                      (letrec*
                       ((g7790
                         (begin
                           (write '(funapp 1239 40))
                           (display "\n")
                           (rec l))))
                       g7790))))
                   g7784)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7794
                        (begin
                          (write '(funapp 1244 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1244 58))
                        (display "\n")
                        (assert x7794))))
                    (g7792
                     (letrec*
                      ((x7795
                        (begin
                          (write '(funapp 1245 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1245 58))
                        (display "\n")
                        (assert x7795))))
                    (g7793
                     (letrec*
                      ((val7255
                        (begin
                          (write '(funapp 1248 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g7796
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1250 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7796))))
                   g7793)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 1256 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1256 65))
                        (display "\n")
                        (not x7798)))))
                   g7797)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g7799
                     (letrec*
                      ((x7800
                        (letrec*
                         ((x7801
                           (begin
                             (write '(funapp 1263 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1263 58))
                           (display "\n")
                           (car x7801)))))
                      (begin
                        (write '(funapp 1264 23))
                        (display "\n")
                        (cdr x7800)))))
                   g7799)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1269 57))
                        (display "\n")
                        (assert x7804))))
                    (g7803
                     (letrec*
                      ((x-cnd7805
                        (begin
                          (write '(funapp 1272 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7805
                        #f
                        (letrec*
                         ((x-cnd7806
                           (letrec*
                            ((x7807
                              (begin
                                (write '(funapp 1277 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1277 56))
                              (display "\n")
                              (equal? x7807 k)))))
                         (if x-cnd7806
                           (begin
                             (write '(funapp 1279 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7808
                              (begin
                                (write '(funapp 1280 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1280 55))
                              (display "\n")
                              (assoc k x7808)))))))))
                   g7803)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g7809
                     (letrec*
                      ((x7810
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1285 55))
                        (display "\n")
                        (car x7810)))))
                   g7809)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7811
                     (letrec*
                      ((x7814
                        (begin
                          (write '(funapp 1290 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1290 58))
                        (display "\n")
                        (assert x7814))))
                    (g7812
                     (letrec*
                      ((x7815
                        (begin
                          (write '(funapp 1291 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1291 58))
                        (display "\n")
                        (assert x7815))))
                    (g7813
                     (letrec*
                      ((x7816
                        (begin
                          (write '(funapp 1292 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1292 63))
                        (display "\n")
                        (not x7816)))))
                   g7813)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7817
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1299 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g7818
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1301 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7818))))
                   g7817)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g7819
                     (letrec*
                      ((x7822
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1307 62))
                        (display "\n")
                        (assert x7822))))
                    (g7820
                     (letrec*
                      ((x7823
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1308 57))
                        (display "\n")
                        (assert x7823))))
                    (g7821
                     (letrec*
                      ((x-cnd7824
                        (begin
                          (write '(funapp 1311 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7824
                        #t
                        (letrec*
                         ((x-cnd7825
                           (begin
                             (write '(funapp 1315 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd7825
                           (letrec*
                            ((g7826
                              (letrec*
                               ((x7828
                                 (begin
                                   (write '(funapp 1318 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1318 64))
                                 (display "\n")
                                 (f x7828))))
                             (g7827
                              (letrec*
                               ((x7829
                                 (begin
                                   (write '(funapp 1320 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1320 58))
                                 (display "\n")
                                 (for-each f x7829)))))
                            g7827)
                           (begin
                             (write '(funapp 1322 27))
                             (display "\n")
                             '())))))))
                   g7821)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g7830
                     (letrec*
                      ((x7832
                        (begin
                          (write '(funapp 1327 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1327 59))
                        (display "\n")
                        (assert x7832))))
                    (g7831
                     (letrec*
                      ((x-cnd7833
                        (begin
                          (write '(funapp 1329 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7833
                        (begin
                          (write '(funapp 1329 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g7831)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7834
                     (letrec*
                      ((x7837
                        (begin
                          (write '(funapp 1334 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1334 58))
                        (display "\n")
                        (assert x7837))))
                    (g7835
                     (letrec*
                      ((x7838
                        (begin
                          (write '(funapp 1335 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1335 58))
                        (display "\n")
                        (assert x7838))))
                    (g7836
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1338 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g7839
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1340 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g7839))))
                   g7836)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g7840
                     (letrec*
                      ((x7841
                        (letrec*
                         ((x7842
                           (letrec*
                            ((x7843
                              (begin
                                (write '(funapp 1350 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1350 61))
                              (display "\n")
                              (cdr x7843)))))
                         (begin
                           (write '(funapp 1351 26))
                           (display "\n")
                           (cdr x7842)))))
                      (begin
                        (write '(funapp 1352 23))
                        (display "\n")
                        (car x7841)))))
                   g7840)))
               (newline (lambda () (letrec* ((g7844 #f)) g7844)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g7845
                     (letrec*
                      ((x7847
                        (letrec*
                         ((x7848
                           (begin
                             (write '(funapp 1360 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1360 58))
                           (display "\n")
                           (abs x7848))))
                       (x7846
                        (begin
                          (write '(funapp 1361 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1362 23))
                        (display "\n")
                        (/ x7847 x7846)))))
                   g7845)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g7849
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 1368 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1368 59))
                        (display "\n")
                        (assert x7851))))
                    (g7850
                     (letrec*
                      ((x7852
                        (begin
                          (write '(funapp 1369 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1369 56))
                        (display "\n")
                        (not x7852)))))
                   g7850)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g7853
                     (letrec*
                      ((x7857
                        (begin
                          (write '(funapp 1374 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1374 57))
                        (display "\n")
                        (assert x7857))))
                    (g7854
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 1375 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1375 63))
                        (display "\n")
                        (assert x7858))))
                    (g7855
                     (letrec*
                      ((x7859
                        (letrec*
                         ((x7860
                           (begin
                             (write '(funapp 1378 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1378 61))
                           (display "\n")
                           (< index x7860)))))
                      (begin
                        (write '(funapp 1379 23))
                        (display "\n")
                        (assert x7859))))
                    (g7856
                     (letrec*
                      ((x-cnd7861
                        (begin
                          (write '(funapp 1382 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd7861
                        (begin
                          (write '(funapp 1384 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 1386 34))
                             (display "\n")
                             (cdr l)))
                          (x7862
                           (begin
                             (write '(funapp 1386 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1387 26))
                           (display "\n")
                           (list-ref x7863 x7862)))))))
                   g7856)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x-cnd7865
                        (begin
                          (write '(funapp 1394 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd7865
                        a
                        (letrec*
                         ((x7866
                           (begin
                             (write '(funapp 1397 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1397 57))
                           (display "\n")
                           (gcd b x7866)))))))
                   g7864)))
               (lock (lambda (st) (letrec* ((g7867 1)) g7867)))
               (unlock (lambda (st) (letrec* ((g7868 0)) g7868)))
               (f
                (lambda (n st)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x-cnd7870
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7870
                        (begin
                          (write '(funapp 1407 37))
                          (display "\n")
                          (lock st))
                        st))))
                   g7869)))
               (g
                (lambda (n st)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x-cnd7872
                        (begin
                          (write '(funapp 1414 35))
                          (display "\n")
                          (> n 0))))
                      (if x-cnd7872
                        (begin
                          (write '(funapp 1415 37))
                          (display "\n")
                          (unlock st))
                        st))))
                   g7871)))
               (main
                (lambda (n)
                  (letrec*
                   ((g7873
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 1420 45))
                          (display "\n")
                          (f n 0))))
                      (begin
                        (write '(funapp 1420 55))
                        (display "\n")
                        (g n x7874)))))
                   g7873))))
              (letrec*
               ((g7875
                 (letrec*
                  ((x7877
                    (begin
                      (write '(funapp 1426 21))
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
                                         (write '(funapp 1435 44))
                                         (display "\n")
                                         (integer?/c j7328 k7329 g7327))))
                                     (begin
                                       (write '(funapp 1436 36))
                                       (display "\n")
                                       (f7330 x7881)))))
                                  (begin
                                    (write '(funapp 1437 33))
                                    (display "\n")
                                    ((lambda (g7334 g7335 g7336)
                                       (letrec*
                                        ((g7882
                                          (letrec*
                                           ((x-cnd7883
                                             (begin
                                               (write '(funapp 1442 42))
                                               (display "\n")
                                               ((lambda (v7333)
                                                  (letrec*
                                                   ((g7884
                                                     (begin
                                                       (write
                                                        '(funapp 1444 54))
                                                       (display "\n")
                                                       (eq? 0 v7333))))
                                                   g7884))
                                                g7336))))
                                           (if x-cnd7883
                                             g7336
                                             (begin
                                               (write '(blame g7334 1449 41))
                                               (display "\n")
                                               (error
                                                (format
                                                 "contract violation, blaming ~a~%"
                                                 g7334)))))))
                                        g7882))
                                     j7328
                                     k7329
                                     x7880)))))
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
           g7350))))
       g7348)))
    g7347)))
