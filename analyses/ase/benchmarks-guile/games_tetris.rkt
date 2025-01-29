(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (begin
    (letrec*
     ((any? (lambda (v) (letrec* ((g7593 #t)) g7593)))
      (meta (lambda (v) (letrec* ((g7594 v)) g7594)))
      (member
       (lambda (v lst)
         (letrec*
          ((g7595
            (letrec*
             ((g7596
               (letrec*
                ((x-e7597 lst))
                (letrec*
                 ((v1742 x-e7597))
                 (cond
                  ((begin (write '(funapp 22 20)) (display "\n") (null? v1742))
                   (letrec* () #f))
                  ((begin (write '(funapp 23 20)) (display "\n") (and #t #t))
                   (letrec*
                    ((v1
                      (begin
                        (write '(funapp 25 26))
                        (display "\n")
                        (car v1742)))
                     (vs
                      (begin
                        (write '(funapp 25 43))
                        (display "\n")
                        (cdr v1742))))
                    (letrec*
                     ((x-cnd7598
                       (begin
                         (write '(funapp 27 34))
                         (display "\n")
                         (eq? v v1))))
                     (if x-cnd7598
                       #t
                       (begin
                         (write '(funapp 28 39))
                         (display "\n")
                         (member v vs))))))
                  (else
                   (begin
                     (write '(funapp 29 25))
                     (display "\n")
                     (error "no match found"))))))))
             g7596)))
          g7595)))
      (unconstrained/c #f)
      (actor?
       (lambda (k j)
         (letrec* ((g7599 (lambda (v) (letrec* ((g7600 v)) g7600)))) g7599)))
      (nonzero?
       (lambda (v)
         (letrec*
          ((g7601
            (letrec*
             ((x7602 (begin (write '(funapp 38 44)) (display "\n") (= v 0))))
             (begin (write '(funapp 38 54)) (display "\n") (not x7602)))))
          g7601))))
     (letrec*
      ((g7603
        (letrec*
         ((g7604
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
             ((g7605 (begin (write '(funapp 54 21)) (display "\n") '()))
              (g7606
               (letrec*
                ((empty (begin (write '(funapp 57 24)) (display "\n") '()))
                 (real?/c
                  (lambda (g7259 g7260 g7261)
                    (letrec*
                     ((g7607
                       (letrec*
                        ((x-cnd7608
                          (begin
                            (write '(funapp 63 37))
                            (display "\n")
                            (real? g7261))))
                        (if x-cnd7608
                          g7261
                          (begin
                            (write '(blame g7259 64 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7259)))))))
                     g7607)))
                 (boolean?/c
                  (lambda (g7262 g7263 g7264)
                    (letrec*
                     ((g7609
                       (letrec*
                        ((x-cnd7610
                          (begin
                            (write '(funapp 71 37))
                            (display "\n")
                            (boolean? g7264))))
                        (if x-cnd7610
                          g7264
                          (begin
                            (write '(blame g7262 72 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7262)))))))
                     g7609)))
                 (number?/c
                  (lambda (g7265 g7266 g7267)
                    (letrec*
                     ((g7611
                       (letrec*
                        ((x-cnd7612
                          (begin
                            (write '(funapp 79 37))
                            (display "\n")
                            (number? g7267))))
                        (if x-cnd7612
                          g7267
                          (begin
                            (write '(blame g7265 80 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7265)))))))
                     g7611)))
                 (any/c
                  (lambda (g7268 g7269 g7270)
                    (letrec*
                     ((g7613
                       (letrec*
                        ((x-cnd7614
                          (begin
                            (write '(funapp 88 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7615 #t)) g7615))
                             g7270))))
                        (if x-cnd7614
                          g7270
                          (begin
                            (write '(blame g7268 89 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7268)))))))
                     g7613)))
                 (any?/c
                  (lambda (g7271 g7272 g7273)
                    (letrec*
                     ((g7616
                       (letrec*
                        ((x-cnd7617
                          (begin
                            (write '(funapp 97 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7618 #t)) g7618))
                             g7273))))
                        (if x-cnd7617
                          g7273
                          (begin
                            (write '(blame g7271 98 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7271)))))))
                     g7616)))
                 (cons?/c
                  (lambda (g7274 g7275 g7276)
                    (letrec*
                     ((g7619
                       (letrec*
                        ((x-cnd7620
                          (begin
                            (write '(funapp 105 37))
                            (display "\n")
                            (pair? g7276))))
                        (if x-cnd7620
                          g7276
                          (begin
                            (write '(blame g7274 106 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7274)))))))
                     g7619)))
                 (pair?/c
                  (lambda (g7277 g7278 g7279)
                    (letrec*
                     ((g7621
                       (letrec*
                        ((x-cnd7622
                          (begin
                            (write '(funapp 113 37))
                            (display "\n")
                            (pair? g7279))))
                        (if x-cnd7622
                          g7279
                          (begin
                            (write '(blame g7277 114 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7277)))))))
                     g7621)))
                 (integer?/c
                  (lambda (g7280 g7281 g7282)
                    (letrec*
                     ((g7623
                       (letrec*
                        ((x-cnd7624
                          (begin
                            (write '(funapp 121 37))
                            (display "\n")
                            (integer? g7282))))
                        (if x-cnd7624
                          g7282
                          (begin
                            (write '(blame g7280 122 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7280)))))))
                     g7623)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7625
                       (lambda (k j v)
                         (letrec*
                          ((g7626
                            (letrec*
                             ((x-cnd7627
                               (begin
                                 (write '(funapp 132 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7627
                               (begin
                                 (write '(funapp 133 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7626))))
                     g7625)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7628
                       (lambda (k j v)
                         (letrec*
                          ((g7629
                            (letrec*
                             ((x-cnd7630
                               (begin
                                 (write '(funapp 144 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7630
                               (begin
                                 (write '(funapp 146 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7634
                                  (letrec*
                                   ((x7635
                                     (begin
                                       (write '(funapp 150 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 151 36))
                                     (display "\n")
                                     (contract k j x7635))))
                                 (x7631
                                  (letrec*
                                   ((x7633
                                     (begin
                                       (write '(funapp 154 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7632
                                     (begin
                                       (write '(funapp 154 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 155 36))
                                     (display "\n")
                                     (x7633 k j x7632)))))
                                (begin
                                  (write '(funapp 156 33))
                                  (display "\n")
                                  (orig-cons x7634 x7631)))))))
                          g7629))))
                     g7628)))
                 (any? (lambda (v) (letrec* ((g7636 #t)) g7636)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7637
                       (letrec*
                        ((x7638
                          (begin
                            (write '(funapp 163 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 163 57))
                          (display "\n")
                          (not x7638)))))
                     g7637)))
                 (nonzero?/c
                  (lambda (g7283 g7284 g7285)
                    (letrec*
                     ((g7639
                       (letrec*
                        ((x-cnd7640
                          (begin
                            (write '(funapp 171 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7641
                                  (letrec*
                                   ((x7642
                                     (begin
                                       (write '(funapp 173 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 173 66))
                                     (display "\n")
                                     (not x7642)))))
                                g7641))
                             g7285))))
                        (if x-cnd7640
                          g7285
                          (begin
                            (write '(blame g7283 178 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~n"
                              g7283)))))))
                     g7639)))
                 (meta (lambda (v) (letrec* ((g7643 v)) g7643)))
                 (+
                  (begin
                    (write '(funapp 182 19))
                    (display "\n")
                    ((lambda (j7288 k7289 f7290)
                       (letrec*
                        ((g7645
                          (lambda (g7286 g7287)
                            (letrec*
                             ((g7646
                               (letrec*
                                ((x7647
                                  (letrec*
                                   ((x7649
                                     (begin
                                       (write '(funapp 191 42))
                                       (display "\n")
                                       (number?/c j7288 k7289 g7286)))
                                    (x7648
                                     (begin
                                       (write '(funapp 192 42))
                                       (display "\n")
                                       (number?/c j7288 k7289 g7287))))
                                   (begin
                                     (write '(funapp 193 34))
                                     (display "\n")
                                     (f7290 x7649 x7648)))))
                                (begin
                                  (write '(funapp 194 31))
                                  (display "\n")
                                  (number?/c j7288 k7289 x7647)))))
                             g7646))))
                        g7645))
                     (begin (write '(funapp 197 19)) (display "\n") 'server)
                     (begin (write '(funapp 198 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7644
                          (begin
                            (write '(funapp 199 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7644)))))
                 (-
                  (begin
                    (write '(funapp 201 19))
                    (display "\n")
                    ((lambda (j7293 k7294 f7295)
                       (letrec*
                        ((g7651
                          (lambda (g7291 g7292)
                            (letrec*
                             ((g7652
                               (letrec*
                                ((x7653
                                  (letrec*
                                   ((x7655
                                     (begin
                                       (write '(funapp 210 42))
                                       (display "\n")
                                       (number?/c j7293 k7294 g7291)))
                                    (x7654
                                     (begin
                                       (write '(funapp 211 42))
                                       (display "\n")
                                       (number?/c j7293 k7294 g7292))))
                                   (begin
                                     (write '(funapp 212 34))
                                     (display "\n")
                                     (f7295 x7655 x7654)))))
                                (begin
                                  (write '(funapp 213 31))
                                  (display "\n")
                                  (number?/c j7293 k7294 x7653)))))
                             g7652))))
                        g7651))
                     (begin (write '(funapp 216 19)) (display "\n") 'server)
                     (begin (write '(funapp 217 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7650
                          (begin
                            (write '(funapp 218 51))
                            (display "\n")
                            (orig-- a b))))
                        g7650)))))
                 (*
                  (begin
                    (write '(funapp 220 19))
                    (display "\n")
                    ((lambda (j7298 k7299 f7300)
                       (letrec*
                        ((g7657
                          (lambda (g7296 g7297)
                            (letrec*
                             ((g7658
                               (letrec*
                                ((x7659
                                  (letrec*
                                   ((x7661
                                     (begin
                                       (write '(funapp 229 42))
                                       (display "\n")
                                       (number?/c j7298 k7299 g7296)))
                                    (x7660
                                     (begin
                                       (write '(funapp 230 42))
                                       (display "\n")
                                       (number?/c j7298 k7299 g7297))))
                                   (begin
                                     (write '(funapp 231 34))
                                     (display "\n")
                                     (f7300 x7661 x7660)))))
                                (begin
                                  (write '(funapp 232 31))
                                  (display "\n")
                                  (number?/c j7298 k7299 x7659)))))
                             g7658))))
                        g7657))
                     (begin (write '(funapp 235 19)) (display "\n") 'server)
                     (begin (write '(funapp 236 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7656
                          (begin
                            (write '(funapp 237 51))
                            (display "\n")
                            (orig-* a b))))
                        g7656)))))
                 (/
                  (begin
                    (write '(funapp 239 19))
                    (display "\n")
                    ((lambda (j7303 k7304 f7305)
                       (letrec*
                        ((g7663
                          (lambda (g7301 g7302)
                            (letrec*
                             ((g7664
                               (letrec*
                                ((x7665
                                  (letrec*
                                   ((x7667
                                     (begin
                                       (write '(funapp 248 42))
                                       (display "\n")
                                       (number?/c j7303 k7304 g7301)))
                                    (x7666
                                     (begin
                                       (write '(funapp 249 42))
                                       (display "\n")
                                       (number?/c j7303 k7304 g7302))))
                                   (begin
                                     (write '(funapp 250 34))
                                     (display "\n")
                                     (f7305 x7667 x7666)))))
                                (begin
                                  (write '(funapp 251 31))
                                  (display "\n")
                                  (number?/c j7303 k7304 x7665)))))
                             g7664))))
                        g7663))
                     (begin (write '(funapp 254 19)) (display "\n") 'server)
                     (begin (write '(funapp 255 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7662
                          (begin
                            (write '(funapp 256 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7662)))))
                 (car
                  (begin
                    (write '(funapp 258 19))
                    (display "\n")
                    ((lambda (j7307 k7308 f7309)
                       (letrec*
                        ((g7669
                          (lambda (g7306)
                            (letrec*
                             ((g7670
                               (letrec*
                                ((x7671
                                  (letrec*
                                   ((x7672
                                     (begin
                                       (write '(funapp 267 42))
                                       (display "\n")
                                       (pair?/c j7307 k7308 g7306))))
                                   (begin
                                     (write '(funapp 268 34))
                                     (display "\n")
                                     (f7309 x7672)))))
                                (begin
                                  (write '(funapp 269 31))
                                  (display "\n")
                                  (any/c j7307 k7308 x7671)))))
                             g7670))))
                        g7669))
                     (begin (write '(funapp 272 19)) (display "\n") 'server)
                     (begin (write '(funapp 273 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7668
                          (begin
                            (write '(funapp 274 49))
                            (display "\n")
                            (orig-car p))))
                        g7668)))))
                 (cdr
                  (begin
                    (write '(funapp 276 19))
                    (display "\n")
                    ((lambda (j7311 k7312 f7313)
                       (letrec*
                        ((g7674
                          (lambda (g7310)
                            (letrec*
                             ((g7675
                               (letrec*
                                ((x7676
                                  (letrec*
                                   ((x7677
                                     (begin
                                       (write '(funapp 285 42))
                                       (display "\n")
                                       (pair?/c j7311 k7312 g7310))))
                                   (begin
                                     (write '(funapp 286 34))
                                     (display "\n")
                                     (f7313 x7677)))))
                                (begin
                                  (write '(funapp 287 31))
                                  (display "\n")
                                  (any/c j7311 k7312 x7676)))))
                             g7675))))
                        g7674))
                     (begin (write '(funapp 290 19)) (display "\n") 'server)
                     (begin (write '(funapp 291 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7673
                          (begin
                            (write '(funapp 292 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7673)))))
                 (cons
                  (begin
                    (write '(funapp 294 19))
                    (display "\n")
                    ((lambda (j7316 k7317 f7318)
                       (letrec*
                        ((g7679
                          (lambda (g7314 g7315)
                            (letrec*
                             ((g7680
                               (letrec*
                                ((x7681
                                  (letrec*
                                   ((x7683
                                     (begin
                                       (write '(funapp 303 42))
                                       (display "\n")
                                       (any/c j7316 k7317 g7314)))
                                    (x7682
                                     (begin
                                       (write '(funapp 304 42))
                                       (display "\n")
                                       (any/c j7316 k7317 g7315))))
                                   (begin
                                     (write '(funapp 305 34))
                                     (display "\n")
                                     (f7318 x7683 x7682)))))
                                (begin
                                  (write '(funapp 306 31))
                                  (display "\n")
                                  (pair?/c j7316 k7317 x7681)))))
                             g7680))))
                        g7679))
                     (begin (write '(funapp 309 19)) (display "\n") 'server)
                     (begin (write '(funapp 310 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7678
                          (begin
                            (write '(funapp 311 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7678)))))
                 (vector-ref
                  (begin
                    (write '(funapp 313 19))
                    (display "\n")
                    ((lambda (j7320 k7321 f7322)
                       (letrec*
                        ((g7685
                          (lambda (g7319)
                            (letrec*
                             ((g7686
                               (letrec*
                                ((x7687
                                  (letrec*
                                   ((x7688
                                     (begin
                                       (write '(funapp 322 42))
                                       (display "\n")
                                       (vector?/c j7320 k7321 g7319))))
                                   (begin
                                     (write '(funapp 323 34))
                                     (display "\n")
                                     (f7322 x7688)))))
                                (begin
                                  (write '(funapp 324 31))
                                  (display "\n")
                                  (integer?/c j7320 k7321 x7687)))))
                             g7686))))
                        g7685))
                     (begin (write '(funapp 327 19)) (display "\n") 'server)
                     (begin (write '(funapp 328 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7684
                          (begin
                            (write '(funapp 330 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7684)))))
                 (vector-set!
                  (begin
                    (write '(funapp 332 19))
                    (display "\n")
                    ((lambda (j7325 k7326 f7327)
                       (letrec*
                        ((g7690
                          (lambda (g7323 g7324)
                            (letrec*
                             ((g7691
                               (letrec*
                                ((x7692
                                  (letrec*
                                   ((x7694
                                     (begin
                                       (write '(funapp 341 42))
                                       (display "\n")
                                       (vector?/c j7325 k7326 g7323)))
                                    (x7693
                                     (begin
                                       (write '(funapp 342 42))
                                       (display "\n")
                                       (integer?/c j7325 k7326 g7324))))
                                   (begin
                                     (write '(funapp 343 34))
                                     (display "\n")
                                     (f7327 x7694 x7693)))))
                                (begin
                                  (write '(funapp 344 31))
                                  (display "\n")
                                  (any/c j7325 k7326 x7692)))))
                             g7691))))
                        g7690))
                     (begin (write '(funapp 347 19)) (display "\n") 'server)
                     (begin (write '(funapp 348 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7689
                          (begin
                            (write '(funapp 350 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7689)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7695
                       (if cnd
                         (begin (write '(funapp 354 37)) (display "\n") '())
                         (begin
                           (write '(funapp 354 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7695)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7696
                       (letrec*
                        ((x7697
                          (letrec*
                           ((x7698
                             (begin
                               (write '(funapp 361 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 361 60))
                             (display "\n")
                             (cdr x7698)))))
                        (begin
                          (write '(funapp 362 25))
                          (display "\n")
                          (cdr x7697)))))
                     g7696)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7699
                       (letrec*
                        ((x7702
                          (begin
                            (write '(funapp 368 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 368 64))
                          (display "\n")
                          (assert x7702))))
                      (g7700
                       (letrec*
                        ((x7703
                          (begin
                            (write '(funapp 369 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 369 59))
                          (display "\n")
                          (assert x7703))))
                      (g7701
                       (letrec*
                        ((x-cnd7704
                          (begin
                            (write '(funapp 372 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7704
                          (begin (write '(funapp 374 26)) (display "\n") '())
                          (letrec*
                           ((x7707
                             (letrec*
                              ((x7708
                                (begin
                                  (write '(funapp 376 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 376 63))
                                (display "\n")
                                (f x7708))))
                            (x7705
                             (letrec*
                              ((x7706
                                (begin
                                  (write '(funapp 377 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 377 63))
                                (display "\n")
                                (map f x7706)))))
                           (begin
                             (write '(funapp 378 28))
                             (display "\n")
                             (cons x7707 x7705)))))))
                     g7701)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7709
                       (letrec*
                        ((x7710
                          (begin
                            (write '(funapp 383 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 383 57))
                          (display "\n")
                          (cdr x7710)))))
                     g7709)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7711
                       (letrec*
                        ((x7712
                          (letrec*
                           ((x7713
                             (letrec*
                              ((x7714
                                (begin
                                  (write '(funapp 392 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 392 63))
                                (display "\n")
                                (car x7714)))))
                           (begin
                             (write '(funapp 393 28))
                             (display "\n")
                             (cdr x7713)))))
                        (begin
                          (write '(funapp 394 25))
                          (display "\n")
                          (car x7712)))))
                     g7711)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7715
                       (letrec*
                        ((x7716
                          (letrec*
                           ((x7717
                             (letrec*
                              ((x7718
                                (begin
                                  (write '(funapp 403 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 403 63))
                                (display "\n")
                                (cdr x7718)))))
                           (begin
                             (write '(funapp 404 28))
                             (display "\n")
                             (car x7717)))))
                        (begin
                          (write '(funapp 405 25))
                          (display "\n")
                          (cdr x7716)))))
                     g7715)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7719
                       (letrec*
                        ((x7722
                          (begin
                            (write '(funapp 411 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 411 62))
                          (display "\n")
                          (assert x7722))))
                      (g7720
                       (letrec*
                        ((x7723
                          (begin
                            (write '(funapp 413 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 413 61))
                          (display "\n")
                          (assert x7723))))
                      (g7721
                       (letrec*
                        ((output-port
                          (begin
                            (write '(funapp 416 39))
                            (display "\n")
                            (open-output-file filename)))
                         (res
                          (begin
                            (write '(funapp 417 31))
                            (display "\n")
                            (proc output-port))))
                        (letrec*
                         ((g7724
                           (begin
                             (write '(funapp 419 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7725 res))
                         g7725))))
                     g7721)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7726
                       (letrec*
                        ((x7727
                          (letrec*
                           ((x7728
                             (begin
                               (write '(funapp 427 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 427 60))
                             (display "\n")
                             (cdr x7728)))))
                        (begin
                          (write '(funapp 428 25))
                          (display "\n")
                          (car x7727)))))
                     g7726)))
                 (cdaadr
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
                                  (write '(funapp 437 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 437 63))
                                (display "\n")
                                (car x7732)))))
                           (begin
                             (write '(funapp 438 28))
                             (display "\n")
                             (car x7731)))))
                        (begin
                          (write '(funapp 439 25))
                          (display "\n")
                          (cdr x7730)))))
                     g7729)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7733
                       (letrec*
                        ((x7735
                          (begin
                            (write '(funapp 444 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 444 59))
                          (display "\n")
                          (assert x7735))))
                      (g7734
                       (letrec*
                        ((x-cnd7736
                          (begin
                            (write '(funapp 447 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7736
                          #f
                          (letrec*
                           ((x-cnd7737
                             (letrec*
                              ((x7738
                                (begin
                                  (write '(funapp 452 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 452 58))
                                (display "\n")
                                (eq? x7738 k)))))
                           (if x-cnd7737
                             (begin
                               (write '(funapp 454 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7739
                                (begin
                                  (write '(funapp 455 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 455 57))
                                (display "\n")
                                (assq k x7739)))))))))
                     g7734)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7740
                       (letrec*
                        ((x7741
                          (begin
                            (write '(funapp 460 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 460 62))
                          (display "\n")
                          (= 0 x7741)))))
                     g7740)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7742
                       (letrec*
                        ((x7744
                          (begin
                            (write '(funapp 465 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 465 59))
                          (display "\n")
                          (assert x7744))))
                      (g7743
                       (letrec*
                        ((x-cnd7745
                          (begin
                            (write '(funapp 468 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7745
                          ""
                          (letrec*
                           ((x7748
                             (letrec*
                              ((x7749
                                (begin
                                  (write '(funapp 473 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 473 57))
                                (display "\n")
                                (char->string x7749))))
                            (x7746
                             (letrec*
                              ((x7747
                                (begin
                                  (write '(funapp 475 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 475 57))
                                (display "\n")
                                (list->string x7747)))))
                           (begin
                             (write '(funapp 476 28))
                             (display "\n")
                             (string-append x7748 x7746)))))))
                     g7743)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7750
                       (letrec*
                        ((x7753
                          (begin
                            (write '(funapp 481 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 481 60))
                          (display "\n")
                          (assert x7753))))
                      (g7751
                       (letrec*
                        ((x7754
                          (begin
                            (write '(funapp 482 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 482 60))
                          (display "\n")
                          (assert x7754))))
                      (g7752
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 485 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7755
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 487 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7755))))
                     g7752)))
                 (cdddar
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
                                  (write '(funapp 497 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 497 63))
                                (display "\n")
                                (cdr x7759)))))
                           (begin
                             (write '(funapp 498 28))
                             (display "\n")
                             (cdr x7758)))))
                        (begin
                          (write '(funapp 499 25))
                          (display "\n")
                          (cdr x7757)))))
                     g7756)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7760
                       (letrec*
                        ((x7763
                          (begin
                            (write '(funapp 504 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 504 59))
                          (display "\n")
                          (assert x7763))))
                      (g7761
                       (letrec*
                        ((x7764
                          (begin
                            (write '(funapp 505 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 505 59))
                          (display "\n")
                          (assert x7764))))
                      (g7762
                       (letrec*
                        ((x-cnd7765
                          (begin
                            (write '(funapp 508 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7765
                          x
                          (letrec*
                           ((x7767
                             (begin
                               (write '(funapp 512 36))
                               (display "\n")
                               (cdr x)))
                            (x7766
                             (begin
                               (write '(funapp 512 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 513 28))
                             (display "\n")
                             (list-tail x7767 x7766)))))))
                     g7762)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7768
                       (begin (write '(funapp 515 51)) (display "\n") '())))
                     g7768)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7769
                       (letrec*
                        ((x-cnd7770
                          (letrec*
                           ((x7771 #\a))
                           (begin
                             (write '(funapp 522 50))
                             (display "\n")
                             (char-ci>=? c x7771)))))
                        (if x-cnd7770
                          (letrec*
                           ((x7772 #\z))
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (char-ci<=? c x7772)))
                          #f))))
                     g7769)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7773
                       (letrec*
                        ((x7775
                          (begin
                            (write '(funapp 530 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 530 61))
                          (display "\n")
                          (assert x7775))))
                      (g7774
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 533 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7776
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 539 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7777 (if val7243 val7243 #f)))
                               g7777)))))
                         g7776))))
                     g7774)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7778
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7779
                             (begin
                               (write '(funapp 551 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 551 64))
                             (display "\n")
                             (= x7779 9)))))
                        (letrec*
                         ((g7780
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7781
                                   (begin
                                     (write '(funapp 559 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 560 34))
                                   (display "\n")
                                   (= x7781 10)))))
                              (letrec*
                               ((g7782
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7783
                                      (begin
                                        (write '(funapp 566 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 567 37))
                                      (display "\n")
                                      (= x7783 32))))))
                               g7782)))))
                         g7780))))
                     g7778)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7784
                       (letrec*
                        ((x7785
                          (letrec*
                           ((x7786
                             (begin
                               (write '(funapp 576 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 576 60))
                             (display "\n")
                             (cdr x7786)))))
                        (begin
                          (write '(funapp 577 25))
                          (display "\n")
                          (cdr x7785)))))
                     g7784)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7787
                       (letrec*
                        ((x7789
                          (begin
                            (write '(funapp 582 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 582 61))
                          (display "\n")
                          (assert x7789))))
                      (g7788
                       (begin
                         (write '(funapp 583 30))
                         (display "\n")
                         (> x 0))))
                     g7788)))
                 ($pc (begin (write '(funapp 585 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7790 #f)) g7790)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7791
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 591 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 591 57))
                          (display "\n")
                          (cdr x7792)))))
                     g7791)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7793
                       (letrec*
                        ((x7795
                          (begin
                            (write '(funapp 596 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 596 61))
                          (display "\n")
                          (assert x7795))))
                      (g7794
                       (letrec*
                        ((x-cnd7796
                          (begin
                            (write '(funapp 599 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7796
                          (begin
                            (write '(funapp 600 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 600 51))
                            (display "\n")
                            (floor x))))))
                     g7794)))
                 ($cmp (begin (write '(funapp 602 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7797
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 608 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7798
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7800
                                   (begin
                                     (write '(funapp 616 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7799
                                   (begin
                                     (write '(funapp 616 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 617 34))
                                   (display "\n")
                                   (and x7800 x7799)))))
                              (letrec*
                               ((g7801
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7804
                                         (begin
                                           (write '(funapp 625 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7803
                                         (begin
                                           (write '(funapp 626 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7802
                                         (begin
                                           (write '(funapp 627 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 628 40))
                                         (display "\n")
                                         (and x7804 x7803 x7802)))))
                                    (letrec*
                                     ((g7805
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7813
                                               (begin
                                                 (write '(funapp 636 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7812
                                               (begin
                                                 (write '(funapp 637 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7809
                                               (letrec*
                                                ((x7811
                                                  (begin
                                                    (write '(funapp 640 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7810
                                                  (begin
                                                    (write '(funapp 641 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 642 49))
                                                  (display "\n")
                                                  (equal? x7811 x7810))))
                                              (x7806
                                               (letrec*
                                                ((x7808
                                                  (begin
                                                    (write '(funapp 645 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7807
                                                  (begin
                                                    (write '(funapp 646 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 647 49))
                                                  (display "\n")
                                                  (equal? x7808 x7807)))))
                                             (begin
                                               (write '(funapp 648 46))
                                               (display "\n")
                                               (and x7813
                                                    x7812
                                                    x7809
                                                    x7806)))))
                                          (letrec*
                                           ((g7814
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7830
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7829
                                                  (begin
                                                    (write '(funapp 655 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7815
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 658 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7816
                                                      (letrec*
                                                       ((x7827
                                                         (letrec*
                                                          ((x7828
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 665
                                                                 61))
                                                              (display "\n")
                                                              (vector-length
                                                               b))))
                                                          (begin
                                                            (write
                                                             '(funapp 666 59))
                                                            (display "\n")
                                                            (= x7828 n))))
                                                        (x7817
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7818
                                                                 (letrec*
                                                                  ((x7825
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         675
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7819
                                                                    (letrec*
                                                                     ((x7822
                                                                       (letrec*
                                                                        ((x7824
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               681
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             a
                                                                             i)))
                                                                         (x7823
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               685
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             b
                                                                             i))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             688
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (equal?
                                                                           x7824
                                                                           x7823))))
                                                                      (x7820
                                                                       (letrec*
                                                                        ((x7821
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               694
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (+
                                                                             i
                                                                             1))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             697
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (loop
                                                                           x7821)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          699
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7822
                                                                            x7820)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       701
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7825
                                                                        x7819)))))
                                                               g7818))))
                                                          (letrec*
                                                           ((g7826
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  705
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7826))))
                                                       (begin
                                                         (write
                                                          '(funapp 707 56))
                                                         (display "\n")
                                                         (and x7827 x7817)))))
                                                    g7816))))
                                                (begin
                                                  (write '(funapp 709 49))
                                                  (display "\n")
                                                  (and x7830 x7829 x7815))))))
                                           g7814)))))
                                     g7805)))))
                               g7801)))))
                         g7798))))
                     g7797)))
                 (cdaaar
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
                                  (write '(funapp 722 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 722 63))
                                (display "\n")
                                (car x7834)))))
                           (begin
                             (write '(funapp 723 28))
                             (display "\n")
                             (car x7833)))))
                        (begin
                          (write '(funapp 724 25))
                          (display "\n")
                          (cdr x7832)))))
                     g7831)))
                 (caaddr
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
                                  (write '(funapp 733 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 733 63))
                                (display "\n")
                                (cdr x7838)))))
                           (begin
                             (write '(funapp 734 28))
                             (display "\n")
                             (car x7837)))))
                        (begin
                          (write '(funapp 735 25))
                          (display "\n")
                          (car x7836)))))
                     g7835)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7839
                       (begin
                         (write '(funapp 737 55))
                         (display "\n")
                         (eq? x y))))
                     g7839)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7840
                       (letrec*
                        ((x7842
                          (begin
                            (write '(funapp 741 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 741 61))
                          (display "\n")
                          (assert x7842))))
                      (g7841
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 744 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7843
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 750 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7844 (if val7251 val7251 #f)))
                               g7844)))))
                         g7843))))
                     g7841)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7845
                       (letrec*
                        ((x7848
                          (begin
                            (write '(funapp 760 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 760 62))
                          (display "\n")
                          (assert x7848))))
                      (g7846
                       (letrec*
                        ((x7849
                          (begin
                            (write '(funapp 762 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 762 61))
                          (display "\n")
                          (assert x7849))))
                      (g7847
                       (letrec*
                        ((input-port
                          (begin
                            (write '(funapp 765 38))
                            (display "\n")
                            (open-input-file filename)))
                         (res
                          (begin
                            (write '(funapp 766 31))
                            (display "\n")
                            (proc input-port))))
                        (letrec*
                         ((g7850
                           (begin
                             (write '(funapp 768 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7851 res))
                         g7851))))
                     g7847)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7852
                       (begin
                         (write '(funapp 771 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 771 59))
                            (display "\n")
                            '())))))
                     g7852)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7853
                       (letrec*
                        ((x7856
                          (begin
                            (write '(funapp 775 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 775 60))
                          (display "\n")
                          (assert x7856))))
                      (g7854
                       (letrec*
                        ((x7857
                          (begin
                            (write '(funapp 776 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 776 60))
                          (display "\n")
                          (assert x7857))))
                      (g7855
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 779 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7858
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 781 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7858))))
                     g7855)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7859
                       (letrec*
                        ((x7860
                          (letrec*
                           ((x7861
                             (begin
                               (write '(funapp 789 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 789 60))
                             (display "\n")
                             (car x7861)))))
                        (begin
                          (write '(funapp 790 25))
                          (display "\n")
                          (cdr x7860)))))
                     g7859)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7862
                       (letrec*
                        ((x7863
                          (letrec*
                           ((x7864
                             (letrec*
                              ((x7865
                                (begin
                                  (write '(funapp 799 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 799 63))
                                (display "\n")
                                (cdr x7865)))))
                           (begin
                             (write '(funapp 800 28))
                             (display "\n")
                             (car x7864)))))
                        (begin
                          (write '(funapp 801 25))
                          (display "\n")
                          (cdr x7863)))))
                     g7862)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7866
                       (letrec*
                        ((x7867
                          (letrec*
                           ((x7868
                             (begin
                               (write '(funapp 809 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 809 60))
                             (display "\n")
                             (cdr x7868)))))
                        (begin
                          (write '(funapp 810 25))
                          (display "\n")
                          (car x7867)))))
                     g7866)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7869
                       (letrec*
                        ((x7870
                          (letrec*
                           ((x7871
                             (begin
                               (write '(funapp 817 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 817 60))
                             (display "\n")
                             (car x7871)))))
                        (begin
                          (write '(funapp 818 25))
                          (display "\n")
                          (car x7870)))))
                     g7869)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7872
                       (letrec*
                        ((x7875
                          (begin
                            (write '(funapp 823 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 823 60))
                          (display "\n")
                          (assert x7875))))
                      (g7873
                       (letrec*
                        ((x7876
                          (begin
                            (write '(funapp 824 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 824 60))
                          (display "\n")
                          (assert x7876))))
                      (g7874
                       (letrec*
                        ((x7877
                          (begin
                            (write '(funapp 826 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 826 62))
                          (display "\n")
                          (not x7877)))))
                     g7874)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7878
                       (letrec*
                        ((x7879
                          (letrec*
                           ((x7880
                             (letrec*
                              ((x7881
                                (begin
                                  (write '(funapp 836 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 836 63))
                                (display "\n")
                                (car x7881)))))
                           (begin
                             (write '(funapp 837 28))
                             (display "\n")
                             (car x7880)))))
                        (begin
                          (write '(funapp 838 25))
                          (display "\n")
                          (car x7879)))))
                     g7878)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7882
                       (letrec*
                        ((x7884
                          (begin
                            (write '(funapp 843 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 843 61))
                          (display "\n")
                          (assert x7884))))
                      (g7883
                       (begin
                         (write '(funapp 844 30))
                         (display "\n")
                         (< x 0))))
                     g7883)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7885
                       (begin
                         (write '(funapp 846 55))
                         (display "\n")
                         (memq e l))))
                     g7885)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7886
                       (letrec*
                        ((x7887
                          (letrec*
                           ((x7888
                             (begin
                               (write '(funapp 852 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 852 60))
                             (display "\n")
                             (car x7888)))))
                        (begin
                          (write '(funapp 853 25))
                          (display "\n")
                          (car x7887)))))
                     g7886)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7889
                       (begin (write '(funapp 855 53)) (display "\n") '())))
                     g7889)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7890
                       (letrec*
                        ((x7892
                          (begin
                            (write '(funapp 859 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 859 59))
                          (display "\n")
                          (assert x7892))))
                      (g7891
                       (letrec*
                        ((x-cnd7893
                          (begin
                            (write '(funapp 862 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7893
                          (begin (write '(funapp 864 26)) (display "\n") '())
                          (letrec*
                           ((x7896
                             (letrec*
                              ((x7897
                                (begin
                                  (write '(funapp 866 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 866 63))
                                (display "\n")
                                (reverse x7897))))
                            (x7894
                             (letrec*
                              ((x7895
                                (begin
                                  (write '(funapp 867 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 867 63))
                                (display "\n")
                                (list x7895)))))
                           (begin
                             (write '(funapp 868 28))
                             (display "\n")
                             (append x7896 x7894)))))))
                     g7891)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7898
                       (letrec*
                        ((x7899
                          (letrec*
                           ((x7900
                             (letrec*
                              ((x7901
                                (begin
                                  (write '(funapp 877 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 877 63))
                                (display "\n")
                                (car x7901)))))
                           (begin
                             (write '(funapp 878 28))
                             (display "\n")
                             (car x7900)))))
                        (begin
                          (write '(funapp 879 25))
                          (display "\n")
                          (car x7899)))))
                     g7898)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7902
                       (letrec*
                        ((x7903
                          (letrec*
                           ((x7904
                             (letrec*
                              ((x7905
                                (begin
                                  (write '(funapp 888 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 888 63))
                                (display "\n")
                                (car x7905)))))
                           (begin
                             (write '(funapp 889 28))
                             (display "\n")
                             (cdr x7904)))))
                        (begin
                          (write '(funapp 890 25))
                          (display "\n")
                          (cdr x7903)))))
                     g7902)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7906
                       (letrec*
                        ((x7908
                          (begin
                            (write '(funapp 895 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 895 61))
                          (display "\n")
                          (assert x7908))))
                      (g7907
                       (letrec*
                        ((x7909
                          (begin
                            (write '(funapp 896 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 896 62))
                          (display "\n")
                          (= 1 x7909)))))
                     g7907)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7910
                       (letrec*
                        ((x7911
                          (letrec*
                           ((x7912
                             (letrec*
                              ((x7913
                                (begin
                                  (write '(funapp 905 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 905 63))
                                (display "\n")
                                (cdr x7913)))))
                           (begin
                             (write '(funapp 906 28))
                             (display "\n")
                             (car x7912)))))
                        (begin
                          (write '(funapp 907 25))
                          (display "\n")
                          (car x7911)))))
                     g7910)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7914
                       (letrec*
                        ((x7917
                          (begin
                            (write '(funapp 913 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 913 61))
                          (display "\n")
                          (assert x7917))))
                      (g7915
                       (letrec*
                        ((x7918
                          (begin
                            (write '(funapp 914 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 914 62))
                          (display "\n")
                          (assert x7918))))
                      (g7916
                       (if cnd
                         (letrec*
                          ((g7919
                            (begin
                              (write '(funapp 917 43))
                              (display "\n")
                              (proc))))
                          g7919)
                         (if cnd
                           (letrec*
                            ((g7920
                              (letrec*
                               ((x7921
                                 (begin
                                   (write '(funapp 921 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 921 61))
                                 (display "\n")
                                 (proc x7921)))))
                            g7920)
                           (if cnd
                             (letrec*
                              ((g7922
                                (letrec*
                                 ((x7924
                                   (begin
                                     (write '(funapp 927 42))
                                     (display "\n")
                                     (car args)))
                                  (x7923
                                   (begin
                                     (write '(funapp 927 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 928 34))
                                   (display "\n")
                                   (proc x7924 x7923)))))
                              g7922)
                             (if cnd
                               (letrec*
                                ((g7925
                                  (letrec*
                                   ((x7928
                                     (begin
                                       (write '(funapp 934 44))
                                       (display "\n")
                                       (car args)))
                                    (x7927
                                     (begin
                                       (write '(funapp 935 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7926
                                     (begin
                                       (write '(funapp 936 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 937 36))
                                     (display "\n")
                                     (proc x7928 x7927 x7926)))))
                                g7925)
                               (if cnd
                                 (letrec*
                                  ((g7929
                                    (letrec*
                                     ((x7933
                                       (begin
                                         (write '(funapp 943 46))
                                         (display "\n")
                                         (car args)))
                                      (x7932
                                       (begin
                                         (write '(funapp 944 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7931
                                       (begin
                                         (write '(funapp 945 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7930
                                       (begin
                                         (write '(funapp 946 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 947 38))
                                       (display "\n")
                                       (proc x7933 x7932 x7931 x7930)))))
                                  g7929)
                                 (if cnd
                                   (letrec*
                                    ((g7934
                                      (letrec*
                                       ((x7940
                                         (begin
                                           (write '(funapp 953 48))
                                           (display "\n")
                                           (car args)))
                                        (x7939
                                         (begin
                                           (write '(funapp 954 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7938
                                         (begin
                                           (write '(funapp 955 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7937
                                         (begin
                                           (write '(funapp 956 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7935
                                         (letrec*
                                          ((x7936
                                            (begin
                                              (write '(funapp 959 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 960 43))
                                            (display "\n")
                                            (car x7936)))))
                                       (begin
                                         (write '(funapp 961 40))
                                         (display "\n")
                                         (proc
                                          x7940
                                          x7939
                                          x7938
                                          x7937
                                          x7935)))))
                                    g7934)
                                   (if cnd
                                     (letrec*
                                      ((g7941
                                        (letrec*
                                         ((x7949
                                           (begin
                                             (write '(funapp 967 50))
                                             (display "\n")
                                             (car args)))
                                          (x7948
                                           (begin
                                             (write '(funapp 968 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7947
                                           (begin
                                             (write '(funapp 969 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7946
                                           (begin
                                             (write '(funapp 970 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7944
                                           (letrec*
                                            ((x7945
                                              (begin
                                                (write '(funapp 973 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 974 45))
                                              (display "\n")
                                              (car x7945))))
                                          (x7942
                                           (letrec*
                                            ((x7943
                                              (begin
                                                (write '(funapp 977 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 978 45))
                                              (display "\n")
                                              (cadr x7943)))))
                                         (begin
                                           (write '(funapp 979 42))
                                           (display "\n")
                                           (proc
                                            x7949
                                            x7948
                                            x7947
                                            x7946
                                            x7944
                                            x7942)))))
                                      g7941)
                                     (if cnd
                                       (letrec*
                                        ((g7950
                                          (letrec*
                                           ((x7960
                                             (begin
                                               (write '(funapp 991 52))
                                               (display "\n")
                                               (car args)))
                                            (x7959
                                             (begin
                                               (write '(funapp 992 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7958
                                             (begin
                                               (write '(funapp 993 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7957
                                             (begin
                                               (write '(funapp 994 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7955
                                             (letrec*
                                              ((x7956
                                                (begin
                                                  (write '(funapp 997 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 998 47))
                                                (display "\n")
                                                (car x7956))))
                                            (x7953
                                             (letrec*
                                              ((x7954
                                                (begin
                                                  (write '(funapp 1001 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1002 47))
                                                (display "\n")
                                                (cadr x7954))))
                                            (x7951
                                             (letrec*
                                              ((x7952
                                                (begin
                                                  (write '(funapp 1005 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1006 47))
                                                (display "\n")
                                                (caddr x7952)))))
                                           (begin
                                             (write '(funapp 1007 44))
                                             (display "\n")
                                             (proc
                                              x7960
                                              x7959
                                              x7958
                                              x7957
                                              x7955
                                              x7953
                                              x7951)))))
                                        g7950)
                                       (letrec*
                                        ((g7961
                                          (begin
                                            (write '(funapp 1017 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7961)))))))))))
                     g7916)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7962
                       (letrec*
                        ((x7964
                          (begin
                            (write '(funapp 1023 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1023 59))
                          (display "\n")
                          (assert x7964))))
                      (g7963
                       (letrec*
                        ((x-cnd7965
                          (begin
                            (write '(funapp 1026 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7965
                          #f
                          (letrec*
                           ((x-cnd7966
                             (letrec*
                              ((x7967
                                (begin
                                  (write '(funapp 1031 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1031 57))
                                (display "\n")
                                (equal? x7967 e)))))
                           (if x-cnd7966
                             l
                             (letrec*
                              ((x7968
                                (begin
                                  (write '(funapp 1034 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1034 57))
                                (display "\n")
                                (member e x7968)))))))))
                     g7963)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7969
                       (letrec*
                        ((x7970
                          (letrec*
                           ((x7971
                             (letrec*
                              ((x7972
                                (begin
                                  (write '(funapp 1043 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1043 63))
                                (display "\n")
                                (cdr x7972)))))
                           (begin
                             (write '(funapp 1044 28))
                             (display "\n")
                             (cdr x7971)))))
                        (begin
                          (write '(funapp 1045 25))
                          (display "\n")
                          (cdr x7970)))))
                     g7969)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7973
                       (letrec*
                        ((x7974
                          (letrec*
                           ((x7975
                             (letrec*
                              ((x7976
                                (begin
                                  (write '(funapp 1054 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1054 63))
                                (display "\n")
                                (cdr x7976)))))
                           (begin
                             (write '(funapp 1055 28))
                             (display "\n")
                             (cdr x7975)))))
                        (begin
                          (write '(funapp 1056 25))
                          (display "\n")
                          (car x7974)))))
                     g7973)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7977
                       (begin
                         (write '(funapp 1058 55))
                         (display "\n")
                         (random 42))))
                     g7977)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7978
                       (letrec*
                        ((x7980
                          (begin
                            (write '(funapp 1062 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1062 61))
                          (display "\n")
                          (assert x7980))))
                      (g7979
                       (begin
                         (write '(funapp 1063 30))
                         (display "\n")
                         (= x 0))))
                     g7979)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7981
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1070 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7982
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1072 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7982))))
                     g7981)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7983
                       (letrec*
                        ((x7984
                          (begin
                            (write '(funapp 1078 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1078 57))
                          (display "\n")
                          (car x7984)))))
                     g7983)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7985
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7988
                             (begin
                               (write '(funapp 1088 36))
                               (display "\n")
                               (pair? l)))
                            (x7986
                             (letrec*
                              ((x7987
                                (begin
                                  (write '(funapp 1089 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1089 63))
                                (display "\n")
                                (list? x7987)))))
                           (begin
                             (write '(funapp 1090 28))
                             (display "\n")
                             (and x7988 x7986)))))
                        (letrec*
                         ((g7989
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1092 54))
                               (display "\n")
                               (null? l)))))
                         g7989))))
                     g7985)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g7990
                       (letrec*
                        ((x7991
                          (letrec*
                           ((x7992
                             (letrec*
                              ((x7993
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (car x7993)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (cdr x7992)))))
                        (begin
                          (write '(funapp 1104 25))
                          (display "\n")
                          (cdr x7991)))))
                     g7990)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7994
                       (letrec*
                        ((x-cnd7995
                          (letrec*
                           ((x7996 #\0))
                           (begin
                             (write '(funapp 1111 60))
                             (display "\n")
                             (char<=? x7996 c)))))
                        (if x-cnd7995
                          (letrec*
                           ((x7997 #\9))
                           (begin
                             (write '(funapp 1113 50))
                             (display "\n")
                             (char<=? c x7997)))
                          #f))))
                     g7994)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g7998
                       (letrec*
                        ((x8000
                          (begin
                            (write '(funapp 1120 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1120 59))
                          (display "\n")
                          (assert x8000))))
                      (g7999
                       (letrec*
                        ((x-cnd8001
                          (begin
                            (write '(funapp 1123 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8001
                          #f
                          (letrec*
                           ((x-cnd8002
                             (letrec*
                              ((x8003
                                (begin
                                  (write '(funapp 1128 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1128 58))
                                (display "\n")
                                (eqv? x8003 k)))))
                           (if x-cnd8002
                             (begin
                               (write '(funapp 1130 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x8004
                                (begin
                                  (write '(funapp 1131 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1131 57))
                                (display "\n")
                                (assq k x8004)))))))))
                     g7999)))
                 (not (lambda (x) (letrec* ((g8005 (if x #f #t))) g8005)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g8006
                       (begin
                         (write '(funapp 1135 52))
                         (display "\n")
                         (append l1 l2))))
                     g8006)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g8007
                       (letrec*
                        ((x8009
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1139 59))
                          (display "\n")
                          (assert x8009))))
                      (g8008
                       (letrec*
                        ((x-cnd8010
                          (begin
                            (write '(funapp 1142 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8010
                          #f
                          (letrec*
                           ((x-cnd8011
                             (letrec*
                              ((x8012
                                (begin
                                  (write '(funapp 1147 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1147 57))
                                (display "\n")
                                (eq? x8012 e)))))
                           (if x-cnd8011
                             l
                             (letrec*
                              ((x8013
                                (begin
                                  (write '(funapp 1150 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 57))
                                (display "\n")
                                (memq e x8013)))))))))
                     g8008)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g8014
                       (letrec*
                        ((x8015
                          (letrec*
                           ((x8016
                             (letrec*
                              ((x8017
                                (begin
                                  (write '(funapp 1159 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1159 63))
                                (display "\n")
                                (car x8017)))))
                           (begin
                             (write '(funapp 1160 28))
                             (display "\n")
                             (cdr x8016)))))
                        (begin
                          (write '(funapp 1161 25))
                          (display "\n")
                          (car x8015)))))
                     g8014)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g8018
                       (letrec*
                        ((x8020
                          (begin
                            (write '(funapp 1166 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1166 59))
                          (display "\n")
                          (assert x8020))))
                      (g8019
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g8021
                               (letrec*
                                ((x-cnd8022
                                  (begin
                                    (write '(funapp 1174 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd8022
                                  0
                                  (letrec*
                                   ((x8023
                                     (letrec*
                                      ((x8024
                                        (begin
                                          (write '(funapp 1179 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1179 65))
                                        (display "\n")
                                        (rec x8024)))))
                                   (begin
                                     (write '(funapp 1180 36))
                                     (display "\n")
                                     (+ 1 x8023)))))))
                             g8021))))
                        (letrec*
                         ((g8025
                           (begin
                             (write '(funapp 1182 42))
                             (display "\n")
                             (rec l))))
                         g8025))))
                     g8019)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8026
                       (letrec*
                        ((x8029
                          (begin
                            (write '(funapp 1187 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1187 60))
                          (display "\n")
                          (assert x8029))))
                      (g8027
                       (letrec*
                        ((x8030
                          (begin
                            (write '(funapp 1188 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1188 60))
                          (display "\n")
                          (assert x8030))))
                      (g8028
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1191 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g8031
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1193 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g8031))))
                     g8028)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g8032
                       (letrec*
                        ((x8033
                          (begin
                            (write '(funapp 1200 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1200 61))
                          (display "\n")
                          (not x8033)))))
                     g8032)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g8034
                       (letrec*
                        ((x8035
                          (letrec*
                           ((x8036
                             (begin
                               (write '(funapp 1207 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1207 60))
                             (display "\n")
                             (car x8036)))))
                        (begin
                          (write '(funapp 1208 25))
                          (display "\n")
                          (cdr x8035)))))
                     g8034)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g8037
                       (letrec*
                        ((x8039
                          (begin
                            (write '(funapp 1213 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1213 59))
                          (display "\n")
                          (assert x8039))))
                      (g8038
                       (letrec*
                        ((x-cnd8040
                          (begin
                            (write '(funapp 1216 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8040
                          #f
                          (letrec*
                           ((x-cnd8041
                             (letrec*
                              ((x8042
                                (begin
                                  (write '(funapp 1221 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1221 58))
                                (display "\n")
                                (equal? x8042 k)))))
                           (if x-cnd8041
                             (begin
                               (write '(funapp 1223 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x8043
                                (begin
                                  (write '(funapp 1224 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1224 57))
                                (display "\n")
                                (assoc k x8043)))))))))
                     g8038)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g8044
                       (letrec*
                        ((x8045
                          (begin
                            (write '(funapp 1229 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1229 57))
                          (display "\n")
                          (car x8045)))))
                     g8044)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8046
                       (letrec*
                        ((x8049
                          (begin
                            (write '(funapp 1234 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1234 60))
                          (display "\n")
                          (assert x8049))))
                      (g8047
                       (letrec*
                        ((x8050
                          (begin
                            (write '(funapp 1235 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1235 60))
                          (display "\n")
                          (assert x8050))))
                      (g8048
                       (letrec*
                        ((x8051
                          (begin
                            (write '(funapp 1236 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1236 65))
                          (display "\n")
                          (not x8051)))))
                     g8048)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g8052
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1243 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g8053
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1245 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g8053))))
                     g8052)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g8054
                       (letrec*
                        ((x8057
                          (begin
                            (write '(funapp 1251 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1251 64))
                          (display "\n")
                          (assert x8057))))
                      (g8055
                       (letrec*
                        ((x8058
                          (begin
                            (write '(funapp 1252 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1252 59))
                          (display "\n")
                          (assert x8058))))
                      (g8056
                       (letrec*
                        ((x-cnd8059
                          (begin
                            (write '(funapp 1255 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8059
                          #t
                          (letrec*
                           ((x-cnd8060
                             (begin
                               (write '(funapp 1259 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd8060
                             (letrec*
                              ((g8061
                                (letrec*
                                 ((x8063
                                   (begin
                                     (write '(funapp 1262 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1262 66))
                                   (display "\n")
                                   (f x8063))))
                               (g8062
                                (letrec*
                                 ((x8064
                                   (begin
                                     (write '(funapp 1265 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1266 34))
                                   (display "\n")
                                   (for-each f x8064)))))
                              g8062)
                             (begin
                               (write '(funapp 1268 29))
                               (display "\n")
                               '())))))))
                     g8056)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g8065
                       (letrec*
                        ((x8067
                          (begin
                            (write '(funapp 1273 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1273 61))
                          (display "\n")
                          (assert x8067))))
                      (g8066
                       (letrec*
                        ((x-cnd8068
                          (begin
                            (write '(funapp 1276 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd8068
                          (begin
                            (write '(funapp 1277 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g8066)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8069
                       (letrec*
                        ((x8072
                          (begin
                            (write '(funapp 1282 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1282 60))
                          (display "\n")
                          (assert x8072))))
                      (g8070
                       (letrec*
                        ((x8073
                          (begin
                            (write '(funapp 1283 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1283 60))
                          (display "\n")
                          (assert x8073))))
                      (g8071
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1286 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g8074
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1288 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g8074))))
                     g8071)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g8075
                       (letrec*
                        ((x8076
                          (letrec*
                           ((x8077
                             (letrec*
                              ((x8078
                                (begin
                                  (write '(funapp 1298 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1298 63))
                                (display "\n")
                                (cdr x8078)))))
                           (begin
                             (write '(funapp 1299 28))
                             (display "\n")
                             (cdr x8077)))))
                        (begin
                          (write '(funapp 1300 25))
                          (display "\n")
                          (car x8076)))))
                     g8075)))
                 (newline (lambda () (letrec* ((g8079 #f)) g8079)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g8080
                       (letrec*
                        ((x8082
                          (letrec*
                           ((x8083
                             (begin
                               (write '(funapp 1308 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1308 60))
                             (display "\n")
                             (abs x8083))))
                         (x8081
                          (begin
                            (write '(funapp 1309 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1310 25))
                          (display "\n")
                          (/ x8082 x8081)))))
                     g8080)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g8084
                       (letrec*
                        ((x8086
                          (begin
                            (write '(funapp 1316 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1316 61))
                          (display "\n")
                          (assert x8086))))
                      (g8085
                       (letrec*
                        ((x8087
                          (begin
                            (write '(funapp 1317 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1317 58))
                          (display "\n")
                          (not x8087)))))
                     g8085)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g8088
                       (letrec*
                        ((x8092
                          (begin
                            (write '(funapp 1322 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1322 59))
                          (display "\n")
                          (assert x8092))))
                      (g8089
                       (letrec*
                        ((x8093
                          (begin
                            (write '(funapp 1324 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1324 59))
                          (display "\n")
                          (assert x8093))))
                      (g8090
                       (letrec*
                        ((x8094
                          (letrec*
                           ((x8095
                             (begin
                               (write '(funapp 1328 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1328 57))
                             (display "\n")
                             (< index x8095)))))
                        (begin
                          (write '(funapp 1329 25))
                          (display "\n")
                          (assert x8094))))
                      (g8091
                       (letrec*
                        ((x-cnd8096
                          (begin
                            (write '(funapp 1332 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd8096
                          (begin
                            (write '(funapp 1334 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x8098
                             (begin
                               (write '(funapp 1336 36))
                               (display "\n")
                               (cdr l)))
                            (x8097
                             (begin
                               (write '(funapp 1336 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1337 28))
                             (display "\n")
                             (list-ref x8098 x8097)))))))
                     g8091)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g8099
                       (letrec*
                        ((x-cnd8100
                          (begin
                            (write '(funapp 1344 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd8100
                          a
                          (letrec*
                           ((x8101
                             (begin
                               (write '(funapp 1347 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1347 59))
                             (display "\n")
                             (gcd b x8101)))))))
                     g8099)))
                 (block
                  (lambda (x7571 y7572 color7573)
                    (letrec*
                     ((g8102
                       (letrec*
                        ((x8103
                          (letrec*
                           ((x8104
                             (letrec*
                              ((x8105
                                (begin
                                  (write '(funapp 1358 39))
                                  (display "\n")
                                  (cons
                                   color7573
                                   (begin
                                     (write '(funapp 1358 54))
                                     (display "\n")
                                     '())))))
                              (begin
                                (write '(funapp 1359 31))
                                (display "\n")
                                (cons y7572 x8105)))))
                           (begin
                             (write '(funapp 1360 28))
                             (display "\n")
                             (cons x7571 x8104)))))
                        (begin
                          (write '(funapp 1361 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1361 30))
                             (display "\n")
                             'block)
                           x8103)))))
                     g8102)))
                 (block?
                  (lambda (block7570)
                    (letrec*
                     ((g8106
                       (letrec*
                        ((x8107
                          (begin
                            (write '(funapp 1367 41))
                            (display "\n")
                            (car block7570))))
                        (begin
                          (write '(funapp 1367 59))
                          (display "\n")
                          (eq?
                           x8107
                           (begin
                             (write '(funapp 1367 69))
                             (display "\n")
                             'block))))))
                     g8106)))
                 (block-x
                  (lambda (block)
                    (letrec*
                     ((g8108
                       (letrec*
                        ((x8109
                          (begin
                            (write '(funapp 1372 47))
                            (display "\n")
                            (cdr block))))
                        (begin
                          (write '(funapp 1372 61))
                          (display "\n")
                          (car x8109)))))
                     g8108)))
                 (block-y
                  (lambda (block)
                    (letrec*
                     ((g8110
                       (letrec*
                        ((x8111
                          (letrec*
                           ((x8112
                             (begin
                               (write '(funapp 1379 50))
                               (display "\n")
                               (cdr block))))
                           (begin
                             (write '(funapp 1379 64))
                             (display "\n")
                             (cdr x8112)))))
                        (begin
                          (write '(funapp 1380 25))
                          (display "\n")
                          (car x8111)))))
                     g8110)))
                 (block-color
                  (lambda (block)
                    (letrec*
                     ((g8113
                       (letrec*
                        ((x8114
                          (letrec*
                           ((x8115
                             (letrec*
                              ((x8116
                                (begin
                                  (write '(funapp 1390 47))
                                  (display "\n")
                                  (cdr block))))
                              (begin
                                (write '(funapp 1390 61))
                                (display "\n")
                                (cdr x8116)))))
                           (begin
                             (write '(funapp 1391 28))
                             (display "\n")
                             (cdr x8115)))))
                        (begin
                          (write '(funapp 1392 25))
                          (display "\n")
                          (car x8114)))))
                     g8113)))
                 (tetra
                  (lambda (center7578 blocks7579)
                    (letrec*
                     ((g8117
                       (letrec*
                        ((x8118
                          (letrec*
                           ((x8119
                             (begin
                               (write '(funapp 1401 36))
                               (display "\n")
                               (cons
                                blocks7579
                                (begin
                                  (write '(funapp 1401 52))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1402 28))
                             (display "\n")
                             (cons center7578 x8119)))))
                        (begin
                          (write '(funapp 1403 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1403 30))
                             (display "\n")
                             'tetra)
                           x8118)))))
                     g8117)))
                 (tetra?
                  (lambda (tetra7577)
                    (letrec*
                     ((g8120
                       (letrec*
                        ((x8121
                          (begin
                            (write '(funapp 1409 41))
                            (display "\n")
                            (car tetra7577))))
                        (begin
                          (write '(funapp 1409 59))
                          (display "\n")
                          (eq?
                           x8121
                           (begin
                             (write '(funapp 1409 69))
                             (display "\n")
                             'tetra))))))
                     g8120)))
                 (tetra-center
                  (lambda (tetra)
                    (letrec*
                     ((g8122
                       (letrec*
                        ((x8123
                          (begin
                            (write '(funapp 1414 47))
                            (display "\n")
                            (cdr tetra))))
                        (begin
                          (write '(funapp 1414 61))
                          (display "\n")
                          (car x8123)))))
                     g8122)))
                 (tetra-blocks
                  (lambda (tetra)
                    (letrec*
                     ((g8124
                       (letrec*
                        ((x8125
                          (letrec*
                           ((x8126
                             (begin
                               (write '(funapp 1421 50))
                               (display "\n")
                               (cdr tetra))))
                           (begin
                             (write '(funapp 1421 64))
                             (display "\n")
                             (cdr x8126)))))
                        (begin
                          (write '(funapp 1422 25))
                          (display "\n")
                          (car x8125)))))
                     g8124)))
                 (world
                  (lambda (tetra7583 blocks7584)
                    (letrec*
                     ((g8127
                       (letrec*
                        ((x8128
                          (letrec*
                           ((x8129
                             (begin
                               (write '(funapp 1431 36))
                               (display "\n")
                               (cons
                                blocks7584
                                (begin
                                  (write '(funapp 1431 52))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1432 28))
                             (display "\n")
                             (cons tetra7583 x8129)))))
                        (begin
                          (write '(funapp 1433 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1433 30))
                             (display "\n")
                             'world)
                           x8128)))))
                     g8127)))
                 (world?
                  (lambda (world7582)
                    (letrec*
                     ((g8130
                       (letrec*
                        ((x8131
                          (begin
                            (write '(funapp 1439 41))
                            (display "\n")
                            (car world7582))))
                        (begin
                          (write '(funapp 1439 59))
                          (display "\n")
                          (eq?
                           x8131
                           (begin
                             (write '(funapp 1439 69))
                             (display "\n")
                             'world))))))
                     g8130)))
                 (world-tetra
                  (lambda (world)
                    (letrec*
                     ((g8132
                       (letrec*
                        ((x8133
                          (begin
                            (write '(funapp 1444 47))
                            (display "\n")
                            (cdr world))))
                        (begin
                          (write '(funapp 1444 61))
                          (display "\n")
                          (car x8133)))))
                     g8132)))
                 (world-blocks
                  (lambda (world)
                    (letrec*
                     ((g8134
                       (letrec*
                        ((x8135
                          (letrec*
                           ((x8136
                             (begin
                               (write '(funapp 1451 50))
                               (display "\n")
                               (cdr world))))
                           (begin
                             (write '(funapp 1451 64))
                             (display "\n")
                             (cdr x8136)))))
                        (begin
                          (write '(funapp 1452 25))
                          (display "\n")
                          (car x8135)))))
                     g8134)))
                 (posn
                  (lambda (x7588 y7589)
                    (letrec*
                     ((g8137
                       (letrec*
                        ((x8138
                          (letrec*
                           ((x8139
                             (begin
                               (write '(funapp 1461 36))
                               (display "\n")
                               (cons
                                y7589
                                (begin
                                  (write '(funapp 1461 47))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1462 28))
                             (display "\n")
                             (cons x7588 x8139)))))
                        (begin
                          (write '(funapp 1463 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1463 30))
                             (display "\n")
                             'posn)
                           x8138)))))
                     g8137)))
                 (posn?
                  (lambda (posn7587)
                    (letrec*
                     ((g8140
                       (letrec*
                        ((x8141
                          (begin
                            (write '(funapp 1469 41))
                            (display "\n")
                            (car posn7587))))
                        (begin
                          (write '(funapp 1469 58))
                          (display "\n")
                          (eq?
                           x8141
                           (begin
                             (write '(funapp 1469 68))
                             (display "\n")
                             'posn))))))
                     g8140)))
                 (posn-x
                  (lambda (posn)
                    (letrec*
                     ((g8142
                       (letrec*
                        ((x8143
                          (begin
                            (write '(funapp 1474 47))
                            (display "\n")
                            (cdr posn))))
                        (begin
                          (write '(funapp 1474 60))
                          (display "\n")
                          (car x8143)))))
                     g8142)))
                 (posn-y
                  (lambda (posn)
                    (letrec*
                     ((g8144
                       (letrec*
                        ((x8145
                          (letrec*
                           ((x8146
                             (begin
                               (write '(funapp 1481 50))
                               (display "\n")
                               (cdr posn))))
                           (begin
                             (write '(funapp 1481 63))
                             (display "\n")
                             (cdr x8146)))))
                        (begin
                          (write '(funapp 1482 25))
                          (display "\n")
                          (car x8145)))))
                     g8144)))
                 (COLOR/C symbol?)
                 (POSN/C
                  (lambda (j7329 k7330 v7328)
                    (letrec*
                     ((g8147
                       (letrec*
                        ((checked7331
                          (letrec*
                           ((x8148
                             (begin
                               (write '(funapp 1492 36))
                               (display "\n")
                               (car v7328))))
                           (begin
                             (write '(funapp 1493 28))
                             (display "\n")
                             (real?/c
                              (begin
                                (write '(funapp 1493 36))
                                (display "\n")
                                'j7329)
                              (begin
                                (write '(funapp 1493 43))
                                (display "\n")
                                'k7330)
                              x8148)))))
                        (letrec*
                         ((g8149
                           (letrec*
                            ((checked7332
                              (letrec*
                               ((x8150
                                 (letrec*
                                  ((x8151
                                    (begin
                                      (write '(funapp 1500 51))
                                      (display "\n")
                                      (cdr v7328))))
                                  (begin
                                    (write '(funapp 1500 65))
                                    (display "\n")
                                    (car x8151)))))
                               (begin
                                 (write '(funapp 1501 32))
                                 (display "\n")
                                 (real?/c
                                  (begin
                                    (write '(funapp 1501 40))
                                    (display "\n")
                                    'j7329)
                                  (begin
                                    (write '(funapp 1501 47))
                                    (display "\n")
                                    'k7330)
                                  x8150)))))
                            (letrec*
                             ((g8152
                               (letrec*
                                ((x8153
                                  (letrec*
                                   ((x8154
                                     (begin
                                       (write '(funapp 1507 44))
                                       (display "\n")
                                       (cons
                                        checked7332
                                        (begin
                                          (write '(funapp 1507 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1508 36))
                                     (display "\n")
                                     (cons checked7331 x8154)))))
                                (begin
                                  (write '(funapp 1509 33))
                                  (display "\n")
                                  (cons posn x8153)))))
                             g8152))))
                         g8149))))
                     g8147)))
                 (BLOCK/C
                  (lambda (j7335 k7336 v7334)
                    (letrec*
                     ((g8155
                       (letrec*
                        ((checked7337
                          (letrec*
                           ((x8156
                             (begin
                               (write '(funapp 1520 36))
                               (display "\n")
                               (car v7334))))
                           (begin
                             (write '(funapp 1521 28))
                             (display "\n")
                             (real?/c
                              (begin
                                (write '(funapp 1521 36))
                                (display "\n")
                                'j7335)
                              (begin
                                (write '(funapp 1521 43))
                                (display "\n")
                                'k7336)
                              x8156)))))
                        (letrec*
                         ((g8157
                           (letrec*
                            ((checked7338
                              (letrec*
                               ((x8158
                                 (letrec*
                                  ((x8159
                                    (begin
                                      (write '(funapp 1528 51))
                                      (display "\n")
                                      (cdr v7334))))
                                  (begin
                                    (write '(funapp 1528 65))
                                    (display "\n")
                                    (car x8159)))))
                               (begin
                                 (write '(funapp 1529 32))
                                 (display "\n")
                                 (real?/c
                                  (begin
                                    (write '(funapp 1529 40))
                                    (display "\n")
                                    'j7335)
                                  (begin
                                    (write '(funapp 1529 47))
                                    (display "\n")
                                    'k7336)
                                  x8158)))))
                            (letrec*
                             ((g8160
                               (letrec*
                                ((checked7339
                                  (letrec*
                                   ((x8161
                                     (letrec*
                                      ((x8162
                                        (letrec*
                                         ((x8163
                                           (begin
                                             (write '(funapp 1539 50))
                                             (display "\n")
                                             (cdr v7334))))
                                         (begin
                                           (write '(funapp 1540 42))
                                           (display "\n")
                                           (cdr x8163)))))
                                      (begin
                                        (write '(funapp 1541 39))
                                        (display "\n")
                                        (car x8162)))))
                                   (begin
                                     (write '(funapp 1542 36))
                                     (display "\n")
                                     (COLOR/C
                                      (begin
                                        (write '(funapp 1542 44))
                                        (display "\n")
                                        'j7335)
                                      (begin
                                        (write '(funapp 1542 51))
                                        (display "\n")
                                        'k7336)
                                      x8161)))))
                                (letrec*
                                 ((g8164
                                   (letrec*
                                    ((x8165
                                      (letrec*
                                       ((x8166
                                         (letrec*
                                          ((x8167
                                            (begin
                                              (write '(funapp 1550 51))
                                              (display "\n")
                                              (cons
                                               checked7339
                                               (begin
                                                 (write '(funapp 1550 68))
                                                 (display "\n")
                                                 '())))))
                                          (begin
                                            (write '(funapp 1551 43))
                                            (display "\n")
                                            (cons checked7338 x8167)))))
                                       (begin
                                         (write '(funapp 1552 40))
                                         (display "\n")
                                         (cons checked7337 x8166)))))
                                    (begin
                                      (write '(funapp 1553 37))
                                      (display "\n")
                                      (cons block x8165)))))
                                 g8164))))
                             g8160))))
                         g8157))))
                     g8155)))
                 (BSET/C
                  (begin
                    (write '(funapp 1558 26))
                    (display "\n")
                    (listof BLOCK/C)))
                 (TETRA/C
                  (lambda (j7342 k7343 v7341)
                    (letrec*
                     ((g8168
                       (letrec*
                        ((checked7344
                          (letrec*
                           ((x8169
                             (begin
                               (write '(funapp 1566 36))
                               (display "\n")
                               (car v7341))))
                           (begin
                             (write '(funapp 1567 28))
                             (display "\n")
                             (POSN/C
                              (begin
                                (write '(funapp 1567 35))
                                (display "\n")
                                'j7342)
                              (begin
                                (write '(funapp 1567 42))
                                (display "\n")
                                'k7343)
                              x8169)))))
                        (letrec*
                         ((g8170
                           (letrec*
                            ((checked7345
                              (letrec*
                               ((x8171
                                 (letrec*
                                  ((x8172
                                    (begin
                                      (write '(funapp 1574 51))
                                      (display "\n")
                                      (cdr v7341))))
                                  (begin
                                    (write '(funapp 1574 65))
                                    (display "\n")
                                    (car x8172)))))
                               (begin
                                 (write '(funapp 1575 32))
                                 (display "\n")
                                 (BSET/C
                                  (begin
                                    (write '(funapp 1575 39))
                                    (display "\n")
                                    'j7342)
                                  (begin
                                    (write '(funapp 1575 46))
                                    (display "\n")
                                    'k7343)
                                  x8171)))))
                            (letrec*
                             ((g8173
                               (letrec*
                                ((x8174
                                  (letrec*
                                   ((x8175
                                     (begin
                                       (write '(funapp 1581 44))
                                       (display "\n")
                                       (cons
                                        checked7345
                                        (begin
                                          (write '(funapp 1581 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1582 36))
                                     (display "\n")
                                     (cons checked7344 x8175)))))
                                (begin
                                  (write '(funapp 1583 33))
                                  (display "\n")
                                  (cons tetra x8174)))))
                             g8173))))
                         g8170))))
                     g8168)))
                 (WORLD/C
                  (lambda (j7348 k7349 v7347)
                    (letrec*
                     ((g8176
                       (letrec*
                        ((checked7350
                          (letrec*
                           ((x8177
                             (begin
                               (write '(funapp 1594 36))
                               (display "\n")
                               (car v7347))))
                           (begin
                             (write '(funapp 1595 28))
                             (display "\n")
                             (TETRA/C
                              (begin
                                (write '(funapp 1595 36))
                                (display "\n")
                                'j7348)
                              (begin
                                (write '(funapp 1595 43))
                                (display "\n")
                                'k7349)
                              x8177)))))
                        (letrec*
                         ((g8178
                           (letrec*
                            ((checked7351
                              (letrec*
                               ((x8179
                                 (letrec*
                                  ((x8180
                                    (begin
                                      (write '(funapp 1602 51))
                                      (display "\n")
                                      (cdr v7347))))
                                  (begin
                                    (write '(funapp 1602 65))
                                    (display "\n")
                                    (car x8180)))))
                               (begin
                                 (write '(funapp 1603 32))
                                 (display "\n")
                                 (BSET/C
                                  (begin
                                    (write '(funapp 1603 39))
                                    (display "\n")
                                    'j7348)
                                  (begin
                                    (write '(funapp 1603 46))
                                    (display "\n")
                                    'k7349)
                                  x8179)))))
                            (letrec*
                             ((g8181
                               (letrec*
                                ((x8182
                                  (letrec*
                                   ((x8183
                                     (begin
                                       (write '(funapp 1609 44))
                                       (display "\n")
                                       (cons
                                        checked7351
                                        (begin
                                          (write '(funapp 1609 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1610 36))
                                     (display "\n")
                                     (cons checked7350 x8183)))))
                                (begin
                                  (write '(funapp 1611 33))
                                  (display "\n")
                                  (cons world x8182)))))
                             g8181))))
                         g8178))))
                     g8176)))
                 (posn=?
                  (lambda (p1 p2)
                    (letrec*
                     ((g8184
                       (letrec*
                        ((x-cnd8185
                          (letrec*
                           ((x8187
                             (begin
                               (write '(funapp 1622 36))
                               (display "\n")
                               (posn-x p1)))
                            (x8186
                             (begin
                               (write '(funapp 1622 56))
                               (display "\n")
                               (posn-x p2))))
                           (begin
                             (write '(funapp 1623 28))
                             (display "\n")
                             (= x8187 x8186)))))
                        (if x-cnd8185
                          (letrec*
                           ((x8189
                             (begin
                               (write '(funapp 1626 36))
                               (display "\n")
                               (posn-y p1)))
                            (x8188
                             (begin
                               (write '(funapp 1626 56))
                               (display "\n")
                               (posn-y p2))))
                           (begin
                             (write '(funapp 1627 28))
                             (display "\n")
                             (= x8189 x8188)))
                          #f))))
                     g8184)))
                 (block-size 20)
                 (board-height 20)
                 (board-width 10)
                 (block=?
                  (lambda (b1 b2)
                    (letrec*
                     ((g8190
                       (letrec*
                        ((x-cnd8191
                          (letrec*
                           ((x8193
                             (begin
                               (write '(funapp 1640 36))
                               (display "\n")
                               (block-x b1)))
                            (x8192
                             (begin
                               (write '(funapp 1640 57))
                               (display "\n")
                               (block-x b2))))
                           (begin
                             (write '(funapp 1641 28))
                             (display "\n")
                             (= x8193 x8192)))))
                        (if x-cnd8191
                          (letrec*
                           ((x8195
                             (begin
                               (write '(funapp 1644 36))
                               (display "\n")
                               (block-y b1)))
                            (x8194
                             (begin
                               (write '(funapp 1644 57))
                               (display "\n")
                               (block-y b2))))
                           (begin
                             (write '(funapp 1645 28))
                             (display "\n")
                             (= x8195 x8194)))
                          #f))))
                     g8190)))
                 (block-move
                  (lambda (dx dy b)
                    (letrec*
                     ((g8196
                       (letrec*
                        ((x8200
                          (letrec*
                           ((x8201
                             (begin
                               (write '(funapp 1653 50))
                               (display "\n")
                               (block-x b))))
                           (begin
                             (write '(funapp 1653 64))
                             (display "\n")
                             (+ dx x8201))))
                         (x8198
                          (letrec*
                           ((x8199
                             (begin
                               (write '(funapp 1654 50))
                               (display "\n")
                               (block-y b))))
                           (begin
                             (write '(funapp 1654 64))
                             (display "\n")
                             (+ dy x8199))))
                         (x8197
                          (begin
                            (write '(funapp 1655 33))
                            (display "\n")
                            (block-color b))))
                        (begin
                          (write '(funapp 1656 25))
                          (display "\n")
                          (block x8200 x8198 x8197)))))
                     g8196)))
                 (block-rotate-ccw
                  (lambda (c b)
                    (letrec*
                     ((g8202
                       (letrec*
                        ((x8209
                          (letrec*
                           ((x8213
                             (begin
                               (write '(funapp 1665 36))
                               (display "\n")
                               (posn-x c)))
                            (x8210
                             (letrec*
                              ((x8212
                                (begin
                                  (write '(funapp 1668 39))
                                  (display "\n")
                                  (posn-y c)))
                               (x8211
                                (begin
                                  (write '(funapp 1668 58))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1669 31))
                                (display "\n")
                                (- x8212 x8211)))))
                           (begin
                             (write '(funapp 1670 28))
                             (display "\n")
                             (+ x8213 x8210))))
                         (x8204
                          (letrec*
                           ((x8208
                             (begin
                               (write '(funapp 1673 36))
                               (display "\n")
                               (posn-y c)))
                            (x8205
                             (letrec*
                              ((x8207
                                (begin
                                  (write '(funapp 1676 39))
                                  (display "\n")
                                  (block-x b)))
                               (x8206
                                (begin
                                  (write '(funapp 1676 59))
                                  (display "\n")
                                  (posn-x c))))
                              (begin
                                (write '(funapp 1677 31))
                                (display "\n")
                                (- x8207 x8206)))))
                           (begin
                             (write '(funapp 1678 28))
                             (display "\n")
                             (+ x8208 x8205))))
                         (x8203
                          (begin
                            (write '(funapp 1679 33))
                            (display "\n")
                            (block-color b))))
                        (begin
                          (write '(funapp 1680 25))
                          (display "\n")
                          (block x8209 x8204 x8203)))))
                     g8202)))
                 (block-rotate-cw
                  (lambda (c b)
                    (letrec*
                     ((g8214
                       (letrec*
                        ((x8215
                          (letrec*
                           ((x8216
                             (begin
                               (write '(funapp 1689 36))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           (begin
                             (write '(funapp 1690 28))
                             (display "\n")
                             (block-rotate-ccw c x8216)))))
                        (begin
                          (write '(funapp 1691 25))
                          (display "\n")
                          (block-rotate-ccw c x8215)))))
                     g8214)))
                 (ormap
                  (lambda (p? xs)
                    (letrec*
                     ((g8217
                       (if cnd
                         (letrec* ((g8218 #f)) g8218)
                         (letrec*
                          ((g8219
                            (letrec*
                             ((x8222
                               (letrec*
                                ((x8223
                                  (begin
                                    (write '(funapp 1702 55))
                                    (display "\n")
                                    (car xs))))
                                (begin
                                  (write '(funapp 1702 66))
                                  (display "\n")
                                  (p? x8223))))
                              (x8220
                               (letrec*
                                ((x8221
                                  (begin
                                    (write '(funapp 1704 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1704 60))
                                  (display "\n")
                                  (ormap p? x8221)))))
                             (begin
                               (write '(funapp 1705 30))
                               (display "\n")
                               (or x8222 x8220)))))
                          g8219))))
                     g8217)))
                 (andmap
                  (lambda (p? xs)
                    (letrec*
                     ((g8224
                       (if cnd
                         (letrec* ((g8225 #t)) g8225)
                         (letrec*
                          ((g8226
                            (letrec*
                             ((x8229
                               (letrec*
                                ((x8230
                                  (begin
                                    (write '(funapp 1717 55))
                                    (display "\n")
                                    (car xs))))
                                (begin
                                  (write '(funapp 1717 66))
                                  (display "\n")
                                  (p? x8230))))
                              (x8227
                               (letrec*
                                ((x8228
                                  (begin
                                    (write '(funapp 1719 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1719 60))
                                  (display "\n")
                                  (andmap p? x8228)))))
                             (begin
                               (write '(funapp 1720 30))
                               (display "\n")
                               (and x8229 x8227)))))
                          g8226))))
                     g8224)))
                 (map
                  (lambda (f xs)
                    (letrec*
                     ((g8231
                       (if cnd
                         (letrec* ((g8232 null)) g8232)
                         (letrec*
                          ((g8233
                            (letrec*
                             ((x8236
                               (letrec*
                                ((x8237
                                  (begin
                                    (write '(funapp 1732 55))
                                    (display "\n")
                                    (car xs))))
                                (begin
                                  (write '(funapp 1732 66))
                                  (display "\n")
                                  (f x8237))))
                              (x8234
                               (letrec*
                                ((x8235
                                  (begin
                                    (write '(funapp 1734 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1734 60))
                                  (display "\n")
                                  (map f x8235)))))
                             (begin
                               (write '(funapp 1735 30))
                               (display "\n")
                               (cons x8236 x8234)))))
                          g8233))))
                     g8231)))
                 (filter
                  (lambda (p? xs)
                    (letrec*
                     ((g8238
                       (if cnd
                         (letrec* ((g8239 null)) g8239)
                         (if cnd
                           (letrec*
                            ((g8240
                              (letrec*
                               ((x8243
                                 (begin
                                   (write '(funapp 1748 40))
                                   (display "\n")
                                   (car xs)))
                                (x8241
                                 (letrec*
                                  ((x8242
                                    (begin
                                      (write '(funapp 1751 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1752 35))
                                    (display "\n")
                                    (filter p? x8242)))))
                               (begin
                                 (write '(funapp 1753 32))
                                 (display "\n")
                                 (cons x8243 x8241)))))
                            g8240)
                           (letrec*
                            ((g8244
                              (letrec*
                               ((x8245
                                 (begin
                                   (write '(funapp 1757 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1757 59))
                                 (display "\n")
                                 (filter p? x8245)))))
                            g8244)))))
                     g8238)))
                 (append
                  (lambda (l r)
                    (letrec*
                     ((g8246
                       (if cnd
                         (letrec* ((g8247 r)) g8247)
                         (letrec*
                          ((g8248
                            (letrec*
                             ((x8251
                               (begin
                                 (write '(funapp 1769 38))
                                 (display "\n")
                                 (car l)))
                              (x8249
                               (letrec*
                                ((x8250
                                  (begin
                                    (write '(funapp 1771 49))
                                    (display "\n")
                                    (cdr l))))
                                (begin
                                  (write '(funapp 1771 59))
                                  (display "\n")
                                  (append x8250 r)))))
                             (begin
                               (write '(funapp 1772 30))
                               (display "\n")
                               (cons x8251 x8249)))))
                          g8248))))
                     g8246)))
                 (length
                  (lambda (xs)
                    (letrec*
                     ((g8252
                       (if cnd
                         (letrec* ((g8253 0)) g8253)
                         (letrec*
                          ((g8254
                            (letrec*
                             ((x8255
                               (letrec*
                                ((x8256
                                  (begin
                                    (write '(funapp 1785 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1785 60))
                                  (display "\n")
                                  (length x8256)))))
                             (begin
                               (write '(funapp 1786 30))
                               (display "\n")
                               (+ 1 x8255)))))
                          g8254))))
                     g8252)))
                 (foldr
                  (lambda (f a xs)
                    (letrec*
                     ((g8257
                       (if cnd
                         (letrec* ((g8258 a)) g8258)
                         (letrec*
                          ((g8259
                            (letrec*
                             ((x8262
                               (begin
                                 (write '(funapp 1798 38))
                                 (display "\n")
                                 (car xs)))
                              (x8260
                               (letrec*
                                ((x8261
                                  (begin
                                    (write '(funapp 1800 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1800 60))
                                  (display "\n")
                                  (foldr f a x8261)))))
                             (begin
                               (write '(funapp 1801 30))
                               (display "\n")
                               (f x8262 x8260)))))
                          g8259))))
                     g8257)))
                 (blocks-contains?
                  (lambda (bs b)
                    (letrec*
                     ((g8263
                       (letrec*
                        ((x8264
                          (letrec*
                           ((x8266
                             (begin
                               (write '(funapp 1811 36))
                               (display "\n")
                               (c)))
                            (x8265
                             (begin
                               (write '(funapp 1811 48))
                               (display "\n")
                               (block=? b c))))
                           (begin
                             (write '(funapp 1812 28))
                             (display "\n")
                             (λ x8266 x8265)))))
                        (begin
                          (write '(funapp 1813 25))
                          (display "\n")
                          (ormap x8264 bs)))))
                     g8263)))
                 (blocks-subset?
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8267
                       (letrec*
                        ((x8268
                          (letrec*
                           ((x8270
                             (begin
                               (write '(funapp 1822 36))
                               (display "\n")
                               (b)))
                            (x8269
                             (begin
                               (write '(funapp 1822 48))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           (begin
                             (write '(funapp 1823 28))
                             (display "\n")
                             (λ x8270 x8269)))))
                        (begin
                          (write '(funapp 1824 25))
                          (display "\n")
                          (andmap x8268 bs1)))))
                     g8267)))
                 (blocks=?
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8271
                       (letrec*
                        ((x-cnd8272
                          (begin
                            (write '(funapp 1831 37))
                            (display "\n")
                            (blocks-subset? bs1 bs2))))
                        (if x-cnd8272
                          (begin
                            (write '(funapp 1832 39))
                            (display "\n")
                            (blocks-subset? bs2 bs1))
                          #f))))
                     g8271)))
                 (blocks-intersect
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8273
                       (letrec*
                        ((x8274
                          (letrec*
                           ((x8276
                             (begin
                               (write '(funapp 1841 36))
                               (display "\n")
                               (b)))
                            (x8275
                             (begin
                               (write '(funapp 1841 48))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           (begin
                             (write '(funapp 1842 28))
                             (display "\n")
                             (λ x8276 x8275)))))
                        (begin
                          (write '(funapp 1843 25))
                          (display "\n")
                          (filter x8274 bs1)))))
                     g8273)))
                 (blocks-count
                  (lambda (bs)
                    (letrec*
                     ((g8277
                       (begin
                         (write '(funapp 1846 49))
                         (display "\n")
                         (length bs))))
                     g8277)))
                 (blocks-move
                  (lambda (dx dy bs)
                    (letrec*
                     ((g8278
                       (letrec*
                        ((x8279
                          (letrec*
                           ((x8281
                             (begin
                               (write '(funapp 1854 36))
                               (display "\n")
                               (b)))
                            (x8280
                             (begin
                               (write '(funapp 1854 48))
                               (display "\n")
                               (block-move dx dy b))))
                           (begin
                             (write '(funapp 1855 28))
                             (display "\n")
                             (λ x8281 x8280)))))
                        (begin
                          (write '(funapp 1856 25))
                          (display "\n")
                          (map x8279 bs)))))
                     g8278)))
                 (blocks-rotate-ccw
                  (lambda (c bs)
                    (letrec*
                     ((g8282
                       (letrec*
                        ((x8283
                          (letrec*
                           ((x8285
                             (begin
                               (write '(funapp 1865 36))
                               (display "\n")
                               (b)))
                            (x8284
                             (begin
                               (write '(funapp 1865 48))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           (begin
                             (write '(funapp 1866 28))
                             (display "\n")
                             (λ x8285 x8284)))))
                        (begin
                          (write '(funapp 1867 25))
                          (display "\n")
                          (map x8283 bs)))))
                     g8282)))
                 (blocks-rotate-cw
                  (lambda (c bs)
                    (letrec*
                     ((g8286
                       (letrec*
                        ((x8287
                          (letrec*
                           ((x8289
                             (begin
                               (write '(funapp 1876 36))
                               (display "\n")
                               (b)))
                            (x8288
                             (begin
                               (write '(funapp 1876 48))
                               (display "\n")
                               (block-rotate-cw c b))))
                           (begin
                             (write '(funapp 1877 28))
                             (display "\n")
                             (λ x8289 x8288)))))
                        (begin
                          (write '(funapp 1878 25))
                          (display "\n")
                          (map x8287 bs)))))
                     g8286)))
                 (blocks-change-color
                  (lambda (bs c)
                    (letrec*
                     ((g8290
                       (letrec*
                        ((x8291
                          (letrec*
                           ((x8295
                             (begin
                               (write '(funapp 1887 36))
                               (display "\n")
                               (b)))
                            (x8292
                             (letrec*
                              ((x8294
                                (begin
                                  (write '(funapp 1890 39))
                                  (display "\n")
                                  (block-x b)))
                               (x8293
                                (begin
                                  (write '(funapp 1890 59))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1891 31))
                                (display "\n")
                                (block x8294 x8293 c)))))
                           (begin
                             (write '(funapp 1892 28))
                             (display "\n")
                             (λ x8295 x8292)))))
                        (begin
                          (write '(funapp 1893 25))
                          (display "\n")
                          (map x8291 bs)))))
                     g8290)))
                 (blocks-row
                  (lambda (bs i)
                    (letrec*
                     ((g8296
                       (letrec*
                        ((x8297
                          (letrec*
                           ((x8300
                             (begin
                               (write '(funapp 1902 36))
                               (display "\n")
                               (b)))
                            (x8298
                             (letrec*
                              ((x8299
                                (begin
                                  (write '(funapp 1904 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1904 61))
                                (display "\n")
                                (= i x8299)))))
                           (begin
                             (write '(funapp 1905 28))
                             (display "\n")
                             (λ x8300 x8298)))))
                        (begin
                          (write '(funapp 1906 25))
                          (display "\n")
                          (filter x8297 bs)))))
                     g8296)))
                 (full-row?
                  (lambda (bs i)
                    (letrec*
                     ((g8301
                       (letrec*
                        ((x8302
                          (letrec*
                           ((x8303
                             (begin
                               (write '(funapp 1915 36))
                               (display "\n")
                               (blocks-row bs i))))
                           (begin
                             (write '(funapp 1916 28))
                             (display "\n")
                             (blocks-count x8303)))))
                        (begin
                          (write '(funapp 1917 25))
                          (display "\n")
                          (= board-width x8302)))))
                     g8301)))
                 (blocks-overflow?
                  (lambda (bs)
                    (letrec*
                     ((g8304
                       (letrec*
                        ((x8305
                          (letrec*
                           ((x8308
                             (begin
                               (write '(funapp 1926 36))
                               (display "\n")
                               (b)))
                            (x8306
                             (letrec*
                              ((x8307
                                (begin
                                  (write '(funapp 1928 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1928 61))
                                (display "\n")
                                (<= x8307 0)))))
                           (begin
                             (write '(funapp 1929 28))
                             (display "\n")
                             (λ x8308 x8306)))))
                        (begin
                          (write '(funapp 1930 25))
                          (display "\n")
                          (ormap x8305 bs)))))
                     g8304)))
                 (blocks-union
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8309
                       (letrec*
                        ((x8310
                          (letrec*
                           ((x8314
                             (begin
                               (write '(funapp 1939 36))
                               (display "\n")
                               (b bs)))
                            (x8311
                             (if cnd
                               (letrec* ((g8312 bs)) g8312)
                               (letrec*
                                ((g8313
                                  (begin
                                    (write '(funapp 1943 49))
                                    (display "\n")
                                    (cons b bs))))
                                g8313))))
                           (begin
                             (write '(funapp 1944 28))
                             (display "\n")
                             (λ x8314 x8311)))))
                        (begin
                          (write '(funapp 1945 25))
                          (display "\n")
                          (foldr x8310 bs2 bs1)))))
                     g8309)))
                 (blocks-max-y
                  (lambda (bs)
                    (letrec*
                     ((g8315
                       (letrec*
                        ((x8316
                          (letrec*
                           ((x8319
                             (begin
                               (write '(funapp 1954 36))
                               (display "\n")
                               (b n)))
                            (x8317
                             (letrec*
                              ((x8318
                                (begin
                                  (write '(funapp 1956 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1956 61))
                                (display "\n")
                                (max x8318 n)))))
                           (begin
                             (write '(funapp 1957 28))
                             (display "\n")
                             (λ x8319 x8317)))))
                        (begin
                          (write '(funapp 1958 25))
                          (display "\n")
                          (foldr x8316 0 bs)))))
                     g8315)))
                 (blocks-min-x
                  (lambda (bs)
                    (letrec*
                     ((g8320
                       (letrec*
                        ((x8321
                          (letrec*
                           ((x8324
                             (begin
                               (write '(funapp 1967 36))
                               (display "\n")
                               (b n)))
                            (x8322
                             (letrec*
                              ((x8323
                                (begin
                                  (write '(funapp 1969 47))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 1969 61))
                                (display "\n")
                                (min x8323 n)))))
                           (begin
                             (write '(funapp 1970 28))
                             (display "\n")
                             (λ x8324 x8322)))))
                        (begin
                          (write '(funapp 1971 25))
                          (display "\n")
                          (foldr x8321 board-width bs)))))
                     g8320)))
                 (blocks-max-x
                  (lambda (bs)
                    (letrec*
                     ((g8325
                       (letrec*
                        ((x8326
                          (letrec*
                           ((x8329
                             (begin
                               (write '(funapp 1980 36))
                               (display "\n")
                               (b n)))
                            (x8327
                             (letrec*
                              ((x8328
                                (begin
                                  (write '(funapp 1982 47))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 1982 61))
                                (display "\n")
                                (max x8328 n)))))
                           (begin
                             (write '(funapp 1983 28))
                             (display "\n")
                             (λ x8329 x8327)))))
                        (begin
                          (write '(funapp 1984 25))
                          (display "\n")
                          (foldr x8326 0 bs)))))
                     g8325)))
                 (eliminate-full-rows
                  (lambda (bs)
                    (letrec*
                     ((g8330
                       (begin
                         (write '(funapp 1988 38))
                         (display "\n")
                         (elim-row bs board-height 0))))
                     g8330)))
                 (elim-row
                  (lambda (bs i offset)
                    (letrec*
                     ((g8331
                       (if cnd
                         (letrec* ((g8332 empty)) g8332)
                         (if cnd
                           (letrec*
                            ((g8333
                              (letrec*
                               ((x8335
                                 (begin
                                   (write '(funapp 1999 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8334
                                 (begin
                                   (write '(funapp 1999 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2000 32))
                                 (display "\n")
                                 (elim-row bs x8335 x8334)))))
                            g8333)
                           (letrec*
                            ((g8336
                              (letrec*
                               ((x8339
                                 (letrec*
                                  ((x8340
                                    (begin
                                      (write '(funapp 2007 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2008 35))
                                    (display "\n")
                                    (elim-row bs x8340 offset))))
                                (x8337
                                 (letrec*
                                  ((x8338
                                    (begin
                                      (write '(funapp 2011 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2012 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8338)))))
                               (begin
                                 (write '(funapp 2013 32))
                                 (display "\n")
                                 (blocks-union x8339 x8337)))))
                            g8336)))))
                     g8331)))
                 (tetra-move
                  (lambda (dx dy t)
                    (letrec*
                     ((g8341
                       (letrec*
                        ((x8344
                          (letrec*
                           ((x8348
                             (letrec*
                              ((x8349
                                (letrec*
                                 ((x8350
                                   (begin
                                     (write '(funapp 2027 42))
                                     (display "\n")
                                     (tetra-center t))))
                                 (begin
                                   (write '(funapp 2028 34))
                                   (display "\n")
                                   (posn-x x8350)))))
                              (begin
                                (write '(funapp 2029 31))
                                (display "\n")
                                (+ dx x8349))))
                            (x8345
                             (letrec*
                              ((x8346
                                (letrec*
                                 ((x8347
                                   (begin
                                     (write '(funapp 2034 42))
                                     (display "\n")
                                     (tetra-center t))))
                                 (begin
                                   (write '(funapp 2035 34))
                                   (display "\n")
                                   (posn-y x8347)))))
                              (begin
                                (write '(funapp 2036 31))
                                (display "\n")
                                (+ dy x8346)))))
                           (begin
                             (write '(funapp 2037 28))
                             (display "\n")
                             (posn x8348 x8345))))
                         (x8342
                          (letrec*
                           ((x8343
                             (begin
                               (write '(funapp 2040 36))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2041 28))
                             (display "\n")
                             (blocks-move dx dy x8343)))))
                        (begin
                          (write '(funapp 2042 25))
                          (display "\n")
                          (tetra x8344 x8342)))))
                     g8341)))
                 (tetra-rotate-ccw
                  (lambda (t)
                    (letrec*
                     ((g8351
                       (letrec*
                        ((x8355
                          (begin
                            (write '(funapp 2049 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8352
                          (letrec*
                           ((x8354
                             (begin
                               (write '(funapp 2052 36))
                               (display "\n")
                               (tetra-center t)))
                            (x8353
                             (begin
                               (write '(funapp 2052 61))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2053 28))
                             (display "\n")
                             (blocks-rotate-ccw x8354 x8353)))))
                        (begin
                          (write '(funapp 2054 25))
                          (display "\n")
                          (tetra x8355 x8352)))))
                     g8351)))
                 (tetra-rotate-cw
                  (lambda (t)
                    (letrec*
                     ((g8356
                       (letrec*
                        ((x8360
                          (begin
                            (write '(funapp 2061 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8357
                          (letrec*
                           ((x8359
                             (begin
                               (write '(funapp 2064 36))
                               (display "\n")
                               (tetra-center t)))
                            (x8358
                             (begin
                               (write '(funapp 2064 61))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2065 28))
                             (display "\n")
                             (blocks-rotate-cw x8359 x8358)))))
                        (begin
                          (write '(funapp 2066 25))
                          (display "\n")
                          (tetra x8360 x8357)))))
                     g8356)))
                 (tetra-overlaps-blocks?
                  (lambda (t bs)
                    (letrec*
                     ((g8361
                       (letrec*
                        ((x8362
                          (letrec*
                           ((x8363
                             (letrec*
                              ((x8364
                                (begin
                                  (write '(funapp 2077 39))
                                  (display "\n")
                                  (tetra-blocks t))))
                              (begin
                                (write '(funapp 2078 31))
                                (display "\n")
                                (blocks-intersect x8364 bs)))))
                           (begin
                             (write '(funapp 2079 28))
                             (display "\n")
                             (false? x8363)))))
                        (begin
                          (write '(funapp 2080 25))
                          (display "\n")
                          (false? x8362)))))
                     g8361)))
                 (tetra-change-color
                  (lambda (t c)
                    (letrec*
                     ((g8365
                       (letrec*
                        ((x8368
                          (begin
                            (write '(funapp 2087 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8366
                          (letrec*
                           ((x8367
                             (begin
                               (write '(funapp 2090 36))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2091 28))
                             (display "\n")
                             (blocks-change-color x8367 c)))))
                        (begin
                          (write '(funapp 2092 25))
                          (display "\n")
                          (tetra x8368 x8366)))))
                     g8365)))
                 (build-tetra-blocks
                  (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                    (letrec*
                     ((g8369
                       (letrec*
                        ((x8370
                          (letrec*
                           ((x8376
                             (begin
                               (write '(funapp 2101 36))
                               (display "\n")
                               (posn xc yc)))
                            (x8371
                             (letrec*
                              ((x8375
                                (begin
                                  (write '(funapp 2104 39))
                                  (display "\n")
                                  (block x1 y1 color)))
                               (x8374
                                (begin
                                  (write '(funapp 2105 39))
                                  (display "\n")
                                  (block x2 y2 color)))
                               (x8373
                                (begin
                                  (write '(funapp 2106 39))
                                  (display "\n")
                                  (block x3 y3 color)))
                               (x8372
                                (begin
                                  (write '(funapp 2107 39))
                                  (display "\n")
                                  (block x4 y4 color))))
                              (begin
                                (write '(funapp 2108 31))
                                (display "\n")
                                (list x8375 x8374 x8373 x8372)))))
                           (begin
                             (write '(funapp 2109 28))
                             (display "\n")
                             (tetra x8376 x8371)))))
                        (begin
                          (write '(funapp 2110 25))
                          (display "\n")
                          (tetra-move 3 0 x8370)))))
                     g8369)))
                 (touchdown
                  (lambda (w tetras)
                    (letrec*
                     ((g8377
                       (letrec*
                        ((x8383
                          (begin
                            (write '(funapp 2117 33))
                            (display "\n")
                            (list-pick-random tetras)))
                         (x8378
                          (letrec*
                           ((x8379
                             (letrec*
                              ((x8381
                                (letrec*
                                 ((x8382
                                   (begin
                                     (write '(funapp 2124 42))
                                     (display "\n")
                                     (world-tetra w))))
                                 (begin
                                   (write '(funapp 2125 34))
                                   (display "\n")
                                   (tetra-blocks x8382))))
                               (x8380
                                (begin
                                  (write '(funapp 2126 39))
                                  (display "\n")
                                  (world-blocks w))))
                              (begin
                                (write '(funapp 2127 31))
                                (display "\n")
                                (blocks-union x8381 x8380)))))
                           (begin
                             (write '(funapp 2128 28))
                             (display "\n")
                             (eliminate-full-rows x8379)))))
                        (begin
                          (write '(funapp 2129 25))
                          (display "\n")
                          (world x8383 x8378)))))
                     g8377)))
                 (world-jump-down
                  (lambda (w)
                    (letrec*
                     ((g8384
                       (if cnd
                         (letrec* ((g8385 w)) g8385)
                         (letrec*
                          ((g8386
                            (letrec*
                             ((x8387
                               (letrec*
                                ((x8389
                                  (letrec*
                                   ((x8390
                                     (begin
                                       (write '(funapp 2144 44))
                                       (display "\n")
                                       (world-tetra w))))
                                   (begin
                                     (write '(funapp 2145 36))
                                     (display "\n")
                                     (tetra-move 0 1 x8390))))
                                 (x8388
                                  (begin
                                    (write '(funapp 2146 41))
                                    (display "\n")
                                    (world-blocks w))))
                                (begin
                                  (write '(funapp 2147 33))
                                  (display "\n")
                                  (world x8389 x8388)))))
                             (begin
                               (write '(funapp 2148 30))
                               (display "\n")
                               (world-jump-down x8387)))))
                          g8386))))
                     g8384)))
                 (landed-on-blocks?
                  (lambda (w)
                    (letrec*
                     ((g8391
                       (letrec*
                        ((x8393
                          (letrec*
                           ((x8394
                             (begin
                               (write '(funapp 2158 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2159 28))
                             (display "\n")
                             (tetra-move 0 1 x8394))))
                         (x8392
                          (begin
                            (write '(funapp 2160 33))
                            (display "\n")
                            (world-blocks w))))
                        (begin
                          (write '(funapp 2161 25))
                          (display "\n")
                          (tetra-overlaps-blocks? x8393 x8392)))))
                     g8391)))
                 (landed-on-floor?
                  (lambda (w)
                    (letrec*
                     ((g8395
                       (letrec*
                        ((x8397
                          (letrec*
                           ((x8398
                             (letrec*
                              ((x8399
                                (begin
                                  (write '(funapp 2172 39))
                                  (display "\n")
                                  (world-tetra w))))
                              (begin
                                (write '(funapp 2173 31))
                                (display "\n")
                                (tetra-blocks x8399)))))
                           (begin
                             (write '(funapp 2174 28))
                             (display "\n")
                             (blocks-max-y x8398))))
                         (x8396
                          (begin
                            (write '(funapp 2175 33))
                            (display "\n")
                            (sub1 board-height))))
                        (begin
                          (write '(funapp 2176 25))
                          (display "\n")
                          (= x8397 x8396)))))
                     g8395)))
                 (landed?
                  (lambda (w)
                    (letrec*
                     ((g8400
                       (letrec*
                        ((val7258
                          (begin
                            (write '(funapp 2183 35))
                            (display "\n")
                            (landed-on-blocks? w))))
                        (letrec*
                         ((g8401
                           (if val7258
                             val7258
                             (begin
                               (write '(funapp 2185 54))
                               (display "\n")
                               (landed-on-floor? w)))))
                         g8401))))
                     g8400)))
                 (next-world
                  (lambda (w tetras)
                    (letrec*
                     ((g8402
                       (if cnd
                         (letrec*
                          ((g8403
                            (begin
                              (write '(funapp 2193 43))
                              (display "\n")
                              (touchdown w tetras))))
                          g8403)
                         (letrec*
                          ((g8404
                            (letrec*
                             ((x8406
                               (letrec*
                                ((x8407
                                  (begin
                                    (write '(funapp 2199 41))
                                    (display "\n")
                                    (world-tetra w))))
                                (begin
                                  (write '(funapp 2200 33))
                                  (display "\n")
                                  (tetra-move 0 1 x8407))))
                              (x8405
                               (begin
                                 (write '(funapp 2201 38))
                                 (display "\n")
                                 (world-blocks w))))
                             (begin
                               (write '(funapp 2202 30))
                               (display "\n")
                               (world x8406 x8405)))))
                          g8404))))
                     g8402)))
                 (try-new-tetra
                  (lambda (w new-tetra)
                    (letrec*
                     ((g8408
                       (if cnd
                         (letrec* ((g8409 w)) g8409)
                         (letrec*
                          ((g8410
                            (letrec*
                             ((x8411
                               (begin
                                 (write '(funapp 2214 38))
                                 (display "\n")
                                 (world-blocks w))))
                             (begin
                               (write '(funapp 2215 30))
                               (display "\n")
                               (world new-tetra x8411)))))
                          g8410))))
                     g8408)))
                 (world-move
                  (lambda (dx dy w)
                    (letrec*
                     ((g8412
                       (letrec*
                        ((x8413
                          (letrec*
                           ((x8414
                             (begin
                               (write '(funapp 2225 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2226 28))
                             (display "\n")
                             (tetra-move dx dy x8414)))))
                        (begin
                          (write '(funapp 2227 25))
                          (display "\n")
                          (try-new-tetra w x8413)))))
                     g8412)))
                 (world-rotate-ccw
                  (lambda (w)
                    (letrec*
                     ((g8415
                       (letrec*
                        ((x8416
                          (letrec*
                           ((x8417
                             (begin
                               (write '(funapp 2236 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2237 28))
                             (display "\n")
                             (tetra-rotate-ccw x8417)))))
                        (begin
                          (write '(funapp 2238 25))
                          (display "\n")
                          (try-new-tetra w x8416)))))
                     g8415)))
                 (world-rotate-cw
                  (lambda (w)
                    (letrec*
                     ((g8418
                       (letrec*
                        ((x8419
                          (letrec*
                           ((x8420
                             (begin
                               (write '(funapp 2247 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2248 28))
                             (display "\n")
                             (tetra-rotate-cw x8420)))))
                        (begin
                          (write '(funapp 2249 25))
                          (display "\n")
                          (try-new-tetra w x8419)))))
                     g8418)))
                 (ghost-blocks
                  (lambda (w)
                    (letrec*
                     ((g8421
                       (letrec*
                        ((x8422
                          (letrec*
                           ((x8423
                             (letrec*
                              ((x8424
                                (begin
                                  (write '(funapp 2260 39))
                                  (display "\n")
                                  (world-jump-down w))))
                              (begin
                                (write '(funapp 2261 31))
                                (display "\n")
                                (world-tetra x8424)))))
                           (begin
                             (write '(funapp 2262 28))
                             (display "\n")
                             (tetra-change-color
                              x8423
                              (begin
                                (write '(funapp 2262 53))
                                (display "\n")
                                'gray))))))
                        (begin
                          (write '(funapp 2263 25))
                          (display "\n")
                          (tetra-blocks x8422)))))
                     g8421)))
                 (world-key-move
                  (lambda (w k)
                    (letrec*
                     ((g8425
                       (if cnd
                         (letrec*
                          ((g8426
                            (begin
                              (write '(funapp 2270 43))
                              (display "\n")
                              (world-move neg-1 0 w))))
                          g8426)
                         (if cnd
                           (letrec*
                            ((g8427
                              (begin
                                (write '(funapp 2272 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8427)
                           (if cnd
                             (letrec*
                              ((g8428
                                (begin
                                  (write '(funapp 2274 47))
                                  (display "\n")
                                  (world-jump-down w))))
                              g8428)
                             (if cnd
                               (letrec*
                                ((g8429
                                  (begin
                                    (write '(funapp 2276 49))
                                    (display "\n")
                                    (world-rotate-ccw w))))
                                g8429)
                               (if cnd
                                 (letrec*
                                  ((g8430
                                    (begin
                                      (write '(funapp 2278 51))
                                      (display "\n")
                                      (world-rotate-cw w))))
                                  g8430)
                                 (letrec* ((g8431 w)) g8431))))))))
                     g8425)))
                 (image
                  (lambda ()
                    (letrec*
                     ((g8432
                       (begin
                         (write '(funapp 2282 47))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2282 52))
                            (display "\n")
                            'image)
                          (begin
                            (write '(funapp 2282 59))
                            (display "\n")
                            '())))))
                     g8432)))
                 (image?
                  (lambda (image7592)
                    (letrec*
                     ((g8433
                       (letrec*
                        ((x8434
                          (begin
                            (write '(funapp 2287 41))
                            (display "\n")
                            (car image7592))))
                        (begin
                          (write '(funapp 2287 59))
                          (display "\n")
                          (eq?
                           x8434
                           (begin
                             (write '(funapp 2287 69))
                             (display "\n")
                             'image))))))
                     g8433)))
                 (overlay
                  (lambda (i₁ i₂)
                    (letrec*
                     ((g8435
                       (begin
                         (write '(funapp 2289 60))
                         (display "\n")
                         (image))))
                     g8435)))
                 (circle
                  (lambda (r m c)
                    (letrec*
                     ((g8436
                       (begin
                         (write '(funapp 2290 59))
                         (display "\n")
                         (image))))
                     g8436)))
                 (rectangle
                  (lambda (w h m c)
                    (letrec*
                     ((g8437
                       (begin
                         (write '(funapp 2292 54))
                         (display "\n")
                         (image))))
                     g8437)))
                 (place-image
                  (lambda (i₁ r c i₂)
                    (letrec*
                     ((g8438
                       (begin
                         (write '(funapp 2294 56))
                         (display "\n")
                         (image))))
                     g8438)))
                 (empty-scene
                  (lambda (w h)
                    (letrec*
                     ((g8439
                       (begin
                         (write '(funapp 2295 62))
                         (display "\n")
                         (image))))
                     g8439)))
                 (list-pick-random
                  (lambda (xs)
                    (letrec*
                     ((g8440
                       (if cnd
                         (letrec*
                          ((g8441
                            (begin
                              (write '(funapp 2301 43))
                              (display "\n")
                              (car xs))))
                          g8441)
                         (letrec*
                          ((g8442
                            (letrec*
                             ((x8443
                               (begin
                                 (write '(funapp 2305 38))
                                 (display "\n")
                                 (cdr xs))))
                             (begin
                               (write '(funapp 2306 30))
                               (display "\n")
                               (list-pick-random x8443)))))
                          g8442))))
                     g8440)))
                 (neg-1
                  (begin (write '(funapp 2309 25)) (display "\n") (random 10)))
                 (world->image
                  (lambda (w)
                    (letrec*
                     ((g8444
                       (letrec*
                        ((x8448
                          (letrec*
                           ((x8449
                             (letrec*
                              ((x8453
                                (letrec*
                                 ((x8454
                                   (begin
                                     (write '(funapp 2321 42))
                                     (display "\n")
                                     (world-tetra w))))
                                 (begin
                                   (write '(funapp 2322 34))
                                   (display "\n")
                                   (tetra-blocks x8454))))
                               (x8450
                                (letrec*
                                 ((x8452
                                   (begin
                                     (write '(funapp 2325 42))
                                     (display "\n")
                                     (ghost-blocks w)))
                                  (x8451
                                   (begin
                                     (write '(funapp 2326 42))
                                     (display "\n")
                                     (world-blocks w))))
                                 (begin
                                   (write '(funapp 2327 34))
                                   (display "\n")
                                   (append x8452 x8451)))))
                              (begin
                                (write '(funapp 2328 31))
                                (display "\n")
                                (append x8453 x8450)))))
                           (begin
                             (write '(funapp 2329 28))
                             (display "\n")
                             (blocks->image x8449))))
                         (x8445
                          (letrec*
                           ((x8447
                             (begin
                               (write '(funapp 2332 36))
                               (display "\n")
                               (* board-width block-size)))
                            (x8446
                             (begin
                               (write '(funapp 2333 36))
                               (display "\n")
                               (* board-height block-size))))
                           (begin
                             (write '(funapp 2334 28))
                             (display "\n")
                             (empty-scene x8447 x8446)))))
                        (begin
                          (write '(funapp 2335 25))
                          (display "\n")
                          (place-image x8448 0 0 x8445)))))
                     g8444)))
                 (blocks->image
                  (lambda (bs)
                    (letrec*
                     ((g8455
                       (letrec*
                        ((x8461
                          (letrec*
                           ((x8465
                             (begin
                               (write '(funapp 2344 36))
                               (display "\n")
                               (b img)))
                            (x8462
                             (if cnd
                               (letrec*
                                ((g8463
                                  (begin
                                    (write '(funapp 2347 49))
                                    (display "\n")
                                    (place-block b img))))
                                g8463)
                               (letrec* ((g8464 img)) g8464))))
                           (begin
                             (write '(funapp 2349 28))
                             (display "\n")
                             (λ x8465 x8462))))
                         (x8456
                          (letrec*
                           ((x8459
                             (letrec*
                              ((x8460
                                (begin
                                  (write '(funapp 2354 39))
                                  (display "\n")
                                  (* board-width block-size))))
                              (begin
                                (write '(funapp 2355 31))
                                (display "\n")
                                (add1 x8460))))
                            (x8457
                             (letrec*
                              ((x8458
                                (begin
                                  (write '(funapp 2358 39))
                                  (display "\n")
                                  (* board-height block-size))))
                              (begin
                                (write '(funapp 2359 31))
                                (display "\n")
                                (add1 x8458)))))
                           (begin
                             (write '(funapp 2360 28))
                             (display "\n")
                             (empty-scene x8459 x8457)))))
                        (begin
                          (write '(funapp 2361 25))
                          (display "\n")
                          (foldr x8461 x8456 bs)))))
                     g8455)))
                 (block->image
                  (lambda (b)
                    (letrec*
                     ((g8466
                       (letrec*
                        ((x8470
                          (letrec*
                           ((x8473
                             (begin
                               (write '(funapp 2370 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8472
                             (begin
                               (write '(funapp 2371 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8471
                             (begin
                               (write '(funapp 2372 36))
                               (display "\n")
                               (block-color b))))
                           (begin
                             (write '(funapp 2373 28))
                             (display "\n")
                             (rectangle
                              x8473
                              x8472
                              (begin
                                (write '(funapp 2373 50))
                                (display "\n")
                                'solid)
                              x8471))))
                         (x8467
                          (letrec*
                           ((x8469
                             (begin
                               (write '(funapp 2376 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8468
                             (begin
                               (write '(funapp 2377 36))
                               (display "\n")
                               (add1 block-size))))
                           (begin
                             (write '(funapp 2378 28))
                             (display "\n")
                             (rectangle
                              x8469
                              x8468
                              (begin
                                (write '(funapp 2378 50))
                                (display "\n")
                                'outline)
                              (begin
                                (write '(funapp 2378 59))
                                (display "\n")
                                'black))))))
                        (begin
                          (write '(funapp 2379 25))
                          (display "\n")
                          (overlay x8470 x8467)))))
                     g8466)))
                 (place-block
                  (lambda (b scene)
                    (letrec*
                     ((g8474
                       (letrec*
                        ((x8483
                          (begin
                            (write '(funapp 2386 33))
                            (display "\n")
                            (block->image b)))
                         (x8479
                          (letrec*
                           ((x8481
                             (letrec*
                              ((x8482
                                (begin
                                  (write '(funapp 2391 39))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2392 31))
                                (display "\n")
                                (* x8482 block-size))))
                            (x8480
                             (begin
                               (write '(funapp 2393 36))
                               (display "\n")
                               (/ block-size 2))))
                           (begin
                             (write '(funapp 2394 28))
                             (display "\n")
                             (+ x8481 x8480))))
                         (x8475
                          (letrec*
                           ((x8477
                             (letrec*
                              ((x8478
                                (begin
                                  (write '(funapp 2399 39))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2400 31))
                                (display "\n")
                                (* x8478 block-size))))
                            (x8476
                             (begin
                               (write '(funapp 2401 36))
                               (display "\n")
                               (/ block-size 2))))
                           (begin
                             (write '(funapp 2402 28))
                             (display "\n")
                             (+ x8477 x8476)))))
                        (begin
                          (write '(funapp 2403 25))
                          (display "\n")
                          (place-image x8483 x8479 x8475 scene)))))
                     g8474)))
                 (world0
                  (lambda (tetras)
                    (letrec*
                     ((g8484
                       (letrec*
                        ((x8485
                          (begin
                            (write '(funapp 2410 33))
                            (display "\n")
                            (list-pick-random tetras))))
                        (begin
                          (write '(funapp 2411 25))
                          (display "\n")
                          (world x8485 null)))))
                     g8484))))
                (letrec*
                 ((g8486
                   (letrec*
                    ((x8549
                      (begin
                        (write '(funapp 2417 23))
                        (display "\n")
                        ((lambda (j7355 k7356 f7357)
                           (letrec*
                            ((g8550
                              (lambda (g7353 g7354)
                                (letrec*
                                 ((g8551
                                   (letrec*
                                    ((x8552
                                      (letrec*
                                       ((x8554
                                         (begin
                                           (write '(funapp 2426 46))
                                           (display "\n")
                                           (POSN/C j7355 k7356 g7353)))
                                        (x8553
                                         (begin
                                           (write '(funapp 2427 46))
                                           (display "\n")
                                           (POSN/C j7355 k7356 g7354))))
                                       (begin
                                         (write '(funapp 2428 38))
                                         (display "\n")
                                         (f7357 x8554 x8553)))))
                                    (begin
                                      (write '(funapp 2429 35))
                                      (display "\n")
                                      (boolean?/c j7355 k7356 x8552)))))
                                 g8551))))
                            g8550))
                         (begin
                           (write '(funapp 2432 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2433 23))
                           (display "\n")
                           'importer)
                         posn=?)))
                     (x8544
                      (letrec*
                       ((x8545
                         (letrec*
                          ((x8548 (input))
                           (x8546
                            (letrec*
                             ((x8547 (input)))
                             (begin
                               (write '(funapp 2441 56))
                               (display "\n")
                               (cons
                                x8547
                                (begin
                                  (write '(funapp 2441 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2442 27))
                            (display "\n")
                            (cons x8548 x8546)))))
                       (begin
                         (write '(funapp 2443 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2443 29))
                            (display "\n")
                            'posn)
                          x8545))))
                     (x8539
                      (letrec*
                       ((x8540
                         (letrec*
                          ((x8543 (input))
                           (x8541
                            (letrec*
                             ((x8542 (input)))
                             (begin
                               (write '(funapp 2450 56))
                               (display "\n")
                               (cons
                                x8542
                                (begin
                                  (write '(funapp 2450 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2451 27))
                            (display "\n")
                            (cons x8543 x8541)))))
                       (begin
                         (write '(funapp 2452 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2452 29))
                            (display "\n")
                            'posn)
                          x8540)))))
                    (begin
                      (write '(funapp 2453 21))
                      (display "\n")
                      (x8549 x8544 x8539))))
                  (g8487
                   (begin
                     (write '(funapp 2454 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2454 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2454 40))
                        (display "\n")
                        'importer)
                      COLOR/C)))
                  (g8488
                   (begin
                     (write '(funapp 2455 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2455 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2455 40))
                        (display "\n")
                        'importer)
                      POSN/C)))
                  (g8489
                   (begin
                     (write '(funapp 2456 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2456 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2456 40))
                        (display "\n")
                        'importer)
                      BLOCK/C)))
                  (g8490
                   (begin
                     (write '(funapp 2457 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2457 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2457 40))
                        (display "\n")
                        'importer)
                      TETRA/C)))
                  (g8491
                   (begin
                     (write '(funapp 2458 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2458 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2458 40))
                        (display "\n")
                        'importer)
                      WORLD/C)))
                  (g8492
                   (begin
                     (write '(funapp 2459 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2459 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2459 40))
                        (display "\n")
                        'importer)
                      BSET/C)))
                  (g8493
                   (begin
                     (write '(funapp 2460 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2460 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2460 43))
                        (display "\n")
                        'importer)
                      block-size)))
                  (g8494
                   (begin
                     (write '(funapp 2461 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2461 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2461 43))
                        (display "\n")
                        'importer)
                      board-width)))
                  (g8495
                   (begin
                     (write '(funapp 2462 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2462 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2462 43))
                        (display "\n")
                        'importer)
                      board-height)))
                  (g8496
                   (letrec*
                    ((x8567
                      (begin
                        (write '(funapp 2466 23))
                        (display "\n")
                        ((lambda (j7360 k7361 f7362)
                           (letrec*
                            ((g8568
                              (lambda (g7358 g7359)
                                (letrec*
                                 ((g8569
                                   (letrec*
                                    ((x8570
                                      (letrec*
                                       ((x8572
                                         (begin
                                           (write '(funapp 2475 46))
                                           (display "\n")
                                           (POSN/C j7360 k7361 g7358)))
                                        (x8571
                                         (begin
                                           (write '(funapp 2476 46))
                                           (display "\n")
                                           (BLOCK/C j7360 k7361 g7359))))
                                       (begin
                                         (write '(funapp 2477 38))
                                         (display "\n")
                                         (f7362 x8572 x8571)))))
                                    (begin
                                      (write '(funapp 2478 35))
                                      (display "\n")
                                      (BLOCK/C j7360 k7361 x8570)))))
                                 g8569))))
                            g8568))
                         (begin
                           (write '(funapp 2481 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2482 23))
                           (display "\n")
                           'importer)
                         block-rotate-ccw)))
                     (x8562
                      (letrec*
                       ((x8563
                         (letrec*
                          ((x8566 (input))
                           (x8564
                            (letrec*
                             ((x8565 (input)))
                             (begin
                               (write '(funapp 2490 56))
                               (display "\n")
                               (cons
                                x8565
                                (begin
                                  (write '(funapp 2490 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2491 27))
                            (display "\n")
                            (cons x8566 x8564)))))
                       (begin
                         (write '(funapp 2492 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2492 29))
                            (display "\n")
                            'posn)
                          x8563))))
                     (x8555
                      (letrec*
                       ((x8556
                         (letrec*
                          ((x8561 (input))
                           (x8557
                            (letrec*
                             ((x8560 (input))
                              (x8558
                               (letrec*
                                ((x8559 (input)))
                                (begin
                                  (write '(funapp 2502 59))
                                  (display "\n")
                                  (cons
                                   x8559
                                   (begin
                                     (write '(funapp 2502 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2503 30))
                               (display "\n")
                               (cons x8560 x8558)))))
                          (begin
                            (write '(funapp 2504 27))
                            (display "\n")
                            (cons x8561 x8557)))))
                       (begin
                         (write '(funapp 2505 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2505 29))
                            (display "\n")
                            'block)
                          x8556)))))
                    (begin
                      (write '(funapp 2506 21))
                      (display "\n")
                      (x8567 x8562 x8555))))
                  (g8497
                   (letrec*
                    ((x8585
                      (begin
                        (write '(funapp 2510 23))
                        (display "\n")
                        ((lambda (j7365 k7366 f7367)
                           (letrec*
                            ((g8586
                              (lambda (g7363 g7364)
                                (letrec*
                                 ((g8587
                                   (letrec*
                                    ((x8588
                                      (letrec*
                                       ((x8590
                                         (begin
                                           (write '(funapp 2519 46))
                                           (display "\n")
                                           (POSN/C j7365 k7366 g7363)))
                                        (x8589
                                         (begin
                                           (write '(funapp 2520 46))
                                           (display "\n")
                                           (BLOCK/C j7365 k7366 g7364))))
                                       (begin
                                         (write '(funapp 2521 38))
                                         (display "\n")
                                         (f7367 x8590 x8589)))))
                                    (begin
                                      (write '(funapp 2522 35))
                                      (display "\n")
                                      (BLOCK/C j7365 k7366 x8588)))))
                                 g8587))))
                            g8586))
                         (begin
                           (write '(funapp 2525 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2526 23))
                           (display "\n")
                           'importer)
                         block-rotate-cw)))
                     (x8580
                      (letrec*
                       ((x8581
                         (letrec*
                          ((x8584 (input))
                           (x8582
                            (letrec*
                             ((x8583 (input)))
                             (begin
                               (write '(funapp 2534 56))
                               (display "\n")
                               (cons
                                x8583
                                (begin
                                  (write '(funapp 2534 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2535 27))
                            (display "\n")
                            (cons x8584 x8582)))))
                       (begin
                         (write '(funapp 2536 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2536 29))
                            (display "\n")
                            'posn)
                          x8581))))
                     (x8573
                      (letrec*
                       ((x8574
                         (letrec*
                          ((x8579 (input))
                           (x8575
                            (letrec*
                             ((x8578 (input))
                              (x8576
                               (letrec*
                                ((x8577 (input)))
                                (begin
                                  (write '(funapp 2546 59))
                                  (display "\n")
                                  (cons
                                   x8577
                                   (begin
                                     (write '(funapp 2546 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2547 30))
                               (display "\n")
                               (cons x8578 x8576)))))
                          (begin
                            (write '(funapp 2548 27))
                            (display "\n")
                            (cons x8579 x8575)))))
                       (begin
                         (write '(funapp 2549 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2549 29))
                            (display "\n")
                            'block)
                          x8574)))))
                    (begin
                      (write '(funapp 2550 21))
                      (display "\n")
                      (x8585 x8580 x8573))))
                  (g8498
                   (letrec*
                    ((x8605
                      (begin
                        (write '(funapp 2554 23))
                        (display "\n")
                        ((lambda (j7370 k7371 f7372)
                           (letrec*
                            ((g8606
                              (lambda (g7368 g7369)
                                (letrec*
                                 ((g8607
                                   (letrec*
                                    ((x8608
                                      (letrec*
                                       ((x8610
                                         (begin
                                           (write '(funapp 2563 46))
                                           (display "\n")
                                           (BLOCK/C j7370 k7371 g7368)))
                                        (x8609
                                         (begin
                                           (write '(funapp 2564 46))
                                           (display "\n")
                                           (BLOCK/C j7370 k7371 g7369))))
                                       (begin
                                         (write '(funapp 2565 38))
                                         (display "\n")
                                         (f7372 x8610 x8609)))))
                                    (begin
                                      (write '(funapp 2566 35))
                                      (display "\n")
                                      (boolean?/c j7370 k7371 x8608)))))
                                 g8607))))
                            g8606))
                         (begin
                           (write '(funapp 2569 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2570 23))
                           (display "\n")
                           'importer)
                         block=?)))
                     (x8598
                      (letrec*
                       ((x8599
                         (letrec*
                          ((x8604 (input))
                           (x8600
                            (letrec*
                             ((x8603 (input))
                              (x8601
                               (letrec*
                                ((x8602 (input)))
                                (begin
                                  (write '(funapp 2581 59))
                                  (display "\n")
                                  (cons
                                   x8602
                                   (begin
                                     (write '(funapp 2581 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2582 30))
                               (display "\n")
                               (cons x8603 x8601)))))
                          (begin
                            (write '(funapp 2583 27))
                            (display "\n")
                            (cons x8604 x8600)))))
                       (begin
                         (write '(funapp 2584 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2584 29))
                            (display "\n")
                            'block)
                          x8599))))
                     (x8591
                      (letrec*
                       ((x8592
                         (letrec*
                          ((x8597 (input))
                           (x8593
                            (letrec*
                             ((x8596 (input))
                              (x8594
                               (letrec*
                                ((x8595 (input)))
                                (begin
                                  (write '(funapp 2594 59))
                                  (display "\n")
                                  (cons
                                   x8595
                                   (begin
                                     (write '(funapp 2594 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2595 30))
                               (display "\n")
                               (cons x8596 x8594)))))
                          (begin
                            (write '(funapp 2596 27))
                            (display "\n")
                            (cons x8597 x8593)))))
                       (begin
                         (write '(funapp 2597 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2597 29))
                            (display "\n")
                            'block)
                          x8592)))))
                    (begin
                      (write '(funapp 2598 21))
                      (display "\n")
                      (x8605 x8598 x8591))))
                  (g8499
                   (letrec*
                    ((x8620
                      (begin
                        (write '(funapp 2602 23))
                        (display "\n")
                        ((lambda (j7376 k7377 f7378)
                           (letrec*
                            ((g8621
                              (lambda (g7373 g7374 g7375)
                                (letrec*
                                 ((g8622
                                   (letrec*
                                    ((x8623
                                      (letrec*
                                       ((x8626
                                         (begin
                                           (write '(funapp 2611 46))
                                           (display "\n")
                                           (real?/c j7376 k7377 g7373)))
                                        (x8625
                                         (begin
                                           (write '(funapp 2612 46))
                                           (display "\n")
                                           (real?/c j7376 k7377 g7374)))
                                        (x8624
                                         (begin
                                           (write '(funapp 2613 46))
                                           (display "\n")
                                           (BLOCK/C j7376 k7377 g7375))))
                                       (begin
                                         (write '(funapp 2614 38))
                                         (display "\n")
                                         (f7378 x8626 x8625 x8624)))))
                                    (begin
                                      (write '(funapp 2615 35))
                                      (display "\n")
                                      (BLOCK/C j7376 k7377 x8623)))))
                                 g8622))))
                            g8621))
                         (begin
                           (write '(funapp 2618 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2619 23))
                           (display "\n")
                           'importer)
                         block-move)))
                     (x8619 (input))
                     (x8618 (input))
                     (x8611
                      (letrec*
                       ((x8612
                         (letrec*
                          ((x8617 (input))
                           (x8613
                            (letrec*
                             ((x8616 (input))
                              (x8614
                               (letrec*
                                ((x8615 (input)))
                                (begin
                                  (write '(funapp 2632 59))
                                  (display "\n")
                                  (cons
                                   x8615
                                   (begin
                                     (write '(funapp 2632 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2633 30))
                               (display "\n")
                               (cons x8616 x8614)))))
                          (begin
                            (write '(funapp 2634 27))
                            (display "\n")
                            (cons x8617 x8613)))))
                       (begin
                         (write '(funapp 2635 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2635 29))
                            (display "\n")
                            'block)
                          x8612)))))
                    (begin
                      (write '(funapp 2636 21))
                      (display "\n")
                      (x8620 x8619 x8618 x8611))))
                  (g8500
                   (letrec*
                    ((x8635
                      (begin
                        (write '(funapp 2640 23))
                        (display "\n")
                        ((lambda (j7381 k7382 f7383)
                           (letrec*
                            ((g8636
                              (lambda (g7379 g7380)
                                (letrec*
                                 ((g8637
                                   (letrec*
                                    ((x8638
                                      (letrec*
                                       ((x8640
                                         (begin
                                           (write '(funapp 2649 46))
                                           (display "\n")
                                           (BSET/C j7381 k7382 g7379)))
                                        (x8639
                                         (begin
                                           (write '(funapp 2650 46))
                                           (display "\n")
                                           (BLOCK/C j7381 k7382 g7380))))
                                       (begin
                                         (write '(funapp 2651 38))
                                         (display "\n")
                                         (f7383 x8640 x8639)))))
                                    (begin
                                      (write '(funapp 2652 35))
                                      (display "\n")
                                      (boolean?/c j7381 k7382 x8638)))))
                                 g8637))))
                            g8636))
                         (begin
                           (write '(funapp 2655 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2656 23))
                           (display "\n")
                           'importer)
                         blocks-contains?)))
                     (x8634 (input))
                     (x8627
                      (letrec*
                       ((x8628
                         (letrec*
                          ((x8633 (input))
                           (x8629
                            (letrec*
                             ((x8632 (input))
                              (x8630
                               (letrec*
                                ((x8631 (input)))
                                (begin
                                  (write '(funapp 2668 59))
                                  (display "\n")
                                  (cons
                                   x8631
                                   (begin
                                     (write '(funapp 2668 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2669 30))
                               (display "\n")
                               (cons x8632 x8630)))))
                          (begin
                            (write '(funapp 2670 27))
                            (display "\n")
                            (cons x8633 x8629)))))
                       (begin
                         (write '(funapp 2671 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2671 29))
                            (display "\n")
                            'block)
                          x8628)))))
                    (begin
                      (write '(funapp 2672 21))
                      (display "\n")
                      (x8635 x8634 x8627))))
                  (g8501
                   (letrec*
                    ((x8643
                      (begin
                        (write '(funapp 2676 23))
                        (display "\n")
                        ((lambda (j7386 k7387 f7388)
                           (letrec*
                            ((g8644
                              (lambda (g7384 g7385)
                                (letrec*
                                 ((g8645
                                   (letrec*
                                    ((x8646
                                      (letrec*
                                       ((x8648
                                         (begin
                                           (write '(funapp 2685 46))
                                           (display "\n")
                                           (BSET/C j7386 k7387 g7384)))
                                        (x8647
                                         (begin
                                           (write '(funapp 2686 46))
                                           (display "\n")
                                           (BSET/C j7386 k7387 g7385))))
                                       (begin
                                         (write '(funapp 2687 38))
                                         (display "\n")
                                         (f7388 x8648 x8647)))))
                                    (begin
                                      (write '(funapp 2688 35))
                                      (display "\n")
                                      (boolean?/c j7386 k7387 x8646)))))
                                 g8645))))
                            g8644))
                         (begin
                           (write '(funapp 2691 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2692 23))
                           (display "\n")
                           'importer)
                         blocks=?)))
                     (x8642 (input))
                     (x8641 (input)))
                    (begin
                      (write '(funapp 2696 21))
                      (display "\n")
                      (x8643 x8642 x8641))))
                  (g8502
                   (letrec*
                    ((x8651
                      (begin
                        (write '(funapp 2700 23))
                        (display "\n")
                        ((lambda (j7391 k7392 f7393)
                           (letrec*
                            ((g8652
                              (lambda (g7389 g7390)
                                (letrec*
                                 ((g8653
                                   (letrec*
                                    ((x8654
                                      (letrec*
                                       ((x8656
                                         (begin
                                           (write '(funapp 2709 46))
                                           (display "\n")
                                           (BSET/C j7391 k7392 g7389)))
                                        (x8655
                                         (begin
                                           (write '(funapp 2710 46))
                                           (display "\n")
                                           (BSET/C j7391 k7392 g7390))))
                                       (begin
                                         (write '(funapp 2711 38))
                                         (display "\n")
                                         (f7393 x8656 x8655)))))
                                    (begin
                                      (write '(funapp 2712 35))
                                      (display "\n")
                                      (boolean?/c j7391 k7392 x8654)))))
                                 g8653))))
                            g8652))
                         (begin
                           (write '(funapp 2715 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2716 23))
                           (display "\n")
                           'importer)
                         blocks-subset?)))
                     (x8650 (input))
                     (x8649 (input)))
                    (begin
                      (write '(funapp 2720 21))
                      (display "\n")
                      (x8651 x8650 x8649))))
                  (g8503
                   (letrec*
                    ((x8659
                      (begin
                        (write '(funapp 2724 23))
                        (display "\n")
                        ((lambda (j7396 k7397 f7398)
                           (letrec*
                            ((g8660
                              (lambda (g7394 g7395)
                                (letrec*
                                 ((g8661
                                   (letrec*
                                    ((x8662
                                      (letrec*
                                       ((x8664
                                         (begin
                                           (write '(funapp 2733 46))
                                           (display "\n")
                                           (BSET/C j7396 k7397 g7394)))
                                        (x8663
                                         (begin
                                           (write '(funapp 2734 46))
                                           (display "\n")
                                           (BSET/C j7396 k7397 g7395))))
                                       (begin
                                         (write '(funapp 2735 38))
                                         (display "\n")
                                         (f7398 x8664 x8663)))))
                                    (begin
                                      (write '(funapp 2736 35))
                                      (display "\n")
                                      (BSET/C j7396 k7397 x8662)))))
                                 g8661))))
                            g8660))
                         (begin
                           (write '(funapp 2739 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2740 23))
                           (display "\n")
                           'importer)
                         blocks-intersect)))
                     (x8658 (input))
                     (x8657 (input)))
                    (begin
                      (write '(funapp 2744 21))
                      (display "\n")
                      (x8659 x8658 x8657))))
                  (g8504
                   (letrec*
                    ((x8666
                      (begin
                        (write '(funapp 2748 23))
                        (display "\n")
                        ((lambda (j7400 k7401 f7402)
                           (letrec*
                            ((g8667
                              (lambda (g7399)
                                (letrec*
                                 ((g8668
                                   (letrec*
                                    ((x8669
                                      (letrec*
                                       ((x8670
                                         (begin
                                           (write '(funapp 2757 46))
                                           (display "\n")
                                           (BSET/C j7400 k7401 g7399))))
                                       (begin
                                         (write '(funapp 2758 38))
                                         (display "\n")
                                         (f7402 x8670)))))
                                    (begin
                                      (write '(funapp 2759 35))
                                      (display "\n")
                                      (real?/c j7400 k7401 x8669)))))
                                 g8668))))
                            g8667))
                         (begin
                           (write '(funapp 2762 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2763 23))
                           (display "\n")
                           'importer)
                         blocks-count)))
                     (x8665 (input)))
                    (begin
                      (write '(funapp 2766 21))
                      (display "\n")
                      (x8666 x8665))))
                  (g8505
                   (letrec*
                    ((x8672
                      (begin
                        (write '(funapp 2770 23))
                        (display "\n")
                        ((lambda (j7404 k7405 f7406)
                           (letrec*
                            ((g8673
                              (lambda (g7403)
                                (letrec*
                                 ((g8674
                                   (letrec*
                                    ((x8675
                                      (letrec*
                                       ((x8676
                                         (begin
                                           (write '(funapp 2779 46))
                                           (display "\n")
                                           (BSET/C j7404 k7405 g7403))))
                                       (begin
                                         (write '(funapp 2780 38))
                                         (display "\n")
                                         (f7406 x8676)))))
                                    (begin
                                      (write '(funapp 2781 35))
                                      (display "\n")
                                      (boolean?/c j7404 k7405 x8675)))))
                                 g8674))))
                            g8673))
                         (begin
                           (write '(funapp 2784 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2785 23))
                           (display "\n")
                           'importer)
                         blocks-overflow?)))
                     (x8671 (input)))
                    (begin
                      (write '(funapp 2788 21))
                      (display "\n")
                      (x8672 x8671))))
                  (g8506
                   (letrec*
                    ((x8680
                      (begin
                        (write '(funapp 2792 23))
                        (display "\n")
                        ((lambda (j7410 k7411 f7412)
                           (letrec*
                            ((g8681
                              (lambda (g7407 g7408 g7409)
                                (letrec*
                                 ((g8682
                                   (letrec*
                                    ((x8683
                                      (letrec*
                                       ((x8686
                                         (begin
                                           (write '(funapp 2801 46))
                                           (display "\n")
                                           (real?/c j7410 k7411 g7407)))
                                        (x8685
                                         (begin
                                           (write '(funapp 2802 46))
                                           (display "\n")
                                           (real?/c j7410 k7411 g7408)))
                                        (x8684
                                         (begin
                                           (write '(funapp 2803 46))
                                           (display "\n")
                                           (BSET/C j7410 k7411 g7409))))
                                       (begin
                                         (write '(funapp 2804 38))
                                         (display "\n")
                                         (f7412 x8686 x8685 x8684)))))
                                    (begin
                                      (write '(funapp 2805 35))
                                      (display "\n")
                                      (BSET/C j7410 k7411 x8683)))))
                                 g8682))))
                            g8681))
                         (begin
                           (write '(funapp 2808 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2809 23))
                           (display "\n")
                           'importer)
                         blocks-move)))
                     (x8679 (input))
                     (x8678 (input))
                     (x8677 (input)))
                    (begin
                      (write '(funapp 2814 21))
                      (display "\n")
                      (x8680 x8679 x8678 x8677))))
                  (g8507
                   (letrec*
                    ((x8693
                      (begin
                        (write '(funapp 2818 23))
                        (display "\n")
                        ((lambda (j7415 k7416 f7417)
                           (letrec*
                            ((g8694
                              (lambda (g7413 g7414)
                                (letrec*
                                 ((g8695
                                   (letrec*
                                    ((x8696
                                      (letrec*
                                       ((x8698
                                         (begin
                                           (write '(funapp 2827 46))
                                           (display "\n")
                                           (POSN/C j7415 k7416 g7413)))
                                        (x8697
                                         (begin
                                           (write '(funapp 2828 46))
                                           (display "\n")
                                           (BSET/C j7415 k7416 g7414))))
                                       (begin
                                         (write '(funapp 2829 38))
                                         (display "\n")
                                         (f7417 x8698 x8697)))))
                                    (begin
                                      (write '(funapp 2830 35))
                                      (display "\n")
                                      (BSET/C j7415 k7416 x8696)))))
                                 g8695))))
                            g8694))
                         (begin
                           (write '(funapp 2833 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2834 23))
                           (display "\n")
                           'importer)
                         blocks-rotate-cw)))
                     (x8688
                      (letrec*
                       ((x8689
                         (letrec*
                          ((x8692 (input))
                           (x8690
                            (letrec*
                             ((x8691 (input)))
                             (begin
                               (write '(funapp 2842 56))
                               (display "\n")
                               (cons
                                x8691
                                (begin
                                  (write '(funapp 2842 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2843 27))
                            (display "\n")
                            (cons x8692 x8690)))))
                       (begin
                         (write '(funapp 2844 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2844 29))
                            (display "\n")
                            'posn)
                          x8689))))
                     (x8687 (input)))
                    (begin
                      (write '(funapp 2846 21))
                      (display "\n")
                      (x8693 x8688 x8687))))
                  (g8508
                   (letrec*
                    ((x8705
                      (begin
                        (write '(funapp 2850 23))
                        (display "\n")
                        ((lambda (j7420 k7421 f7422)
                           (letrec*
                            ((g8706
                              (lambda (g7418 g7419)
                                (letrec*
                                 ((g8707
                                   (letrec*
                                    ((x8708
                                      (letrec*
                                       ((x8710
                                         (begin
                                           (write '(funapp 2859 46))
                                           (display "\n")
                                           (POSN/C j7420 k7421 g7418)))
                                        (x8709
                                         (begin
                                           (write '(funapp 2860 46))
                                           (display "\n")
                                           (BSET/C j7420 k7421 g7419))))
                                       (begin
                                         (write '(funapp 2861 38))
                                         (display "\n")
                                         (f7422 x8710 x8709)))))
                                    (begin
                                      (write '(funapp 2862 35))
                                      (display "\n")
                                      (BSET/C j7420 k7421 x8708)))))
                                 g8707))))
                            g8706))
                         (begin
                           (write '(funapp 2865 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2866 23))
                           (display "\n")
                           'importer)
                         blocks-rotate-ccw)))
                     (x8700
                      (letrec*
                       ((x8701
                         (letrec*
                          ((x8704 (input))
                           (x8702
                            (letrec*
                             ((x8703 (input)))
                             (begin
                               (write '(funapp 2874 56))
                               (display "\n")
                               (cons
                                x8703
                                (begin
                                  (write '(funapp 2874 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2875 27))
                            (display "\n")
                            (cons x8704 x8702)))))
                       (begin
                         (write '(funapp 2876 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2876 29))
                            (display "\n")
                            'posn)
                          x8701))))
                     (x8699 (input)))
                    (begin
                      (write '(funapp 2878 21))
                      (display "\n")
                      (x8705 x8700 x8699))))
                  (g8509
                   (letrec*
                    ((x8713
                      (begin
                        (write '(funapp 2882 23))
                        (display "\n")
                        ((lambda (j7425 k7426 f7427)
                           (letrec*
                            ((g8714
                              (lambda (g7423 g7424)
                                (letrec*
                                 ((g8715
                                   (letrec*
                                    ((x8716
                                      (letrec*
                                       ((x8718
                                         (begin
                                           (write '(funapp 2891 46))
                                           (display "\n")
                                           (BSET/C j7425 k7426 g7423)))
                                        (x8717
                                         (begin
                                           (write '(funapp 2892 46))
                                           (display "\n")
                                           (COLOR/C j7425 k7426 g7424))))
                                       (begin
                                         (write '(funapp 2893 38))
                                         (display "\n")
                                         (f7427 x8718 x8717)))))
                                    (begin
                                      (write '(funapp 2894 35))
                                      (display "\n")
                                      (BSET/C j7425 k7426 x8716)))))
                                 g8715))))
                            g8714))
                         (begin
                           (write '(funapp 2897 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2898 23))
                           (display "\n")
                           'importer)
                         blocks-change-color)))
                     (x8712 (input))
                     (x8711 (input)))
                    (begin
                      (write '(funapp 2902 21))
                      (display "\n")
                      (x8713 x8712 x8711))))
                  (g8510
                   (letrec*
                    ((x8721
                      (begin
                        (write '(funapp 2906 23))
                        (display "\n")
                        ((lambda (j7430 k7431 f7432)
                           (letrec*
                            ((g8722
                              (lambda (g7428 g7429)
                                (letrec*
                                 ((g8723
                                   (letrec*
                                    ((x8724
                                      (letrec*
                                       ((x8726
                                         (begin
                                           (write '(funapp 2915 46))
                                           (display "\n")
                                           (BSET/C j7430 k7431 g7428)))
                                        (x8725
                                         (begin
                                           (write '(funapp 2916 46))
                                           (display "\n")
                                           (real?/c j7430 k7431 g7429))))
                                       (begin
                                         (write '(funapp 2917 38))
                                         (display "\n")
                                         (f7432 x8726 x8725)))))
                                    (begin
                                      (write '(funapp 2918 35))
                                      (display "\n")
                                      (BSET/C j7430 k7431 x8724)))))
                                 g8723))))
                            g8722))
                         (begin
                           (write '(funapp 2921 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2922 23))
                           (display "\n")
                           'importer)
                         blocks-row)))
                     (x8720 (input))
                     (x8719 (input)))
                    (begin
                      (write '(funapp 2926 21))
                      (display "\n")
                      (x8721 x8720 x8719))))
                  (g8511
                   (letrec*
                    ((x8729
                      (begin
                        (write '(funapp 2930 23))
                        (display "\n")
                        ((lambda (j7435 k7436 f7437)
                           (letrec*
                            ((g8730
                              (lambda (g7433 g7434)
                                (letrec*
                                 ((g8731
                                   (letrec*
                                    ((x8732
                                      (letrec*
                                       ((x8734
                                         (begin
                                           (write '(funapp 2939 46))
                                           (display "\n")
                                           (BSET/C j7435 k7436 g7433)))
                                        (x8733
                                         (begin
                                           (write '(funapp 2940 46))
                                           (display "\n")
                                           (real?/c j7435 k7436 g7434))))
                                       (begin
                                         (write '(funapp 2941 38))
                                         (display "\n")
                                         (f7437 x8734 x8733)))))
                                    (begin
                                      (write '(funapp 2942 35))
                                      (display "\n")
                                      (boolean?/c j7435 k7436 x8732)))))
                                 g8731))))
                            g8730))
                         (begin
                           (write '(funapp 2945 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2946 23))
                           (display "\n")
                           'importer)
                         full-row?)))
                     (x8728 (input))
                     (x8727 (input)))
                    (begin
                      (write '(funapp 2950 21))
                      (display "\n")
                      (x8729 x8728 x8727))))
                  (g8512
                   (letrec*
                    ((x8737
                      (begin
                        (write '(funapp 2954 23))
                        (display "\n")
                        ((lambda (j7440 k7441 f7442)
                           (letrec*
                            ((g8738
                              (lambda (g7438 g7439)
                                (letrec*
                                 ((g8739
                                   (letrec*
                                    ((x8740
                                      (letrec*
                                       ((x8742
                                         (begin
                                           (write '(funapp 2963 46))
                                           (display "\n")
                                           (BSET/C j7440 k7441 g7438)))
                                        (x8741
                                         (begin
                                           (write '(funapp 2964 46))
                                           (display "\n")
                                           (BSET/C j7440 k7441 g7439))))
                                       (begin
                                         (write '(funapp 2965 38))
                                         (display "\n")
                                         (f7442 x8742 x8741)))))
                                    (begin
                                      (write '(funapp 2966 35))
                                      (display "\n")
                                      (BSET/C j7440 k7441 x8740)))))
                                 g8739))))
                            g8738))
                         (begin
                           (write '(funapp 2969 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2970 23))
                           (display "\n")
                           'importer)
                         blocks-union)))
                     (x8736 (input))
                     (x8735 (input)))
                    (begin
                      (write '(funapp 2974 21))
                      (display "\n")
                      (x8737 x8736 x8735))))
                  (g8513
                   (letrec*
                    ((x8744
                      (begin
                        (write '(funapp 2978 23))
                        (display "\n")
                        ((lambda (j7444 k7445 f7446)
                           (letrec*
                            ((g8745
                              (lambda (g7443)
                                (letrec*
                                 ((g8746
                                   (letrec*
                                    ((x8747
                                      (letrec*
                                       ((x8748
                                         (begin
                                           (write '(funapp 2987 46))
                                           (display "\n")
                                           (BSET/C j7444 k7445 g7443))))
                                       (begin
                                         (write '(funapp 2988 38))
                                         (display "\n")
                                         (f7446 x8748)))))
                                    (begin
                                      (write '(funapp 2989 35))
                                      (display "\n")
                                      (real?/c j7444 k7445 x8747)))))
                                 g8746))))
                            g8745))
                         (begin
                           (write '(funapp 2992 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2993 23))
                           (display "\n")
                           'importer)
                         blocks-max-x)))
                     (x8743 (input)))
                    (begin
                      (write '(funapp 2996 21))
                      (display "\n")
                      (x8744 x8743))))
                  (g8514
                   (letrec*
                    ((x8750
                      (begin
                        (write '(funapp 3000 23))
                        (display "\n")
                        ((lambda (j7448 k7449 f7450)
                           (letrec*
                            ((g8751
                              (lambda (g7447)
                                (letrec*
                                 ((g8752
                                   (letrec*
                                    ((x8753
                                      (letrec*
                                       ((x8754
                                         (begin
                                           (write '(funapp 3009 46))
                                           (display "\n")
                                           (BSET/C j7448 k7449 g7447))))
                                       (begin
                                         (write '(funapp 3010 38))
                                         (display "\n")
                                         (f7450 x8754)))))
                                    (begin
                                      (write '(funapp 3011 35))
                                      (display "\n")
                                      (real?/c j7448 k7449 x8753)))))
                                 g8752))))
                            g8751))
                         (begin
                           (write '(funapp 3014 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3015 23))
                           (display "\n")
                           'importer)
                         blocks-min-x)))
                     (x8749 (input)))
                    (begin
                      (write '(funapp 3018 21))
                      (display "\n")
                      (x8750 x8749))))
                  (g8515
                   (letrec*
                    ((x8756
                      (begin
                        (write '(funapp 3022 23))
                        (display "\n")
                        ((lambda (j7452 k7453 f7454)
                           (letrec*
                            ((g8757
                              (lambda (g7451)
                                (letrec*
                                 ((g8758
                                   (letrec*
                                    ((x8759
                                      (letrec*
                                       ((x8760
                                         (begin
                                           (write '(funapp 3031 46))
                                           (display "\n")
                                           (BSET/C j7452 k7453 g7451))))
                                       (begin
                                         (write '(funapp 3032 38))
                                         (display "\n")
                                         (f7454 x8760)))))
                                    (begin
                                      (write '(funapp 3033 35))
                                      (display "\n")
                                      (real?/c j7452 k7453 x8759)))))
                                 g8758))))
                            g8757))
                         (begin
                           (write '(funapp 3036 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3037 23))
                           (display "\n")
                           'importer)
                         blocks-max-y)))
                     (x8755 (input)))
                    (begin
                      (write '(funapp 3040 21))
                      (display "\n")
                      (x8756 x8755))))
                  (g8516
                   (letrec*
                    ((x8762
                      (begin
                        (write '(funapp 3044 23))
                        (display "\n")
                        ((lambda (j7456 k7457 f7458)
                           (letrec*
                            ((g8763
                              (lambda (g7455)
                                (letrec*
                                 ((g8764
                                   (letrec*
                                    ((x8765
                                      (letrec*
                                       ((x8766
                                         (begin
                                           (write '(funapp 3053 46))
                                           (display "\n")
                                           (BSET/C j7456 k7457 g7455))))
                                       (begin
                                         (write '(funapp 3054 38))
                                         (display "\n")
                                         (f7458 x8766)))))
                                    (begin
                                      (write '(funapp 3055 35))
                                      (display "\n")
                                      (BSET/C j7456 k7457 x8765)))))
                                 g8764))))
                            g8763))
                         (begin
                           (write '(funapp 3058 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3059 23))
                           (display "\n")
                           'importer)
                         eliminate-full-rows)))
                     (x8761 (input)))
                    (begin
                      (write '(funapp 3062 21))
                      (display "\n")
                      (x8762 x8761))))
                  (g8517
                   (letrec*
                    ((x8778
                      (begin
                        (write '(funapp 3066 23))
                        (display "\n")
                        ((lambda (j7462 k7463 f7464)
                           (letrec*
                            ((g8779
                              (lambda (g7459 g7460 g7461)
                                (letrec*
                                 ((g8780
                                   (letrec*
                                    ((x8781
                                      (letrec*
                                       ((x8784
                                         (begin
                                           (write '(funapp 3075 46))
                                           (display "\n")
                                           (integer?/c j7462 k7463 g7459)))
                                        (x8783
                                         (begin
                                           (write '(funapp 3076 46))
                                           (display "\n")
                                           (integer?/c j7462 k7463 g7460)))
                                        (x8782
                                         (begin
                                           (write '(funapp 3077 46))
                                           (display "\n")
                                           (TETRA/C j7462 k7463 g7461))))
                                       (begin
                                         (write '(funapp 3078 38))
                                         (display "\n")
                                         (f7464 x8784 x8783 x8782)))))
                                    (begin
                                      (write '(funapp 3079 35))
                                      (display "\n")
                                      (TETRA/C j7462 k7463 x8781)))))
                                 g8780))))
                            g8779))
                         (begin
                           (write '(funapp 3082 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3083 23))
                           (display "\n")
                           'importer)
                         tetra-move)))
                     (x8777 (input))
                     (x8776 (input))
                     (x8767
                      (letrec*
                       ((x8768
                         (letrec*
                          ((x8771
                            (letrec*
                             ((x8772
                               (letrec*
                                ((x8775 (input))
                                 (x8773
                                  (letrec*
                                   ((x8774 (input)))
                                   (begin
                                     (write '(funapp 3099 36))
                                     (display "\n")
                                     (cons
                                      x8774
                                      (begin
                                        (write '(funapp 3099 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3100 33))
                                  (display "\n")
                                  (cons x8775 x8773)))))
                             (begin
                               (write '(funapp 3101 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3101 35))
                                  (display "\n")
                                  'posn)
                                x8772))))
                           (x8769
                            (letrec*
                             ((x8770 (input)))
                             (begin
                               (write '(funapp 3103 56))
                               (display "\n")
                               (cons
                                x8770
                                (begin
                                  (write '(funapp 3103 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3104 27))
                            (display "\n")
                            (cons x8771 x8769)))))
                       (begin
                         (write '(funapp 3105 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3105 29))
                            (display "\n")
                            'tetra)
                          x8768)))))
                    (begin
                      (write '(funapp 3106 21))
                      (display "\n")
                      (x8778 x8777 x8776 x8767))))
                  (g8518
                   (letrec*
                    ((x8794
                      (begin
                        (write '(funapp 3110 23))
                        (display "\n")
                        ((lambda (j7466 k7467 f7468)
                           (letrec*
                            ((g8795
                              (lambda (g7465)
                                (letrec*
                                 ((g8796
                                   (letrec*
                                    ((x8797
                                      (letrec*
                                       ((x8798
                                         (begin
                                           (write '(funapp 3119 46))
                                           (display "\n")
                                           (TETRA/C j7466 k7467 g7465))))
                                       (begin
                                         (write '(funapp 3120 38))
                                         (display "\n")
                                         (f7468 x8798)))))
                                    (begin
                                      (write '(funapp 3121 35))
                                      (display "\n")
                                      (TETRA/C j7466 k7467 x8797)))))
                                 g8796))))
                            g8795))
                         (begin
                           (write '(funapp 3124 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3125 23))
                           (display "\n")
                           'importer)
                         tetra-rotate-ccw)))
                     (x8785
                      (letrec*
                       ((x8786
                         (letrec*
                          ((x8789
                            (letrec*
                             ((x8790
                               (letrec*
                                ((x8793 (input))
                                 (x8791
                                  (letrec*
                                   ((x8792 (input)))
                                   (begin
                                     (write '(funapp 3139 36))
                                     (display "\n")
                                     (cons
                                      x8792
                                      (begin
                                        (write '(funapp 3139 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3140 33))
                                  (display "\n")
                                  (cons x8793 x8791)))))
                             (begin
                               (write '(funapp 3141 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3141 35))
                                  (display "\n")
                                  'posn)
                                x8790))))
                           (x8787
                            (letrec*
                             ((x8788 (input)))
                             (begin
                               (write '(funapp 3143 56))
                               (display "\n")
                               (cons
                                x8788
                                (begin
                                  (write '(funapp 3143 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3144 27))
                            (display "\n")
                            (cons x8789 x8787)))))
                       (begin
                         (write '(funapp 3145 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3145 29))
                            (display "\n")
                            'tetra)
                          x8786)))))
                    (begin
                      (write '(funapp 3146 21))
                      (display "\n")
                      (x8794 x8785))))
                  (g8519
                   (letrec*
                    ((x8808
                      (begin
                        (write '(funapp 3150 23))
                        (display "\n")
                        ((lambda (j7470 k7471 f7472)
                           (letrec*
                            ((g8809
                              (lambda (g7469)
                                (letrec*
                                 ((g8810
                                   (letrec*
                                    ((x8811
                                      (letrec*
                                       ((x8812
                                         (begin
                                           (write '(funapp 3159 46))
                                           (display "\n")
                                           (TETRA/C j7470 k7471 g7469))))
                                       (begin
                                         (write '(funapp 3160 38))
                                         (display "\n")
                                         (f7472 x8812)))))
                                    (begin
                                      (write '(funapp 3161 35))
                                      (display "\n")
                                      (TETRA/C j7470 k7471 x8811)))))
                                 g8810))))
                            g8809))
                         (begin
                           (write '(funapp 3164 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3165 23))
                           (display "\n")
                           'importer)
                         tetra-rotate-cw)))
                     (x8799
                      (letrec*
                       ((x8800
                         (letrec*
                          ((x8803
                            (letrec*
                             ((x8804
                               (letrec*
                                ((x8807 (input))
                                 (x8805
                                  (letrec*
                                   ((x8806 (input)))
                                   (begin
                                     (write '(funapp 3179 36))
                                     (display "\n")
                                     (cons
                                      x8806
                                      (begin
                                        (write '(funapp 3179 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3180 33))
                                  (display "\n")
                                  (cons x8807 x8805)))))
                             (begin
                               (write '(funapp 3181 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3181 35))
                                  (display "\n")
                                  'posn)
                                x8804))))
                           (x8801
                            (letrec*
                             ((x8802 (input)))
                             (begin
                               (write '(funapp 3183 56))
                               (display "\n")
                               (cons
                                x8802
                                (begin
                                  (write '(funapp 3183 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3184 27))
                            (display "\n")
                            (cons x8803 x8801)))))
                       (begin
                         (write '(funapp 3185 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3185 29))
                            (display "\n")
                            'tetra)
                          x8800)))))
                    (begin
                      (write '(funapp 3186 21))
                      (display "\n")
                      (x8808 x8799))))
                  (g8520
                   (letrec*
                    ((x8823
                      (begin
                        (write '(funapp 3190 23))
                        (display "\n")
                        ((lambda (j7475 k7476 f7477)
                           (letrec*
                            ((g8824
                              (lambda (g7473 g7474)
                                (letrec*
                                 ((g8825
                                   (letrec*
                                    ((x8826
                                      (letrec*
                                       ((x8828
                                         (begin
                                           (write '(funapp 3199 46))
                                           (display "\n")
                                           (TETRA/C j7475 k7476 g7473)))
                                        (x8827
                                         (begin
                                           (write '(funapp 3200 46))
                                           (display "\n")
                                           (BSET/C j7475 k7476 g7474))))
                                       (begin
                                         (write '(funapp 3201 38))
                                         (display "\n")
                                         (f7477 x8828 x8827)))))
                                    (begin
                                      (write '(funapp 3202 35))
                                      (display "\n")
                                      (boolean?/c j7475 k7476 x8826)))))
                                 g8825))))
                            g8824))
                         (begin
                           (write '(funapp 3205 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3206 23))
                           (display "\n")
                           'importer)
                         tetra-overlaps-blocks?)))
                     (x8814
                      (letrec*
                       ((x8815
                         (letrec*
                          ((x8818
                            (letrec*
                             ((x8819
                               (letrec*
                                ((x8822 (input))
                                 (x8820
                                  (letrec*
                                   ((x8821 (input)))
                                   (begin
                                     (write '(funapp 3220 36))
                                     (display "\n")
                                     (cons
                                      x8821
                                      (begin
                                        (write '(funapp 3220 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3221 33))
                                  (display "\n")
                                  (cons x8822 x8820)))))
                             (begin
                               (write '(funapp 3222 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3222 35))
                                  (display "\n")
                                  'posn)
                                x8819))))
                           (x8816
                            (letrec*
                             ((x8817 (input)))
                             (begin
                               (write '(funapp 3224 56))
                               (display "\n")
                               (cons
                                x8817
                                (begin
                                  (write '(funapp 3224 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3225 27))
                            (display "\n")
                            (cons x8818 x8816)))))
                       (begin
                         (write '(funapp 3226 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3226 29))
                            (display "\n")
                            'tetra)
                          x8815))))
                     (x8813 (input)))
                    (begin
                      (write '(funapp 3228 21))
                      (display "\n")
                      (x8823 x8814 x8813))))
                  (g8521
                   (letrec*
                    ((x8840
                      (begin
                        (write '(funapp 3232 23))
                        (display "\n")
                        ((lambda (j7489 k7490 f7491)
                           (letrec*
                            ((g8841
                              (lambda (g7478
                                       g7479
                                       g7480
                                       g7481
                                       g7482
                                       g7483
                                       g7484
                                       g7485
                                       g7486
                                       g7487
                                       g7488)
                                (letrec*
                                 ((g8842
                                   (letrec*
                                    ((x8843
                                      (letrec*
                                       ((x8854
                                         (begin
                                           (write '(funapp 3251 46))
                                           (display "\n")
                                           (COLOR/C j7489 k7490 g7478)))
                                        (x8853
                                         (begin
                                           (write '(funapp 3252 46))
                                           (display "\n")
                                           (real?/c j7489 k7490 g7479)))
                                        (x8852
                                         (begin
                                           (write '(funapp 3253 46))
                                           (display "\n")
                                           (real?/c j7489 k7490 g7480)))
                                        (x8851
                                         (begin
                                           (write '(funapp 3254 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7481)))
                                        (x8850
                                         (begin
                                           (write '(funapp 3255 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7482)))
                                        (x8849
                                         (begin
                                           (write '(funapp 3256 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7483)))
                                        (x8848
                                         (begin
                                           (write '(funapp 3257 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7484)))
                                        (x8847
                                         (begin
                                           (write '(funapp 3258 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7485)))
                                        (x8846
                                         (begin
                                           (write '(funapp 3259 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7486)))
                                        (x8845
                                         (begin
                                           (write '(funapp 3260 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7487)))
                                        (x8844
                                         (begin
                                           (write '(funapp 3261 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7488))))
                                       (begin
                                         (write '(funapp 3262 38))
                                         (display "\n")
                                         (f7491
                                          x8854
                                          x8853
                                          x8852
                                          x8851
                                          x8850
                                          x8849
                                          x8848
                                          x8847
                                          x8846
                                          x8845
                                          x8844)))))
                                    (begin
                                      (write '(funapp 3274 35))
                                      (display "\n")
                                      (TETRA/C j7489 k7490 x8843)))))
                                 g8842))))
                            g8841))
                         (begin
                           (write '(funapp 3277 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3278 23))
                           (display "\n")
                           'importer)
                         build-tetra-blocks)))
                     (x8839 (input))
                     (x8838 (input))
                     (x8837 (input))
                     (x8836 (input))
                     (x8835 (input))
                     (x8834 (input))
                     (x8833 (input))
                     (x8832 (input))
                     (x8831 (input))
                     (x8830 (input))
                     (x8829 (input)))
                    (begin
                      (write '(funapp 3291 21))
                      (display "\n")
                      (x8840
                       x8839
                       x8838
                       x8837
                       x8836
                       x8835
                       x8834
                       x8833
                       x8832
                       x8831
                       x8830
                       x8829))))
                  (g8522
                   (letrec*
                    ((x8865
                      (begin
                        (write '(funapp 3306 23))
                        (display "\n")
                        ((lambda (j7494 k7495 f7496)
                           (letrec*
                            ((g8866
                              (lambda (g7492 g7493)
                                (letrec*
                                 ((g8867
                                   (letrec*
                                    ((x8868
                                      (letrec*
                                       ((x8870
                                         (begin
                                           (write '(funapp 3315 46))
                                           (display "\n")
                                           (TETRA/C j7494 k7495 g7492)))
                                        (x8869
                                         (begin
                                           (write '(funapp 3316 46))
                                           (display "\n")
                                           (COLOR/C j7494 k7495 g7493))))
                                       (begin
                                         (write '(funapp 3317 38))
                                         (display "\n")
                                         (f7496 x8870 x8869)))))
                                    (begin
                                      (write '(funapp 3318 35))
                                      (display "\n")
                                      (TETRA/C j7494 k7495 x8868)))))
                                 g8867))))
                            g8866))
                         (begin
                           (write '(funapp 3321 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3322 23))
                           (display "\n")
                           'importer)
                         tetra-change-color)))
                     (x8856
                      (letrec*
                       ((x8857
                         (letrec*
                          ((x8860
                            (letrec*
                             ((x8861
                               (letrec*
                                ((x8864 (input))
                                 (x8862
                                  (letrec*
                                   ((x8863 (input)))
                                   (begin
                                     (write '(funapp 3336 36))
                                     (display "\n")
                                     (cons
                                      x8863
                                      (begin
                                        (write '(funapp 3336 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3337 33))
                                  (display "\n")
                                  (cons x8864 x8862)))))
                             (begin
                               (write '(funapp 3338 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3338 35))
                                  (display "\n")
                                  'posn)
                                x8861))))
                           (x8858
                            (letrec*
                             ((x8859 (input)))
                             (begin
                               (write '(funapp 3340 56))
                               (display "\n")
                               (cons
                                x8859
                                (begin
                                  (write '(funapp 3340 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3341 27))
                            (display "\n")
                            (cons x8860 x8858)))))
                       (begin
                         (write '(funapp 3342 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3342 29))
                            (display "\n")
                            'tetra)
                          x8857))))
                     (x8855 (input)))
                    (begin
                      (write '(funapp 3344 21))
                      (display "\n")
                      (x8865 x8856 x8855))))
                  (g8523
                   (letrec*
                    ((x8885
                      (begin
                        (write '(funapp 3348 23))
                        (display "\n")
                        ((lambda (j7499 k7500 f7501)
                           (letrec*
                            ((g8886
                              (lambda (g7497 g7498)
                                (letrec*
                                 ((g8887
                                   (letrec*
                                    ((x8888
                                      (letrec*
                                       ((x8890
                                         (begin
                                           (write '(funapp 3357 46))
                                           (display "\n")
                                           (WORLD/C j7499 k7500 g7497)))
                                        (x8889
                                         (begin
                                           (write '(funapp 3358 46))
                                           (display "\n")
                                           (string?/c j7499 k7500 g7498))))
                                       (begin
                                         (write '(funapp 3359 38))
                                         (display "\n")
                                         (f7501 x8890 x8889)))))
                                    (begin
                                      (write '(funapp 3360 35))
                                      (display "\n")
                                      (WORLD/C j7499 k7500 x8888)))))
                                 g8887))))
                            g8886))
                         (begin
                           (write '(funapp 3363 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3364 23))
                           (display "\n")
                           'importer)
                         world-key-move)))
                     (x8872
                      (letrec*
                       ((x8873
                         (letrec*
                          ((x8876
                            (letrec*
                             ((x8877
                               (letrec*
                                ((x8880
                                  (letrec*
                                   ((x8881
                                     (letrec*
                                      ((x8884 (input))
                                       (x8882
                                        (letrec*
                                         ((x8883 (input)))
                                         (begin
                                           (write '(funapp 3382 42))
                                           (display "\n")
                                           (cons
                                            x8883
                                            (begin
                                              (write '(funapp 3382 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3383 39))
                                        (display "\n")
                                        (cons x8884 x8882)))))
                                   (begin
                                     (write '(funapp 3384 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3384 41))
                                        (display "\n")
                                        'posn)
                                      x8881))))
                                 (x8878
                                  (letrec*
                                   ((x8879 (input)))
                                   (begin
                                     (write '(funapp 3388 36))
                                     (display "\n")
                                     (cons
                                      x8879
                                      (begin
                                        (write '(funapp 3388 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3389 33))
                                  (display "\n")
                                  (cons x8880 x8878)))))
                             (begin
                               (write '(funapp 3390 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3390 35))
                                  (display "\n")
                                  'tetra)
                                x8877))))
                           (x8874
                            (letrec*
                             ((x8875 (input)))
                             (begin
                               (write '(funapp 3392 56))
                               (display "\n")
                               (cons
                                x8875
                                (begin
                                  (write '(funapp 3392 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3393 27))
                            (display "\n")
                            (cons x8876 x8874)))))
                       (begin
                         (write '(funapp 3394 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3394 29))
                            (display "\n")
                            'world)
                          x8873))))
                     (x8871 (input)))
                    (begin
                      (write '(funapp 3396 21))
                      (display "\n")
                      (x8885 x8872 x8871))))
                  (g8524
                   (letrec*
                    ((x8905
                      (begin
                        (write '(funapp 3400 23))
                        (display "\n")
                        ((lambda (j7504 k7505 f7506)
                           (letrec*
                            ((g8906
                              (lambda (g7502 g7503)
                                (letrec*
                                 ((g8907
                                   (letrec*
                                    ((x8908
                                      (letrec*
                                       ((x8912
                                         (begin
                                           (write '(funapp 3409 46))
                                           (display "\n")
                                           (WORLD/C j7504 k7505 g7502)))
                                        (x8909
                                         (letrec*
                                          ((x8910
                                            (letrec*
                                             ((x8911
                                               (begin
                                                 (write '(funapp 3414 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3415 44))
                                               (display "\n")
                                               (and/c cons?/c x8911)))))
                                          (begin
                                            (write '(funapp 3416 41))
                                            (display "\n")
                                            (x8910 j7504 k7505 g7503)))))
                                       (begin
                                         (write '(funapp 3417 38))
                                         (display "\n")
                                         (f7506 x8912 x8909)))))
                                    (begin
                                      (write '(funapp 3418 35))
                                      (display "\n")
                                      (WORLD/C j7504 k7505 x8908)))))
                                 g8907))))
                            g8906))
                         (begin
                           (write '(funapp 3421 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3422 23))
                           (display "\n")
                           'importer)
                         next-world)))
                     (x8892
                      (letrec*
                       ((x8893
                         (letrec*
                          ((x8896
                            (letrec*
                             ((x8897
                               (letrec*
                                ((x8900
                                  (letrec*
                                   ((x8901
                                     (letrec*
                                      ((x8904 (input))
                                       (x8902
                                        (letrec*
                                         ((x8903 (input)))
                                         (begin
                                           (write '(funapp 3440 42))
                                           (display "\n")
                                           (cons
                                            x8903
                                            (begin
                                              (write '(funapp 3440 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3441 39))
                                        (display "\n")
                                        (cons x8904 x8902)))))
                                   (begin
                                     (write '(funapp 3442 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3442 41))
                                        (display "\n")
                                        'posn)
                                      x8901))))
                                 (x8898
                                  (letrec*
                                   ((x8899 (input)))
                                   (begin
                                     (write '(funapp 3446 36))
                                     (display "\n")
                                     (cons
                                      x8899
                                      (begin
                                        (write '(funapp 3446 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3447 33))
                                  (display "\n")
                                  (cons x8900 x8898)))))
                             (begin
                               (write '(funapp 3448 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3448 35))
                                  (display "\n")
                                  'tetra)
                                x8897))))
                           (x8894
                            (letrec*
                             ((x8895 (input)))
                             (begin
                               (write '(funapp 3450 56))
                               (display "\n")
                               (cons
                                x8895
                                (begin
                                  (write '(funapp 3450 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3451 27))
                            (display "\n")
                            (cons x8896 x8894)))))
                       (begin
                         (write '(funapp 3452 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3452 29))
                            (display "\n")
                            'world)
                          x8893))))
                     (x8891 (input)))
                    (begin
                      (write '(funapp 3454 21))
                      (display "\n")
                      (x8905 x8892 x8891))))
                  (g8525
                   (letrec*
                    ((x8926
                      (begin
                        (write '(funapp 3458 23))
                        (display "\n")
                        ((lambda (j7508 k7509 f7510)
                           (letrec*
                            ((g8927
                              (lambda (g7507)
                                (letrec*
                                 ((g8928
                                   (letrec*
                                    ((x8929
                                      (letrec*
                                       ((x8930
                                         (begin
                                           (write '(funapp 3467 46))
                                           (display "\n")
                                           (WORLD/C j7508 k7509 g7507))))
                                       (begin
                                         (write '(funapp 3468 38))
                                         (display "\n")
                                         (f7510 x8930)))))
                                    (begin
                                      (write '(funapp 3469 35))
                                      (display "\n")
                                      (BSET/C j7508 k7509 x8929)))))
                                 g8928))))
                            g8927))
                         (begin
                           (write '(funapp 3472 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3473 23))
                           (display "\n")
                           'importer)
                         ghost-blocks)))
                     (x8913
                      (letrec*
                       ((x8914
                         (letrec*
                          ((x8917
                            (letrec*
                             ((x8918
                               (letrec*
                                ((x8921
                                  (letrec*
                                   ((x8922
                                     (letrec*
                                      ((x8925 (input))
                                       (x8923
                                        (letrec*
                                         ((x8924 (input)))
                                         (begin
                                           (write '(funapp 3491 42))
                                           (display "\n")
                                           (cons
                                            x8924
                                            (begin
                                              (write '(funapp 3491 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3492 39))
                                        (display "\n")
                                        (cons x8925 x8923)))))
                                   (begin
                                     (write '(funapp 3493 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3493 41))
                                        (display "\n")
                                        'posn)
                                      x8922))))
                                 (x8919
                                  (letrec*
                                   ((x8920 (input)))
                                   (begin
                                     (write '(funapp 3497 36))
                                     (display "\n")
                                     (cons
                                      x8920
                                      (begin
                                        (write '(funapp 3497 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3498 33))
                                  (display "\n")
                                  (cons x8921 x8919)))))
                             (begin
                               (write '(funapp 3499 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3499 35))
                                  (display "\n")
                                  'tetra)
                                x8918))))
                           (x8915
                            (letrec*
                             ((x8916 (input)))
                             (begin
                               (write '(funapp 3501 56))
                               (display "\n")
                               (cons
                                x8916
                                (begin
                                  (write '(funapp 3501 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3502 27))
                            (display "\n")
                            (cons x8917 x8915)))))
                       (begin
                         (write '(funapp 3503 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3503 29))
                            (display "\n")
                            'world)
                          x8914)))))
                    (begin
                      (write '(funapp 3504 21))
                      (display "\n")
                      (x8926 x8913))))
                  (g8526
                   (letrec*
                    ((x8932
                      (begin
                        (write '(funapp 3508 23))
                        (display "\n")
                        ((lambda (j7512 k7513 f7514)
                           (letrec*
                            ((g8933
                              (lambda (g7511)
                                (letrec*
                                 ((g8934
                                   (letrec*
                                    ((x8935
                                      (letrec*
                                       ((x8936
                                         (begin
                                           (write '(funapp 3517 46))
                                           (display "\n")
                                           (any/c j7512 k7513 g7511))))
                                       (begin
                                         (write '(funapp 3518 38))
                                         (display "\n")
                                         (f7514 x8936)))))
                                    (begin
                                      (write '(funapp 3519 35))
                                      (display "\n")
                                      (boolean?/c j7512 k7513 x8935)))))
                                 g8934))))
                            g8933))
                         (begin
                           (write '(funapp 3522 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3523 23))
                           (display "\n")
                           'importer)
                         image?)))
                     (x8931 (input)))
                    (begin
                      (write '(funapp 3526 21))
                      (display "\n")
                      (x8932 x8931))))
                  (g8527
                   (letrec*
                    ((x8939
                      (begin
                        (write '(funapp 3530 23))
                        (display "\n")
                        ((lambda (j7517 k7518 f7519)
                           (letrec*
                            ((g8940
                              (lambda (g7515 g7516)
                                (letrec*
                                 ((g8941
                                   (letrec*
                                    ((x8942
                                      (letrec*
                                       ((x8944
                                         (begin
                                           (write '(funapp 3539 46))
                                           (display "\n")
                                           (image? j7517 k7518 g7515)))
                                        (x8943
                                         (begin
                                           (write '(funapp 3540 46))
                                           (display "\n")
                                           (image? j7517 k7518 g7516))))
                                       (begin
                                         (write '(funapp 3541 38))
                                         (display "\n")
                                         (f7519 x8944 x8943)))))
                                    (begin
                                      (write '(funapp 3542 35))
                                      (display "\n")
                                      (image? j7517 k7518 x8942)))))
                                 g8941))))
                            g8940))
                         (begin
                           (write '(funapp 3545 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3546 23))
                           (display "\n")
                           'importer)
                         overlay)))
                     (x8938 (input))
                     (x8937 (input)))
                    (begin
                      (write '(funapp 3550 21))
                      (display "\n")
                      (x8939 x8938 x8937))))
                  (g8528
                   (letrec*
                    ((x8948
                      (begin
                        (write '(funapp 3554 23))
                        (display "\n")
                        ((lambda (j7523 k7524 f7525)
                           (letrec*
                            ((g8949
                              (lambda (g7520 g7521 g7522)
                                (letrec*
                                 ((g8950
                                   (letrec*
                                    ((x8951
                                      (letrec*
                                       ((x8954
                                         (begin
                                           (write '(funapp 3563 46))
                                           (display "\n")
                                           (real?/c j7523 k7524 g7520)))
                                        (x8953
                                         (begin
                                           (write '(funapp 3564 46))
                                           (display "\n")
                                           (real?/c j7523 k7524 g7521)))
                                        (x8952
                                         (begin
                                           (write '(funapp 3565 46))
                                           (display "\n")
                                           (string?/c j7523 k7524 g7522))))
                                       (begin
                                         (write '(funapp 3566 38))
                                         (display "\n")
                                         (f7525 x8954 x8953 x8952)))))
                                    (begin
                                      (write '(funapp 3567 35))
                                      (display "\n")
                                      (image? j7523 k7524 x8951)))))
                                 g8950))))
                            g8949))
                         (begin
                           (write '(funapp 3570 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3571 23))
                           (display "\n")
                           'importer)
                         circle)))
                     (x8947 (input))
                     (x8946 (input))
                     (x8945 (input)))
                    (begin
                      (write '(funapp 3576 21))
                      (display "\n")
                      (x8948 x8947 x8946 x8945))))
                  (g8529
                   (letrec*
                    ((x8959
                      (begin
                        (write '(funapp 3580 23))
                        (display "\n")
                        ((lambda (j7530 k7531 f7532)
                           (letrec*
                            ((g8960
                              (lambda (g7526 g7527 g7528 g7529)
                                (letrec*
                                 ((g8961
                                   (letrec*
                                    ((x8962
                                      (letrec*
                                       ((x8966
                                         (begin
                                           (write '(funapp 3589 46))
                                           (display "\n")
                                           (real?/c j7530 k7531 g7526)))
                                        (x8965
                                         (begin
                                           (write '(funapp 3590 46))
                                           (display "\n")
                                           (real?/c j7530 k7531 g7527)))
                                        (x8964
                                         (begin
                                           (write '(funapp 3591 46))
                                           (display "\n")
                                           (COLOR/C j7530 k7531 g7528)))
                                        (x8963
                                         (begin
                                           (write '(funapp 3592 46))
                                           (display "\n")
                                           (COLOR/C j7530 k7531 g7529))))
                                       (begin
                                         (write '(funapp 3593 38))
                                         (display "\n")
                                         (f7532 x8966 x8965 x8964 x8963)))))
                                    (begin
                                      (write '(funapp 3594 35))
                                      (display "\n")
                                      (image? j7530 k7531 x8962)))))
                                 g8961))))
                            g8960))
                         (begin
                           (write '(funapp 3597 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3598 23))
                           (display "\n")
                           'importer)
                         rectangle)))
                     (x8958 (input))
                     (x8957 (input))
                     (x8956 (input))
                     (x8955 (input)))
                    (begin
                      (write '(funapp 3604 21))
                      (display "\n")
                      (x8959 x8958 x8957 x8956 x8955))))
                  (g8530
                   (letrec*
                    ((x8971
                      (begin
                        (write '(funapp 3608 23))
                        (display "\n")
                        ((lambda (j7537 k7538 f7539)
                           (letrec*
                            ((g8972
                              (lambda (g7533 g7534 g7535 g7536)
                                (letrec*
                                 ((g8973
                                   (letrec*
                                    ((x8974
                                      (letrec*
                                       ((x8978
                                         (begin
                                           (write '(funapp 3617 46))
                                           (display "\n")
                                           (image/c j7537 k7538 g7533)))
                                        (x8977
                                         (begin
                                           (write '(funapp 3618 46))
                                           (display "\n")
                                           (real?/c j7537 k7538 g7534)))
                                        (x8976
                                         (begin
                                           (write '(funapp 3619 46))
                                           (display "\n")
                                           (real?/c j7537 k7538 g7535)))
                                        (x8975
                                         (begin
                                           (write '(funapp 3620 46))
                                           (display "\n")
                                           (image/c j7537 k7538 g7536))))
                                       (begin
                                         (write '(funapp 3621 38))
                                         (display "\n")
                                         (f7539 x8978 x8977 x8976 x8975)))))
                                    (begin
                                      (write '(funapp 3622 35))
                                      (display "\n")
                                      (image/c j7537 k7538 x8974)))))
                                 g8973))))
                            g8972))
                         (begin
                           (write '(funapp 3625 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3626 23))
                           (display "\n")
                           'importer)
                         place-image)))
                     (x8970 (input))
                     (x8969 (input))
                     (x8968 (input))
                     (x8967 (input)))
                    (begin
                      (write '(funapp 3632 21))
                      (display "\n")
                      (x8971 x8970 x8969 x8968 x8967))))
                  (g8531
                   (letrec*
                    ((x8981
                      (begin
                        (write '(funapp 3636 23))
                        (display "\n")
                        ((lambda (j7542 k7543 f7544)
                           (letrec*
                            ((g8982
                              (lambda (g7540 g7541)
                                (letrec*
                                 ((g8983
                                   (letrec*
                                    ((x8984
                                      (letrec*
                                       ((x8986
                                         (begin
                                           (write '(funapp 3645 46))
                                           (display "\n")
                                           (real?/c j7542 k7543 g7540)))
                                        (x8985
                                         (begin
                                           (write '(funapp 3646 46))
                                           (display "\n")
                                           (real?/c j7542 k7543 g7541))))
                                       (begin
                                         (write '(funapp 3647 38))
                                         (display "\n")
                                         (f7544 x8986 x8985)))))
                                    (begin
                                      (write '(funapp 3648 35))
                                      (display "\n")
                                      (image? j7542 k7543 x8984)))))
                                 g8983))))
                            g8982))
                         (begin
                           (write '(funapp 3651 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3652 23))
                           (display "\n")
                           'importer)
                         empty-scene)))
                     (x8980 (input))
                     (x8979 (input)))
                    (begin
                      (write '(funapp 3656 21))
                      (display "\n")
                      (x8981 x8980 x8979))))
                  (g8532
                   (letrec*
                    ((x8988
                      (begin
                        (write '(funapp 3660 23))
                        (display "\n")
                        ((lambda (j7546 k7547 f7548)
                           (letrec*
                            ((g8989
                              (lambda (g7545)
                                (letrec*
                                 ((g8990
                                   (letrec*
                                    ((x8991
                                      (letrec*
                                       ((x8992
                                         (letrec*
                                          ((x8993
                                            (letrec*
                                             ((x8994
                                               (begin
                                                 (write '(funapp 3673 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3674 44))
                                               (display "\n")
                                               (and/c cons?/c x8994)))))
                                          (begin
                                            (write '(funapp 3675 41))
                                            (display "\n")
                                            (x8993 j7546 k7547 g7545)))))
                                       (begin
                                         (write '(funapp 3676 38))
                                         (display "\n")
                                         (f7548 x8992)))))
                                    (begin
                                      (write '(funapp 3677 35))
                                      (display "\n")
                                      (TETRA/C j7546 k7547 x8991)))))
                                 g8990))))
                            g8989))
                         (begin
                           (write '(funapp 3680 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3681 23))
                           (display "\n")
                           'importer)
                         list-pick-random)))
                     (x8987 (input)))
                    (begin
                      (write '(funapp 3684 21))
                      (display "\n")
                      (x8988 x8987))))
                  (g8533
                   (begin
                     (write '(funapp 3685 26))
                     (display "\n")
                     (integer?/c
                      (begin (write '(funapp 3685 37)) (display "\n") 'module)
                      (begin
                        (write '(funapp 3685 45))
                        (display "\n")
                        'importer)
                      neg-1)))
                  (g8534
                   (letrec*
                    ((x9008
                      (begin
                        (write '(funapp 3689 23))
                        (display "\n")
                        ((lambda (j7550 k7551 f7552)
                           (letrec*
                            ((g9009
                              (lambda (g7549)
                                (letrec*
                                 ((g9010
                                   (letrec*
                                    ((x9011
                                      (letrec*
                                       ((x9012
                                         (begin
                                           (write '(funapp 3698 46))
                                           (display "\n")
                                           (WORLD/C j7550 k7551 g7549))))
                                       (begin
                                         (write '(funapp 3699 38))
                                         (display "\n")
                                         (f7552 x9012)))))
                                    (begin
                                      (write '(funapp 3700 35))
                                      (display "\n")
                                      (image/c j7550 k7551 x9011)))))
                                 g9010))))
                            g9009))
                         (begin
                           (write '(funapp 3703 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3704 23))
                           (display "\n")
                           'importer)
                         world->image)))
                     (x8995
                      (letrec*
                       ((x8996
                         (letrec*
                          ((x8999
                            (letrec*
                             ((x9000
                               (letrec*
                                ((x9003
                                  (letrec*
                                   ((x9004
                                     (letrec*
                                      ((x9007 (input))
                                       (x9005
                                        (letrec*
                                         ((x9006 (input)))
                                         (begin
                                           (write '(funapp 3722 42))
                                           (display "\n")
                                           (cons
                                            x9006
                                            (begin
                                              (write '(funapp 3722 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3723 39))
                                        (display "\n")
                                        (cons x9007 x9005)))))
                                   (begin
                                     (write '(funapp 3724 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3724 41))
                                        (display "\n")
                                        'posn)
                                      x9004))))
                                 (x9001
                                  (letrec*
                                   ((x9002 (input)))
                                   (begin
                                     (write '(funapp 3728 36))
                                     (display "\n")
                                     (cons
                                      x9002
                                      (begin
                                        (write '(funapp 3728 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3729 33))
                                  (display "\n")
                                  (cons x9003 x9001)))))
                             (begin
                               (write '(funapp 3730 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3730 35))
                                  (display "\n")
                                  'tetra)
                                x9000))))
                           (x8997
                            (letrec*
                             ((x8998 (input)))
                             (begin
                               (write '(funapp 3732 56))
                               (display "\n")
                               (cons
                                x8998
                                (begin
                                  (write '(funapp 3732 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3733 27))
                            (display "\n")
                            (cons x8999 x8997)))))
                       (begin
                         (write '(funapp 3734 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3734 29))
                            (display "\n")
                            'world)
                          x8996)))))
                    (begin
                      (write '(funapp 3735 21))
                      (display "\n")
                      (x9008 x8995))))
                  (g8535
                   (letrec*
                    ((x9014
                      (begin
                        (write '(funapp 3739 23))
                        (display "\n")
                        ((lambda (j7554 k7555 f7556)
                           (letrec*
                            ((g9015
                              (lambda (g7553)
                                (letrec*
                                 ((g9016
                                   (letrec*
                                    ((x9017
                                      (letrec*
                                       ((x9018
                                         (begin
                                           (write '(funapp 3748 46))
                                           (display "\n")
                                           (BSET/C j7554 k7555 g7553))))
                                       (begin
                                         (write '(funapp 3749 38))
                                         (display "\n")
                                         (f7556 x9018)))))
                                    (begin
                                      (write '(funapp 3750 35))
                                      (display "\n")
                                      (image/c j7554 k7555 x9017)))))
                                 g9016))))
                            g9015))
                         (begin
                           (write '(funapp 3753 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3754 23))
                           (display "\n")
                           'importer)
                         blocks->image)))
                     (x9013 (input)))
                    (begin
                      (write '(funapp 3757 21))
                      (display "\n")
                      (x9014 x9013))))
                  (g8536
                   (letrec*
                    ((x9026
                      (begin
                        (write '(funapp 3761 23))
                        (display "\n")
                        ((lambda (j7558 k7559 f7560)
                           (letrec*
                            ((g9027
                              (lambda (g7557)
                                (letrec*
                                 ((g9028
                                   (letrec*
                                    ((x9029
                                      (letrec*
                                       ((x9030
                                         (begin
                                           (write '(funapp 3770 46))
                                           (display "\n")
                                           (BLOCK/C j7558 k7559 g7557))))
                                       (begin
                                         (write '(funapp 3771 38))
                                         (display "\n")
                                         (f7560 x9030)))))
                                    (begin
                                      (write '(funapp 3772 35))
                                      (display "\n")
                                      (image/c j7558 k7559 x9029)))))
                                 g9028))))
                            g9027))
                         (begin
                           (write '(funapp 3775 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3776 23))
                           (display "\n")
                           'importer)
                         block->image)))
                     (x9019
                      (letrec*
                       ((x9020
                         (letrec*
                          ((x9025 (input))
                           (x9021
                            (letrec*
                             ((x9024 (input))
                              (x9022
                               (letrec*
                                ((x9023 (input)))
                                (begin
                                  (write '(funapp 3787 59))
                                  (display "\n")
                                  (cons
                                   x9023
                                   (begin
                                     (write '(funapp 3787 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 3788 30))
                               (display "\n")
                               (cons x9024 x9022)))))
                          (begin
                            (write '(funapp 3789 27))
                            (display "\n")
                            (cons x9025 x9021)))))
                       (begin
                         (write '(funapp 3790 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3790 29))
                            (display "\n")
                            'block)
                          x9020)))))
                    (begin
                      (write '(funapp 3791 21))
                      (display "\n")
                      (x9026 x9019))))
                  (g8537
                   (letrec*
                    ((x9039
                      (begin
                        (write '(funapp 3795 23))
                        (display "\n")
                        ((lambda (j7563 k7564 f7565)
                           (letrec*
                            ((g9040
                              (lambda (g7561 g7562)
                                (letrec*
                                 ((g9041
                                   (letrec*
                                    ((x9042
                                      (letrec*
                                       ((x9044
                                         (begin
                                           (write '(funapp 3804 46))
                                           (display "\n")
                                           (BLOCK/C j7563 k7564 g7561)))
                                        (x9043
                                         (begin
                                           (write '(funapp 3805 46))
                                           (display "\n")
                                           (image/c j7563 k7564 g7562))))
                                       (begin
                                         (write '(funapp 3806 38))
                                         (display "\n")
                                         (f7565 x9044 x9043)))))
                                    (begin
                                      (write '(funapp 3807 35))
                                      (display "\n")
                                      (image/c j7563 k7564 x9042)))))
                                 g9041))))
                            g9040))
                         (begin
                           (write '(funapp 3810 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3811 23))
                           (display "\n")
                           'importer)
                         place-block)))
                     (x9032
                      (letrec*
                       ((x9033
                         (letrec*
                          ((x9038 (input))
                           (x9034
                            (letrec*
                             ((x9037 (input))
                              (x9035
                               (letrec*
                                ((x9036 (input)))
                                (begin
                                  (write '(funapp 3822 59))
                                  (display "\n")
                                  (cons
                                   x9036
                                   (begin
                                     (write '(funapp 3822 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 3823 30))
                               (display "\n")
                               (cons x9037 x9035)))))
                          (begin
                            (write '(funapp 3824 27))
                            (display "\n")
                            (cons x9038 x9034)))))
                       (begin
                         (write '(funapp 3825 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3825 29))
                            (display "\n")
                            'block)
                          x9033))))
                     (x9031 (input)))
                    (begin
                      (write '(funapp 3827 21))
                      (display "\n")
                      (x9039 x9032 x9031))))
                  (g8538
                   (letrec*
                    ((x9046
                      (begin
                        (write '(funapp 3831 23))
                        (display "\n")
                        ((lambda (j7567 k7568 f7569)
                           (letrec*
                            ((g9047
                              (lambda (g7566)
                                (letrec*
                                 ((g9048
                                   (letrec*
                                    ((x9049
                                      (letrec*
                                       ((x9050
                                         (letrec*
                                          ((x9051
                                            (letrec*
                                             ((x9052
                                               (begin
                                                 (write '(funapp 3844 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3845 44))
                                               (display "\n")
                                               (and/c cons?/c x9052)))))
                                          (begin
                                            (write '(funapp 3846 41))
                                            (display "\n")
                                            (x9051 j7567 k7568 g7566)))))
                                       (begin
                                         (write '(funapp 3847 38))
                                         (display "\n")
                                         (f7569 x9050)))))
                                    (begin
                                      (write '(funapp 3848 35))
                                      (display "\n")
                                      (WORLD/C j7567 k7568 x9049)))))
                                 g9048))))
                            g9047))
                         (begin
                           (write '(funapp 3851 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3852 23))
                           (display "\n")
                           'importer)
                         world0)))
                     (x9045 (input)))
                    (begin
                      (write '(funapp 3855 21))
                      (display "\n")
                      (x9046 x9045)))))
                 g8538))))
             g7606))))
         g7604)))
      g7603))))
