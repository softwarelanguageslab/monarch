(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7594 #t)) g7594)))
    (meta (lambda (v) (letrec* ((g7595 v)) g7595)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7596
          (letrec*
           ((g7597
             (letrec*
              ((x-e7598 lst))
              (letrec*
               ((v1742 x-e7598))
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
                   ((x-cnd7599
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7599
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
           g7597)))
        g7596)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7600 (lambda (v) (letrec* ((g7601 v)) g7601)))) g7600)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7602
          (letrec*
           ((x7603 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7603)))))
        g7602))))
   (letrec*
    ((g7604
      (letrec*
       ((g7605
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
           ((g7606 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7607
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7608
                     (lambda (k j lst)
                       (letrec*
                        ((g7609
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7610
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7610))
                             lst))))
                        g7609))))
                   g7608)))
               (real?/c
                (lambda (g7260 g7261 g7262)
                  (letrec*
                   ((g7611
                     (letrec*
                      ((x-cnd7612
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7262))))
                      (if x-cnd7612
                        g7262
                        (begin
                          (write '(blame g7260 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7260)))))))
                   g7611)))
               (boolean?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7613
                     (letrec*
                      ((x-cnd7614
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7265))))
                      (if x-cnd7614
                        g7265
                        (begin
                          (write '(blame g7263 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7613)))
               (number?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7615
                     (letrec*
                      ((x-cnd7616
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7268))))
                      (if x-cnd7616
                        g7268
                        (begin
                          (write '(blame g7266 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7615)))
               (any/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7617
                     (letrec*
                      ((x-cnd7618
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7619 #t)) g7619)) g7271))))
                      (if x-cnd7618
                        g7271
                        (begin
                          (write '(blame g7269 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7617)))
               (any?/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x-cnd7621
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7622 #t)) g7622)) g7274))))
                      (if x-cnd7621
                        g7274
                        (begin
                          (write '(blame g7272 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7620)))
               (cons?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x-cnd7624
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7277))))
                      (if x-cnd7624
                        g7277
                        (begin
                          (write '(blame g7275 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7623)))
               (pair?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7625
                     (letrec*
                      ((x-cnd7626
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7626
                        g7280
                        (begin
                          (write '(blame g7278 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7625)))
               (integer?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7627
                     (letrec*
                      ((x-cnd7628
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7283))))
                      (if x-cnd7628
                        g7283
                        (begin
                          (write '(blame g7281 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7627)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7629
                     (lambda (k j v)
                       (letrec*
                        ((g7630
                          (letrec*
                           ((x-cnd7631
                             (begin
                               (write '(funapp 144 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7631
                             (begin
                               (write '(funapp 145 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7630))))
                   g7629)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7632
                     (lambda (k j v)
                       (letrec*
                        ((g7633
                          (letrec*
                           ((x-cnd7634
                             (begin
                               (write '(funapp 156 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7634
                             (begin
                               (write '(funapp 158 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7638
                                (letrec*
                                 ((x7639
                                   (begin
                                     (write '(funapp 162 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 163 34))
                                   (display "\n")
                                   (contract k j x7639))))
                               (x7635
                                (letrec*
                                 ((x7637
                                   (begin
                                     (write '(funapp 166 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7636
                                   (begin
                                     (write '(funapp 166 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 167 34))
                                   (display "\n")
                                   (x7637 k j x7636)))))
                              (begin
                                (write '(funapp 168 31))
                                (display "\n")
                                (orig-cons x7638 x7635)))))))
                        g7633))))
                   g7632)))
               (any? (lambda (v) (letrec* ((g7640 #t)) g7640)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7641
                     (letrec*
                      ((x7642
                        (begin
                          (write '(funapp 175 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 175 55))
                        (display "\n")
                        (not x7642)))))
                   g7641)))
               (nonzero?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7643
                     (letrec*
                      ((x-cnd7644
                        (begin
                          (write '(funapp 183 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7645
                                (letrec*
                                 ((x7646
                                   (begin
                                     (write '(funapp 185 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 185 64))
                                   (display "\n")
                                   (not x7646)))))
                              g7645))
                           g7286))))
                      (if x-cnd7644
                        g7286
                        (begin
                          (write '(blame g7284 190 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7643)))
               (meta (lambda (v) (letrec* ((g7647 v)) g7647)))
               (+
                (begin
                  (write '(funapp 194 17))
                  (display "\n")
                  ((lambda (j7289 k7290 f7291)
                     (letrec*
                      ((g7649
                        (lambda (g7287 g7288)
                          (letrec*
                           ((g7650
                             (letrec*
                              ((x7651
                                (letrec*
                                 ((x7653
                                   (begin
                                     (write '(funapp 203 40))
                                     (display "\n")
                                     (number?/c j7289 k7290 g7287)))
                                  (x7652
                                   (begin
                                     (write '(funapp 204 40))
                                     (display "\n")
                                     (number?/c j7289 k7290 g7288))))
                                 (begin
                                   (write '(funapp 205 32))
                                   (display "\n")
                                   (f7291 x7653 x7652)))))
                              (begin
                                (write '(funapp 206 29))
                                (display "\n")
                                (number?/c j7289 k7290 x7651)))))
                           g7650))))
                      g7649))
                   (begin (write '(funapp 209 17)) (display "\n") 'server)
                   (begin (write '(funapp 210 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7648
                        (begin
                          (write '(funapp 211 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7648)))))
               (-
                (begin
                  (write '(funapp 213 17))
                  (display "\n")
                  ((lambda (j7294 k7295 f7296)
                     (letrec*
                      ((g7655
                        (lambda (g7292 g7293)
                          (letrec*
                           ((g7656
                             (letrec*
                              ((x7657
                                (letrec*
                                 ((x7659
                                   (begin
                                     (write '(funapp 222 40))
                                     (display "\n")
                                     (number?/c j7294 k7295 g7292)))
                                  (x7658
                                   (begin
                                     (write '(funapp 223 40))
                                     (display "\n")
                                     (number?/c j7294 k7295 g7293))))
                                 (begin
                                   (write '(funapp 224 32))
                                   (display "\n")
                                   (f7296 x7659 x7658)))))
                              (begin
                                (write '(funapp 225 29))
                                (display "\n")
                                (number?/c j7294 k7295 x7657)))))
                           g7656))))
                      g7655))
                   (begin (write '(funapp 228 17)) (display "\n") 'server)
                   (begin (write '(funapp 229 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7654
                        (begin
                          (write '(funapp 230 49))
                          (display "\n")
                          (orig-- a b))))
                      g7654)))))
               (*
                (begin
                  (write '(funapp 232 17))
                  (display "\n")
                  ((lambda (j7299 k7300 f7301)
                     (letrec*
                      ((g7661
                        (lambda (g7297 g7298)
                          (letrec*
                           ((g7662
                             (letrec*
                              ((x7663
                                (letrec*
                                 ((x7665
                                   (begin
                                     (write '(funapp 241 40))
                                     (display "\n")
                                     (number?/c j7299 k7300 g7297)))
                                  (x7664
                                   (begin
                                     (write '(funapp 242 40))
                                     (display "\n")
                                     (number?/c j7299 k7300 g7298))))
                                 (begin
                                   (write '(funapp 243 32))
                                   (display "\n")
                                   (f7301 x7665 x7664)))))
                              (begin
                                (write '(funapp 244 29))
                                (display "\n")
                                (number?/c j7299 k7300 x7663)))))
                           g7662))))
                      g7661))
                   (begin (write '(funapp 247 17)) (display "\n") 'server)
                   (begin (write '(funapp 248 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7660
                        (begin
                          (write '(funapp 249 49))
                          (display "\n")
                          (orig-* a b))))
                      g7660)))))
               (/
                (begin
                  (write '(funapp 251 17))
                  (display "\n")
                  ((lambda (j7304 k7305 f7306)
                     (letrec*
                      ((g7667
                        (lambda (g7302 g7303)
                          (letrec*
                           ((g7668
                             (letrec*
                              ((x7669
                                (letrec*
                                 ((x7671
                                   (begin
                                     (write '(funapp 260 40))
                                     (display "\n")
                                     (number?/c j7304 k7305 g7302)))
                                  (x7670
                                   (begin
                                     (write '(funapp 261 40))
                                     (display "\n")
                                     (number?/c j7304 k7305 g7303))))
                                 (begin
                                   (write '(funapp 262 32))
                                   (display "\n")
                                   (f7306 x7671 x7670)))))
                              (begin
                                (write '(funapp 263 29))
                                (display "\n")
                                (number?/c j7304 k7305 x7669)))))
                           g7668))))
                      g7667))
                   (begin (write '(funapp 266 17)) (display "\n") 'server)
                   (begin (write '(funapp 267 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7666
                        (begin
                          (write '(funapp 268 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7666)))))
               (car
                (begin
                  (write '(funapp 270 17))
                  (display "\n")
                  ((lambda (j7308 k7309 f7310)
                     (letrec*
                      ((g7673
                        (lambda (g7307)
                          (letrec*
                           ((g7674
                             (letrec*
                              ((x7675
                                (letrec*
                                 ((x7676
                                   (begin
                                     (write '(funapp 279 40))
                                     (display "\n")
                                     (pair?/c j7308 k7309 g7307))))
                                 (begin
                                   (write '(funapp 280 32))
                                   (display "\n")
                                   (f7310 x7676)))))
                              (begin
                                (write '(funapp 281 29))
                                (display "\n")
                                (any/c j7308 k7309 x7675)))))
                           g7674))))
                      g7673))
                   (begin (write '(funapp 284 17)) (display "\n") 'server)
                   (begin (write '(funapp 285 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7672
                        (begin
                          (write '(funapp 286 47))
                          (display "\n")
                          (orig-car p))))
                      g7672)))))
               (cdr
                (begin
                  (write '(funapp 288 17))
                  (display "\n")
                  ((lambda (j7312 k7313 f7314)
                     (letrec*
                      ((g7678
                        (lambda (g7311)
                          (letrec*
                           ((g7679
                             (letrec*
                              ((x7680
                                (letrec*
                                 ((x7681
                                   (begin
                                     (write '(funapp 297 40))
                                     (display "\n")
                                     (pair?/c j7312 k7313 g7311))))
                                 (begin
                                   (write '(funapp 298 32))
                                   (display "\n")
                                   (f7314 x7681)))))
                              (begin
                                (write '(funapp 299 29))
                                (display "\n")
                                (any/c j7312 k7313 x7680)))))
                           g7679))))
                      g7678))
                   (begin (write '(funapp 302 17)) (display "\n") 'server)
                   (begin (write '(funapp 303 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7677
                        (begin
                          (write '(funapp 304 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7677)))))
               (cons
                (begin
                  (write '(funapp 306 17))
                  (display "\n")
                  ((lambda (j7317 k7318 f7319)
                     (letrec*
                      ((g7683
                        (lambda (g7315 g7316)
                          (letrec*
                           ((g7684
                             (letrec*
                              ((x7685
                                (letrec*
                                 ((x7687
                                   (begin
                                     (write '(funapp 315 40))
                                     (display "\n")
                                     (any/c j7317 k7318 g7315)))
                                  (x7686
                                   (begin
                                     (write '(funapp 316 40))
                                     (display "\n")
                                     (any/c j7317 k7318 g7316))))
                                 (begin
                                   (write '(funapp 317 32))
                                   (display "\n")
                                   (f7319 x7687 x7686)))))
                              (begin
                                (write '(funapp 318 29))
                                (display "\n")
                                (pair?/c j7317 k7318 x7685)))))
                           g7684))))
                      g7683))
                   (begin (write '(funapp 321 17)) (display "\n") 'server)
                   (begin (write '(funapp 322 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7682
                        (begin
                          (write '(funapp 323 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7682)))))
               (vector-ref
                (begin
                  (write '(funapp 325 17))
                  (display "\n")
                  ((lambda (j7321 k7322 f7323)
                     (letrec*
                      ((g7689
                        (lambda (g7320)
                          (letrec*
                           ((g7690
                             (letrec*
                              ((x7691
                                (letrec*
                                 ((x7692
                                   (begin
                                     (write '(funapp 334 40))
                                     (display "\n")
                                     (vector?/c j7321 k7322 g7320))))
                                 (begin
                                   (write '(funapp 335 32))
                                   (display "\n")
                                   (f7323 x7692)))))
                              (begin
                                (write '(funapp 336 29))
                                (display "\n")
                                (integer?/c j7321 k7322 x7691)))))
                           g7690))))
                      g7689))
                   (begin (write '(funapp 339 17)) (display "\n") 'server)
                   (begin (write '(funapp 340 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7688
                        (begin
                          (write '(funapp 342 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7688)))))
               (vector-set!
                (begin
                  (write '(funapp 344 17))
                  (display "\n")
                  ((lambda (j7326 k7327 f7328)
                     (letrec*
                      ((g7694
                        (lambda (g7324 g7325)
                          (letrec*
                           ((g7695
                             (letrec*
                              ((x7696
                                (letrec*
                                 ((x7698
                                   (begin
                                     (write '(funapp 353 40))
                                     (display "\n")
                                     (vector?/c j7326 k7327 g7324)))
                                  (x7697
                                   (begin
                                     (write '(funapp 354 40))
                                     (display "\n")
                                     (integer?/c j7326 k7327 g7325))))
                                 (begin
                                   (write '(funapp 355 32))
                                   (display "\n")
                                   (f7328 x7698 x7697)))))
                              (begin
                                (write '(funapp 356 29))
                                (display "\n")
                                (any/c j7326 k7327 x7696)))))
                           g7695))))
                      g7694))
                   (begin (write '(funapp 359 17)) (display "\n") 'server)
                   (begin (write '(funapp 360 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7693
                        (begin
                          (write '(funapp 362 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7693)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7699
                     (if cnd
                       (begin (write '(funapp 366 35)) (display "\n") '())
                       (begin
                         (write '(funapp 366 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7699)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7700
                     (letrec*
                      ((x7701
                        (letrec*
                         ((x7702
                           (begin
                             (write '(funapp 373 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 373 58))
                           (display "\n")
                           (cdr x7702)))))
                      (begin
                        (write '(funapp 374 23))
                        (display "\n")
                        (cdr x7701)))))
                   g7700)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7703
                     (letrec*
                      ((x7706
                        (begin
                          (write '(funapp 380 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 380 62))
                        (display "\n")
                        (assert x7706))))
                    (g7704
                     (letrec*
                      ((x7707
                        (begin
                          (write '(funapp 381 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 381 57))
                        (display "\n")
                        (assert x7707))))
                    (g7705
                     (letrec*
                      ((x-cnd7708
                        (begin
                          (write '(funapp 384 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7708
                        (begin (write '(funapp 386 24)) (display "\n") '())
                        (letrec*
                         ((x7711
                           (letrec*
                            ((x7712
                              (begin
                                (write '(funapp 388 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 388 61))
                              (display "\n")
                              (f x7712))))
                          (x7709
                           (letrec*
                            ((x7710
                              (begin
                                (write '(funapp 389 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 389 61))
                              (display "\n")
                              (map f x7710)))))
                         (begin
                           (write '(funapp 390 26))
                           (display "\n")
                           (cons x7711 x7709)))))))
                   g7705)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7713
                     (letrec*
                      ((x7714
                        (begin
                          (write '(funapp 395 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 395 55))
                        (display "\n")
                        (cdr x7714)))))
                   g7713)))
               (cadadr
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
                                (write '(funapp 404 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 404 61))
                              (display "\n")
                              (car x7718)))))
                         (begin
                           (write '(funapp 405 26))
                           (display "\n")
                           (cdr x7717)))))
                      (begin
                        (write '(funapp 406 23))
                        (display "\n")
                        (car x7716)))))
                   g7715)))
               (cdadar
                (lambda (x)
                  (letrec*
                   ((g7719
                     (letrec*
                      ((x7720
                        (letrec*
                         ((x7721
                           (letrec*
                            ((x7722
                              (begin
                                (write '(funapp 415 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 415 61))
                              (display "\n")
                              (cdr x7722)))))
                         (begin
                           (write '(funapp 416 26))
                           (display "\n")
                           (car x7721)))))
                      (begin
                        (write '(funapp 417 23))
                        (display "\n")
                        (cdr x7720)))))
                   g7719)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7723
                     (letrec*
                      ((x7726
                        (begin
                          (write '(funapp 423 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 423 60))
                        (display "\n")
                        (assert x7726))))
                    (g7724
                     (letrec*
                      ((x7727
                        (begin
                          (write '(funapp 425 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 425 59))
                        (display "\n")
                        (assert x7727))))
                    (g7725
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
                       ((g7728
                         (begin
                           (write '(funapp 431 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7729 res))
                       g7729))))
                   g7725)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7730
                     (letrec*
                      ((x7731
                        (letrec*
                         ((x7732
                           (begin
                             (write '(funapp 439 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 439 58))
                           (display "\n")
                           (cdr x7732)))))
                      (begin
                        (write '(funapp 440 23))
                        (display "\n")
                        (car x7731)))))
                   g7730)))
               (cdaadr
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
                                (write '(funapp 449 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 449 61))
                              (display "\n")
                              (car x7736)))))
                         (begin
                           (write '(funapp 450 26))
                           (display "\n")
                           (car x7735)))))
                      (begin
                        (write '(funapp 451 23))
                        (display "\n")
                        (cdr x7734)))))
                   g7733)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7737
                     (letrec*
                      ((x7739
                        (begin
                          (write '(funapp 456 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 456 57))
                        (display "\n")
                        (assert x7739))))
                    (g7738
                     (letrec*
                      ((x-cnd7740
                        (begin
                          (write '(funapp 459 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7740
                        #f
                        (letrec*
                         ((x-cnd7741
                           (letrec*
                            ((x7742
                              (begin
                                (write '(funapp 464 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 464 56))
                              (display "\n")
                              (eq? x7742 k)))))
                         (if x-cnd7741
                           (begin
                             (write '(funapp 466 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7743
                              (begin
                                (write '(funapp 467 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 467 55))
                              (display "\n")
                              (assq k x7743)))))))))
                   g7738)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7744
                     (letrec*
                      ((x7745
                        (begin
                          (write '(funapp 472 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 472 60))
                        (display "\n")
                        (= 0 x7745)))))
                   g7744)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7746
                     (letrec*
                      ((x7748
                        (begin
                          (write '(funapp 477 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 477 57))
                        (display "\n")
                        (assert x7748))))
                    (g7747
                     (letrec*
                      ((x-cnd7749
                        (begin
                          (write '(funapp 480 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7749
                        ""
                        (letrec*
                         ((x7752
                           (letrec*
                            ((x7753
                              (begin
                                (write '(funapp 485 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 485 55))
                              (display "\n")
                              (char->string x7753))))
                          (x7750
                           (letrec*
                            ((x7751
                              (begin
                                (write '(funapp 487 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 487 55))
                              (display "\n")
                              (list->string x7751)))))
                         (begin
                           (write '(funapp 488 26))
                           (display "\n")
                           (string-append x7752 x7750)))))))
                   g7747)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7754
                     (letrec*
                      ((x7757
                        (begin
                          (write '(funapp 493 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 493 58))
                        (display "\n")
                        (assert x7757))))
                    (g7755
                     (letrec*
                      ((x7758
                        (begin
                          (write '(funapp 494 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 494 58))
                        (display "\n")
                        (assert x7758))))
                    (g7756
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 497 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7759
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 499 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7759))))
                   g7756)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7760
                     (letrec*
                      ((x7761
                        (letrec*
                         ((x7762
                           (letrec*
                            ((x7763
                              (begin
                                (write '(funapp 509 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 509 61))
                              (display "\n")
                              (cdr x7763)))))
                         (begin
                           (write '(funapp 510 26))
                           (display "\n")
                           (cdr x7762)))))
                      (begin
                        (write '(funapp 511 23))
                        (display "\n")
                        (cdr x7761)))))
                   g7760)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7764
                     (letrec*
                      ((x7767
                        (begin
                          (write '(funapp 516 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 516 57))
                        (display "\n")
                        (assert x7767))))
                    (g7765
                     (letrec*
                      ((x7768
                        (begin
                          (write '(funapp 517 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 517 57))
                        (display "\n")
                        (assert x7768))))
                    (g7766
                     (letrec*
                      ((x-cnd7769
                        (begin
                          (write '(funapp 520 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7769
                        x
                        (letrec*
                         ((x7771
                           (begin
                             (write '(funapp 524 34))
                             (display "\n")
                             (cdr x)))
                          (x7770
                           (begin
                             (write '(funapp 524 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 525 26))
                           (display "\n")
                           (list-tail x7771 x7770)))))))
                   g7766)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7772
                     (begin (write '(funapp 527 49)) (display "\n") '())))
                   g7772)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7773
                     (letrec*
                      ((x-cnd7774
                        (letrec*
                         ((x7775 #\a))
                         (begin
                           (write '(funapp 534 48))
                           (display "\n")
                           (char-ci>=? c x7775)))))
                      (if x-cnd7774
                        (letrec*
                         ((x7776 #\z))
                         (begin
                           (write '(funapp 536 48))
                           (display "\n")
                           (char-ci<=? c x7776)))
                        #f))))
                   g7773)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7777
                     (letrec*
                      ((x7779
                        (begin
                          (write '(funapp 542 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 542 59))
                        (display "\n")
                        (assert x7779))))
                    (g7778
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 545 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7780
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 551 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7781 (if val7243 val7243 #f)))
                             g7781)))))
                       g7780))))
                   g7778)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7783
                           (begin
                             (write '(funapp 563 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 563 62))
                           (display "\n")
                           (= x7783 9)))))
                      (letrec*
                       ((g7784
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7785
                                 (begin
                                   (write '(funapp 571 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 572 32))
                                 (display "\n")
                                 (= x7785 10)))))
                            (letrec*
                             ((g7786
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7787
                                    (begin
                                      (write '(funapp 578 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 579 35))
                                    (display "\n")
                                    (= x7787 32))))))
                             g7786)))))
                       g7784))))
                   g7782)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7788
                     (letrec*
                      ((x7789
                        (letrec*
                         ((x7790
                           (begin
                             (write '(funapp 588 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 588 58))
                           (display "\n")
                           (cdr x7790)))))
                      (begin
                        (write '(funapp 589 23))
                        (display "\n")
                        (cdr x7789)))))
                   g7788)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7791
                     (letrec*
                      ((x7793
                        (begin
                          (write '(funapp 594 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 594 59))
                        (display "\n")
                        (assert x7793))))
                    (g7792
                     (begin (write '(funapp 595 28)) (display "\n") (> x 0))))
                   g7792)))
               ($pc (begin (write '(funapp 597 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7794 #f)) g7794)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7795
                     (letrec*
                      ((x7796
                        (begin
                          (write '(funapp 603 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 603 55))
                        (display "\n")
                        (cdr x7796)))))
                   g7795)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7797
                     (letrec*
                      ((x7799
                        (begin
                          (write '(funapp 608 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 608 59))
                        (display "\n")
                        (assert x7799))))
                    (g7798
                     (letrec*
                      ((x-cnd7800
                        (begin
                          (write '(funapp 611 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7800
                        (begin
                          (write '(funapp 612 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 612 49))
                          (display "\n")
                          (floor x))))))
                   g7798)))
               ($cmp (begin (write '(funapp 614 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7801
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 620 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7802
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7803
                                 (begin
                                   (write '(funapp 628 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7803
                                 (begin
                                   (write '(funapp 629 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7804
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7805
                                       (begin
                                         (write '(funapp 637 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7805
                                       (letrec*
                                        ((x-cnd7806
                                          (begin
                                            (write '(funapp 640 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7806
                                          (begin
                                            (write '(funapp 641 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7807
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7808
                                             (begin
                                               (write '(funapp 650 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7808
                                             (letrec*
                                              ((x-cnd7809
                                                (begin
                                                  (write '(funapp 653 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7809
                                                (letrec*
                                                 ((x-cnd7810
                                                   (letrec*
                                                    ((x7812
                                                      (begin
                                                        (write
                                                         '(funapp 658 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7811
                                                      (begin
                                                        (write
                                                         '(funapp 659 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 660 53))
                                                      (display "\n")
                                                      (equal? x7812 x7811)))))
                                                 (if x-cnd7810
                                                   (letrec*
                                                    ((x7814
                                                      (begin
                                                        (write
                                                         '(funapp 663 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7813
                                                      (begin
                                                        (write
                                                         '(funapp 664 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 665 53))
                                                      (display "\n")
                                                      (equal? x7814 x7813)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7815
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7816
                                                (begin
                                                  (write '(funapp 674 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7816
                                                (letrec*
                                                 ((x-cnd7817
                                                   (begin
                                                     (write '(funapp 677 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7817
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 680 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7818
                                                       (letrec*
                                                        ((x-cnd7819
                                                          (letrec*
                                                           ((x7820
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
                                                             (= x7820 n)))))
                                                        (if x-cnd7819
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7821
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
                                                                    ((g7822
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7823
                                                                           (letrec*
                                                                            ((x7825
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
                                                                             (x7824
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
                                                                               x7825
                                                                               x7824)))))
                                                                         (if x-cnd7823
                                                                           (letrec*
                                                                            ((x7826
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
                                                                               x7826)))
                                                                           #f)))))
                                                                    g7822))))
                                                                g7821))))
                                                           (letrec*
                                                            ((g7827
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   729
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7827))
                                                          #f))))
                                                     g7818))
                                                   #f))
                                                #f)))))
                                         g7815)))))
                                   g7807)))))
                             g7804)))))
                       g7802))))
                   g7801)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7828
                     (letrec*
                      ((x7829
                        (letrec*
                         ((x7830
                           (letrec*
                            ((x7831
                              (begin
                                (write '(funapp 747 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 747 61))
                              (display "\n")
                              (car x7831)))))
                         (begin
                           (write '(funapp 748 26))
                           (display "\n")
                           (car x7830)))))
                      (begin
                        (write '(funapp 749 23))
                        (display "\n")
                        (cdr x7829)))))
                   g7828)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7832
                     (letrec*
                      ((x7833
                        (letrec*
                         ((x7834
                           (letrec*
                            ((x7835
                              (begin
                                (write '(funapp 758 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 758 61))
                              (display "\n")
                              (cdr x7835)))))
                         (begin
                           (write '(funapp 759 26))
                           (display "\n")
                           (car x7834)))))
                      (begin
                        (write '(funapp 760 23))
                        (display "\n")
                        (car x7833)))))
                   g7832)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7836
                     (begin
                       (write '(funapp 762 53))
                       (display "\n")
                       (eq? x y))))
                   g7836)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7839
                        (begin
                          (write '(funapp 766 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 766 59))
                        (display "\n")
                        (assert x7839))))
                    (g7838
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 769 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7840
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 775 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7841 (if val7252 val7252 #f)))
                             g7841)))))
                       g7840))))
                   g7838)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7845
                        (begin
                          (write '(funapp 785 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 785 60))
                        (display "\n")
                        (assert x7845))))
                    (g7843
                     (letrec*
                      ((x7846
                        (begin
                          (write '(funapp 787 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 787 59))
                        (display "\n")
                        (assert x7846))))
                    (g7844
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
                       ((g7847
                         (begin
                           (write '(funapp 793 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7848 res))
                       g7848))))
                   g7844)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7849
                     (begin
                       (write '(funapp 796 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 796 57)) (display "\n") '())))))
                   g7849)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7850
                     (letrec*
                      ((x7853
                        (begin
                          (write '(funapp 800 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 800 58))
                        (display "\n")
                        (assert x7853))))
                    (g7851
                     (letrec*
                      ((x7854
                        (begin
                          (write '(funapp 801 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 801 58))
                        (display "\n")
                        (assert x7854))))
                    (g7852
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 804 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7855
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 806 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7855))))
                   g7852)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7856
                     (letrec*
                      ((x7857
                        (letrec*
                         ((x7858
                           (begin
                             (write '(funapp 814 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 814 58))
                           (display "\n")
                           (car x7858)))))
                      (begin
                        (write '(funapp 815 23))
                        (display "\n")
                        (cdr x7857)))))
                   g7856)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7859
                     (letrec*
                      ((x7860
                        (letrec*
                         ((x7861
                           (letrec*
                            ((x7862
                              (begin
                                (write '(funapp 824 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 824 61))
                              (display "\n")
                              (cdr x7862)))))
                         (begin
                           (write '(funapp 825 26))
                           (display "\n")
                           (car x7861)))))
                      (begin
                        (write '(funapp 826 23))
                        (display "\n")
                        (cdr x7860)))))
                   g7859)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7863
                     (letrec*
                      ((x7864
                        (letrec*
                         ((x7865
                           (begin
                             (write '(funapp 834 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 834 58))
                           (display "\n")
                           (cdr x7865)))))
                      (begin
                        (write '(funapp 835 23))
                        (display "\n")
                        (car x7864)))))
                   g7863)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7866
                     (letrec*
                      ((x7867
                        (letrec*
                         ((x7868
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (car x7868)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7867)))))
                   g7866)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7869
                     (letrec*
                      ((x7872
                        (begin
                          (write '(funapp 848 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 848 58))
                        (display "\n")
                        (assert x7872))))
                    (g7870
                     (letrec*
                      ((x7873
                        (begin
                          (write '(funapp 849 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 849 58))
                        (display "\n")
                        (assert x7873))))
                    (g7871
                     (letrec*
                      ((x7874
                        (begin
                          (write '(funapp 850 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 850 66))
                        (display "\n")
                        (not x7874)))))
                   g7871)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7875
                     (letrec*
                      ((x7876
                        (letrec*
                         ((x7877
                           (letrec*
                            ((x7878
                              (begin
                                (write '(funapp 860 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 860 61))
                              (display "\n")
                              (car x7878)))))
                         (begin
                           (write '(funapp 861 26))
                           (display "\n")
                           (car x7877)))))
                      (begin
                        (write '(funapp 862 23))
                        (display "\n")
                        (car x7876)))))
                   g7875)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7879
                     (letrec*
                      ((x7881
                        (begin
                          (write '(funapp 867 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 867 59))
                        (display "\n")
                        (assert x7881))))
                    (g7880
                     (begin (write '(funapp 868 28)) (display "\n") (< x 0))))
                   g7880)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7882
                     (begin
                       (write '(funapp 870 53))
                       (display "\n")
                       (memq e l))))
                   g7882)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7883
                     (letrec*
                      ((x7884
                        (letrec*
                         ((x7885
                           (begin
                             (write '(funapp 876 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 876 58))
                           (display "\n")
                           (car x7885)))))
                      (begin
                        (write '(funapp 877 23))
                        (display "\n")
                        (car x7884)))))
                   g7883)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7886
                     (begin (write '(funapp 879 51)) (display "\n") '())))
                   g7886)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7887
                     (letrec*
                      ((x7889
                        (begin
                          (write '(funapp 883 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 883 57))
                        (display "\n")
                        (assert x7889))))
                    (g7888
                     (letrec*
                      ((x-cnd7890
                        (begin
                          (write '(funapp 886 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7890
                        (begin (write '(funapp 888 24)) (display "\n") '())
                        (letrec*
                         ((x7893
                           (letrec*
                            ((x7894
                              (begin
                                (write '(funapp 890 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 890 61))
                              (display "\n")
                              (reverse x7894))))
                          (x7891
                           (letrec*
                            ((x7892
                              (begin
                                (write '(funapp 891 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 891 61))
                              (display "\n")
                              (list x7892)))))
                         (begin
                           (write '(funapp 892 26))
                           (display "\n")
                           (append x7893 x7891)))))))
                   g7888)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7895
                     (letrec*
                      ((x7896
                        (letrec*
                         ((x7897
                           (letrec*
                            ((x7898
                              (begin
                                (write '(funapp 901 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 901 61))
                              (display "\n")
                              (car x7898)))))
                         (begin
                           (write '(funapp 902 26))
                           (display "\n")
                           (car x7897)))))
                      (begin
                        (write '(funapp 903 23))
                        (display "\n")
                        (car x7896)))))
                   g7895)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7899
                     (letrec*
                      ((x7900
                        (letrec*
                         ((x7901
                           (letrec*
                            ((x7902
                              (begin
                                (write '(funapp 912 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 912 61))
                              (display "\n")
                              (car x7902)))))
                         (begin
                           (write '(funapp 913 26))
                           (display "\n")
                           (cdr x7901)))))
                      (begin
                        (write '(funapp 914 23))
                        (display "\n")
                        (cdr x7900)))))
                   g7899)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7903
                     (letrec*
                      ((x7905
                        (begin
                          (write '(funapp 919 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 919 59))
                        (display "\n")
                        (assert x7905))))
                    (g7904
                     (letrec*
                      ((x7906
                        (begin
                          (write '(funapp 920 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 920 60))
                        (display "\n")
                        (= 1 x7906)))))
                   g7904)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7907
                     (letrec*
                      ((x7908
                        (letrec*
                         ((x7909
                           (letrec*
                            ((x7910
                              (begin
                                (write '(funapp 929 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 929 61))
                              (display "\n")
                              (cdr x7910)))))
                         (begin
                           (write '(funapp 930 26))
                           (display "\n")
                           (car x7909)))))
                      (begin
                        (write '(funapp 931 23))
                        (display "\n")
                        (car x7908)))))
                   g7907)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7911
                     (letrec*
                      ((x7914
                        (begin
                          (write '(funapp 937 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 937 59))
                        (display "\n")
                        (assert x7914))))
                    (g7912
                     (letrec*
                      ((x7915
                        (begin
                          (write '(funapp 938 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 938 60))
                        (display "\n")
                        (assert x7915))))
                    (g7913
                     (letrec*
                      ((x-cnd7916
                        (begin
                          (write '(funapp 941 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7916
                        (letrec*
                         ((g7917
                           (begin
                             (write '(funapp 943 42))
                             (display "\n")
                             (proc))))
                         g7917)
                        (letrec*
                         ((x-cnd7918
                           (letrec*
                            ((x7919
                              (begin
                                (write '(funapp 946 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 946 58))
                              (display "\n")
                              (null? x7919)))))
                         (if x-cnd7918
                           (letrec*
                            ((g7920
                              (letrec*
                               ((x7921
                                 (begin
                                   (write '(funapp 950 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 950 61))
                                 (display "\n")
                                 (proc x7921)))))
                            g7920)
                           (letrec*
                            ((x-cnd7922
                              (letrec*
                               ((x7923
                                 (begin
                                   (write '(funapp 954 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 954 62))
                                 (display "\n")
                                 (null? x7923)))))
                            (if x-cnd7922
                              (letrec*
                               ((g7924
                                 (letrec*
                                  ((x7926
                                    (begin
                                      (write '(funapp 959 43))
                                      (display "\n")
                                      (car args)))
                                   (x7925
                                    (begin
                                      (write '(funapp 959 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 960 35))
                                    (display "\n")
                                    (proc x7926 x7925)))))
                               g7924)
                              (letrec*
                               ((x-cnd7927
                                 (letrec*
                                  ((x7928
                                    (begin
                                      (write '(funapp 965 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 966 35))
                                    (display "\n")
                                    (null? x7928)))))
                               (if x-cnd7927
                                 (letrec*
                                  ((g7929
                                    (letrec*
                                     ((x7932
                                       (begin
                                         (write '(funapp 971 46))
                                         (display "\n")
                                         (car args)))
                                      (x7931
                                       (begin
                                         (write '(funapp 972 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7930
                                       (begin
                                         (write '(funapp 973 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 974 38))
                                       (display "\n")
                                       (proc x7932 x7931 x7930)))))
                                  g7929)
                                 (letrec*
                                  ((x-cnd7933
                                    (letrec*
                                     ((x7934
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 980 38))
                                       (display "\n")
                                       (null? x7934)))))
                                  (if x-cnd7933
                                    (letrec*
                                     ((g7935
                                       (letrec*
                                        ((x7939
                                          (begin
                                            (write '(funapp 985 49))
                                            (display "\n")
                                            (car args)))
                                         (x7938
                                          (begin
                                            (write '(funapp 986 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7937
                                          (begin
                                            (write '(funapp 987 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7936
                                          (begin
                                            (write '(funapp 988 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 989 41))
                                          (display "\n")
                                          (proc x7939 x7938 x7937 x7936)))))
                                     g7935)
                                    (letrec*
                                     ((x-cnd7940
                                       (letrec*
                                        ((x7941
                                          (letrec*
                                           ((x7942
                                             (begin
                                               (write '(funapp 996 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 997 44))
                                             (display "\n")
                                             (cdr x7942)))))
                                        (begin
                                          (write '(funapp 998 41))
                                          (display "\n")
                                          (null? x7941)))))
                                     (if x-cnd7940
                                       (letrec*
                                        ((g7943
                                          (letrec*
                                           ((x7949
                                             (begin
                                               (write '(funapp 1003 52))
                                               (display "\n")
                                               (car args)))
                                            (x7948
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7947
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7946
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7944
                                             (letrec*
                                              ((x7945
                                                (begin
                                                  (write '(funapp 1009 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1010 47))
                                                (display "\n")
                                                (car x7945)))))
                                           (begin
                                             (write '(funapp 1011 44))
                                             (display "\n")
                                             (proc
                                              x7949
                                              x7948
                                              x7947
                                              x7946
                                              x7944)))))
                                        g7943)
                                       (letrec*
                                        ((x-cnd7950
                                          (letrec*
                                           ((x7951
                                             (letrec*
                                              ((x7952
                                                (begin
                                                  (write '(funapp 1023 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1024 47))
                                                (display "\n")
                                                (cddr x7952)))))
                                           (begin
                                             (write '(funapp 1025 44))
                                             (display "\n")
                                             (null? x7951)))))
                                        (if x-cnd7950
                                          (letrec*
                                           ((g7953
                                             (letrec*
                                              ((x7961
                                                (begin
                                                  (write '(funapp 1030 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7960
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7959
                                                (begin
                                                  (write '(funapp 1032 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7958
                                                (begin
                                                  (write '(funapp 1033 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7956
                                                (letrec*
                                                 ((x7957
                                                   (begin
                                                     (write '(funapp 1036 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1037 50))
                                                   (display "\n")
                                                   (car x7957))))
                                               (x7954
                                                (letrec*
                                                 ((x7955
                                                   (begin
                                                     (write '(funapp 1040 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1041 50))
                                                   (display "\n")
                                                   (cadr x7955)))))
                                              (begin
                                                (write '(funapp 1042 47))
                                                (display "\n")
                                                (proc
                                                 x7961
                                                 x7960
                                                 x7959
                                                 x7958
                                                 x7956
                                                 x7954)))))
                                           g7953)
                                          (letrec*
                                           ((x-cnd7962
                                             (letrec*
                                              ((x7963
                                                (letrec*
                                                 ((x7964
                                                   (begin
                                                     (write '(funapp 1055 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1056 50))
                                                   (display "\n")
                                                   (cdddr x7964)))))
                                              (begin
                                                (write '(funapp 1057 47))
                                                (display "\n")
                                                (null? x7963)))))
                                           (if x-cnd7962
                                             (letrec*
                                              ((g7965
                                                (letrec*
                                                 ((x7975
                                                   (begin
                                                     (write '(funapp 1062 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7974
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7973
                                                   (begin
                                                     (write '(funapp 1064 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7972
                                                   (begin
                                                     (write '(funapp 1065 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7970
                                                   (letrec*
                                                    ((x7971
                                                      (begin
                                                        (write
                                                         '(funapp 1068 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1069 53))
                                                      (display "\n")
                                                      (car x7971))))
                                                  (x7968
                                                   (letrec*
                                                    ((x7969
                                                      (begin
                                                        (write
                                                         '(funapp 1072 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1073 53))
                                                      (display "\n")
                                                      (cadr x7969))))
                                                  (x7966
                                                   (letrec*
                                                    ((x7967
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (caddr x7967)))))
                                                 (begin
                                                   (write '(funapp 1078 50))
                                                   (display "\n")
                                                   (proc
                                                    x7975
                                                    x7974
                                                    x7973
                                                    x7972
                                                    x7970
                                                    x7968
                                                    x7966)))))
                                              g7965)
                                             (letrec*
                                              ((g7976
                                                (begin
                                                  (write '(funapp 1089 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7976)))))))))))))))))))
                   g7913)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7977
                     (letrec*
                      ((x7979
                        (begin
                          (write '(funapp 1095 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1095 57))
                        (display "\n")
                        (assert x7979))))
                    (g7978
                     (letrec*
                      ((x-cnd7980
                        (begin
                          (write '(funapp 1098 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7980
                        #f
                        (letrec*
                         ((x-cnd7981
                           (letrec*
                            ((x7982
                              (begin
                                (write '(funapp 1103 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1103 55))
                              (display "\n")
                              (equal? x7982 e)))))
                         (if x-cnd7981
                           l
                           (letrec*
                            ((x7983
                              (begin
                                (write '(funapp 1106 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1106 55))
                              (display "\n")
                              (member e x7983)))))))))
                   g7978)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7984
                     (letrec*
                      ((x7985
                        (letrec*
                         ((x7986
                           (letrec*
                            ((x7987
                              (begin
                                (write '(funapp 1115 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1115 61))
                              (display "\n")
                              (cdr x7987)))))
                         (begin
                           (write '(funapp 1116 26))
                           (display "\n")
                           (cdr x7986)))))
                      (begin
                        (write '(funapp 1117 23))
                        (display "\n")
                        (cdr x7985)))))
                   g7984)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7988
                     (letrec*
                      ((x7989
                        (letrec*
                         ((x7990
                           (letrec*
                            ((x7991
                              (begin
                                (write '(funapp 1126 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1126 61))
                              (display "\n")
                              (cdr x7991)))))
                         (begin
                           (write '(funapp 1127 26))
                           (display "\n")
                           (cdr x7990)))))
                      (begin
                        (write '(funapp 1128 23))
                        (display "\n")
                        (car x7989)))))
                   g7988)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7992
                     (begin
                       (write '(funapp 1130 53))
                       (display "\n")
                       (random 42))))
                   g7992)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7995
                        (begin
                          (write '(funapp 1134 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1134 59))
                        (display "\n")
                        (assert x7995))))
                    (g7994
                     (begin (write '(funapp 1135 28)) (display "\n") (= x 0))))
                   g7994)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g7996
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1142 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g7997
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1144 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g7997))))
                   g7996)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x7999
                        (begin
                          (write '(funapp 1150 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1150 55))
                        (display "\n")
                        (car x7999)))))
                   g7998)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8000
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd8001
                           (begin
                             (write '(funapp 1160 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8001
                           (letrec*
                            ((x8002
                              (begin
                                (write '(funapp 1162 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1162 55))
                              (display "\n")
                              (list? x8002)))
                           #f))))
                      (letrec*
                       ((g8003
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1165 52))
                             (display "\n")
                             (null? l)))))
                       g8003))))
                   g8000)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8004
                     (letrec*
                      ((x8005
                        (letrec*
                         ((x8006
                           (letrec*
                            ((x8007
                              (begin
                                (write '(funapp 1175 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1175 61))
                              (display "\n")
                              (car x8007)))))
                         (begin
                           (write '(funapp 1176 26))
                           (display "\n")
                           (cdr x8006)))))
                      (begin
                        (write '(funapp 1177 23))
                        (display "\n")
                        (cdr x8005)))))
                   g8004)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8008
                     (letrec*
                      ((x-cnd8009
                        (letrec*
                         ((x8010 #\0))
                         (begin
                           (write '(funapp 1184 58))
                           (display "\n")
                           (char<=? x8010 c)))))
                      (if x-cnd8009
                        (letrec*
                         ((x8011 #\9))
                         (begin
                           (write '(funapp 1186 48))
                           (display "\n")
                           (char<=? c x8011)))
                        #f))))
                   g8008)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8012
                     (letrec*
                      ((x8014
                        (begin
                          (write '(funapp 1193 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1193 57))
                        (display "\n")
                        (assert x8014))))
                    (g8013
                     (letrec*
                      ((x-cnd8015
                        (begin
                          (write '(funapp 1196 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8015
                        #f
                        (letrec*
                         ((x-cnd8016
                           (letrec*
                            ((x8017
                              (begin
                                (write '(funapp 1201 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1201 56))
                              (display "\n")
                              (eqv? x8017 k)))))
                         (if x-cnd8016
                           (begin
                             (write '(funapp 1203 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8018
                              (begin
                                (write '(funapp 1204 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1204 55))
                              (display "\n")
                              (assq k x8018)))))))))
                   g8013)))
               (not (lambda (x) (letrec* ((g8019 (if x #f #t))) g8019)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8020
                     (begin
                       (write '(funapp 1208 50))
                       (display "\n")
                       (append l1 l2))))
                   g8020)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8021
                     (letrec*
                      ((x8023
                        (begin
                          (write '(funapp 1212 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1212 57))
                        (display "\n")
                        (assert x8023))))
                    (g8022
                     (letrec*
                      ((x-cnd8024
                        (begin
                          (write '(funapp 1215 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8024
                        #f
                        (letrec*
                         ((x-cnd8025
                           (letrec*
                            ((x8026
                              (begin
                                (write '(funapp 1220 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1220 55))
                              (display "\n")
                              (eq? x8026 e)))))
                         (if x-cnd8025
                           l
                           (letrec*
                            ((x8027
                              (begin
                                (write '(funapp 1223 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1223 55))
                              (display "\n")
                              (memq e x8027)))))))))
                   g8022)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8028
                     (letrec*
                      ((x8029
                        (letrec*
                         ((x8030
                           (letrec*
                            ((x8031
                              (begin
                                (write '(funapp 1232 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1232 61))
                              (display "\n")
                              (car x8031)))))
                         (begin
                           (write '(funapp 1233 26))
                           (display "\n")
                           (cdr x8030)))))
                      (begin
                        (write '(funapp 1234 23))
                        (display "\n")
                        (car x8029)))))
                   g8028)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8032
                     (letrec*
                      ((x8034
                        (begin
                          (write '(funapp 1239 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1239 57))
                        (display "\n")
                        (assert x8034))))
                    (g8033
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8035
                             (letrec*
                              ((x-cnd8036
                                (begin
                                  (write '(funapp 1247 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8036
                                0
                                (letrec*
                                 ((x8037
                                   (letrec*
                                    ((x8038
                                      (begin
                                        (write '(funapp 1252 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1252 63))
                                      (display "\n")
                                      (rec x8038)))))
                                 (begin
                                   (write '(funapp 1253 34))
                                   (display "\n")
                                   (+ 1 x8037)))))))
                           g8035))))
                      (letrec*
                       ((g8039
                         (begin
                           (write '(funapp 1255 40))
                           (display "\n")
                           (rec l))))
                       g8039))))
                   g8033)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8040
                     (letrec*
                      ((x8043
                        (begin
                          (write '(funapp 1260 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1260 58))
                        (display "\n")
                        (assert x8043))))
                    (g8041
                     (letrec*
                      ((x8044
                        (begin
                          (write '(funapp 1261 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1261 58))
                        (display "\n")
                        (assert x8044))))
                    (g8042
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1264 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8045
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1266 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8045))))
                   g8042)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8046
                     (letrec*
                      ((x8047
                        (begin
                          (write '(funapp 1272 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1272 65))
                        (display "\n")
                        (not x8047)))))
                   g8046)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8048
                     (letrec*
                      ((x8049
                        (letrec*
                         ((x8050
                           (begin
                             (write '(funapp 1279 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1279 58))
                           (display "\n")
                           (car x8050)))))
                      (begin
                        (write '(funapp 1280 23))
                        (display "\n")
                        (cdr x8049)))))
                   g8048)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((x8053
                        (begin
                          (write '(funapp 1285 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1285 57))
                        (display "\n")
                        (assert x8053))))
                    (g8052
                     (letrec*
                      ((x-cnd8054
                        (begin
                          (write '(funapp 1288 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8054
                        #f
                        (letrec*
                         ((x-cnd8055
                           (letrec*
                            ((x8056
                              (begin
                                (write '(funapp 1293 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1293 56))
                              (display "\n")
                              (equal? x8056 k)))))
                         (if x-cnd8055
                           (begin
                             (write '(funapp 1295 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8057
                              (begin
                                (write '(funapp 1296 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1296 55))
                              (display "\n")
                              (assoc k x8057)))))))))
                   g8052)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8058
                     (letrec*
                      ((x8059
                        (begin
                          (write '(funapp 1301 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1301 55))
                        (display "\n")
                        (car x8059)))))
                   g8058)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8060
                     (letrec*
                      ((x8063
                        (begin
                          (write '(funapp 1306 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1306 58))
                        (display "\n")
                        (assert x8063))))
                    (g8061
                     (letrec*
                      ((x8064
                        (begin
                          (write '(funapp 1307 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1307 58))
                        (display "\n")
                        (assert x8064))))
                    (g8062
                     (letrec*
                      ((x8065
                        (begin
                          (write '(funapp 1308 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1308 63))
                        (display "\n")
                        (not x8065)))))
                   g8062)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8066
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1315 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8067
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1317 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8067))))
                   g8066)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8068
                     (letrec*
                      ((x8071
                        (begin
                          (write '(funapp 1323 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1323 62))
                        (display "\n")
                        (assert x8071))))
                    (g8069
                     (letrec*
                      ((x8072
                        (begin
                          (write '(funapp 1324 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1324 57))
                        (display "\n")
                        (assert x8072))))
                    (g8070
                     (letrec*
                      ((x-cnd8073
                        (begin
                          (write '(funapp 1327 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8073
                        #t
                        (letrec*
                         ((x-cnd8074
                           (begin
                             (write '(funapp 1331 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8074
                           (letrec*
                            ((g8075
                              (letrec*
                               ((x8077
                                 (begin
                                   (write '(funapp 1334 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1334 64))
                                 (display "\n")
                                 (f x8077))))
                             (g8076
                              (letrec*
                               ((x8078
                                 (begin
                                   (write '(funapp 1336 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1336 58))
                                 (display "\n")
                                 (for-each f x8078)))))
                            g8076)
                           (begin
                             (write '(funapp 1338 27))
                             (display "\n")
                             '())))))))
                   g8070)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8079
                     (letrec*
                      ((x8081
                        (begin
                          (write '(funapp 1343 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1343 59))
                        (display "\n")
                        (assert x8081))))
                    (g8080
                     (letrec*
                      ((x-cnd8082
                        (begin
                          (write '(funapp 1345 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8082
                        (begin
                          (write '(funapp 1345 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8080)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8083
                     (letrec*
                      ((x8086
                        (begin
                          (write '(funapp 1350 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1350 58))
                        (display "\n")
                        (assert x8086))))
                    (g8084
                     (letrec*
                      ((x8087
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1351 58))
                        (display "\n")
                        (assert x8087))))
                    (g8085
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1354 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8088
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1356 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8088))))
                   g8085)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8089
                     (letrec*
                      ((x8090
                        (letrec*
                         ((x8091
                           (letrec*
                            ((x8092
                              (begin
                                (write '(funapp 1366 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1366 61))
                              (display "\n")
                              (cdr x8092)))))
                         (begin
                           (write '(funapp 1367 26))
                           (display "\n")
                           (cdr x8091)))))
                      (begin
                        (write '(funapp 1368 23))
                        (display "\n")
                        (car x8090)))))
                   g8089)))
               (newline (lambda () (letrec* ((g8093 #f)) g8093)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8094
                     (letrec*
                      ((x8096
                        (letrec*
                         ((x8097
                           (begin
                             (write '(funapp 1376 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1376 58))
                           (display "\n")
                           (abs x8097))))
                       (x8095
                        (begin
                          (write '(funapp 1377 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1378 23))
                        (display "\n")
                        (/ x8096 x8095)))))
                   g8094)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8098
                     (letrec*
                      ((x8100
                        (begin
                          (write '(funapp 1384 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1384 59))
                        (display "\n")
                        (assert x8100))))
                    (g8099
                     (letrec*
                      ((x8101
                        (begin
                          (write '(funapp 1385 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1385 56))
                        (display "\n")
                        (not x8101)))))
                   g8099)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8102
                     (letrec*
                      ((x8106
                        (begin
                          (write '(funapp 1390 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1390 57))
                        (display "\n")
                        (assert x8106))))
                    (g8103
                     (letrec*
                      ((x8107
                        (begin
                          (write '(funapp 1391 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1391 63))
                        (display "\n")
                        (assert x8107))))
                    (g8104
                     (letrec*
                      ((x8108
                        (letrec*
                         ((x8109
                           (begin
                             (write '(funapp 1394 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1394 61))
                           (display "\n")
                           (< index x8109)))))
                      (begin
                        (write '(funapp 1395 23))
                        (display "\n")
                        (assert x8108))))
                    (g8105
                     (letrec*
                      ((x-cnd8110
                        (begin
                          (write '(funapp 1398 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8110
                        (begin
                          (write '(funapp 1400 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8112
                           (begin
                             (write '(funapp 1402 34))
                             (display "\n")
                             (cdr l)))
                          (x8111
                           (begin
                             (write '(funapp 1402 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1403 26))
                           (display "\n")
                           (list-ref x8112 x8111)))))))
                   g8105)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8113
                     (letrec*
                      ((x-cnd8114
                        (begin
                          (write '(funapp 1410 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8114
                        a
                        (letrec*
                         ((x8115
                           (begin
                             (write '(funapp 1413 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1413 57))
                           (display "\n")
                           (gcd b x8115)))))))
                   g8113)))
               (block
                (lambda (x7572 y7573 color7574)
                  (letrec*
                   ((g8116
                     (letrec*
                      ((x8117
                        (letrec*
                         ((x8118
                           (letrec*
                            ((x8119
                              (begin
                                (write '(funapp 1424 37))
                                (display "\n")
                                (cons
                                 color7574
                                 (begin
                                   (write '(funapp 1424 52))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1425 29))
                              (display "\n")
                              (cons y7573 x8119)))))
                         (begin
                           (write '(funapp 1426 26))
                           (display "\n")
                           (cons x7572 x8118)))))
                      (begin
                        (write '(funapp 1427 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1427 28))
                           (display "\n")
                           'block)
                         x8117)))))
                   g8116)))
               (block?
                (lambda (block7571)
                  (letrec*
                   ((g8120
                     (letrec*
                      ((x8121
                        (begin
                          (write '(funapp 1433 39))
                          (display "\n")
                          (car block7571))))
                      (begin
                        (write '(funapp 1433 57))
                        (display "\n")
                        (eq?
                         x8121
                         (begin
                           (write '(funapp 1433 67))
                           (display "\n")
                           'block))))))
                   g8120)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8122
                     (letrec*
                      ((x8123
                        (begin
                          (write '(funapp 1438 45))
                          (display "\n")
                          (cdr block))))
                      (begin
                        (write '(funapp 1438 59))
                        (display "\n")
                        (car x8123)))))
                   g8122)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8124
                     (letrec*
                      ((x8125
                        (letrec*
                         ((x8126
                           (begin
                             (write '(funapp 1445 48))
                             (display "\n")
                             (cdr block))))
                         (begin
                           (write '(funapp 1445 62))
                           (display "\n")
                           (cdr x8126)))))
                      (begin
                        (write '(funapp 1446 23))
                        (display "\n")
                        (car x8125)))))
                   g8124)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8128
                        (letrec*
                         ((x8129
                           (letrec*
                            ((x8130
                              (begin
                                (write '(funapp 1455 51))
                                (display "\n")
                                (cdr block))))
                            (begin
                              (write '(funapp 1455 65))
                              (display "\n")
                              (cdr x8130)))))
                         (begin
                           (write '(funapp 1456 26))
                           (display "\n")
                           (cdr x8129)))))
                      (begin
                        (write '(funapp 1457 23))
                        (display "\n")
                        (car x8128)))))
                   g8127)))
               (tetra
                (lambda (center7579 blocks7580)
                  (letrec*
                   ((g8131
                     (letrec*
                      ((x8132
                        (letrec*
                         ((x8133
                           (begin
                             (write '(funapp 1466 34))
                             (display "\n")
                             (cons
                              blocks7580
                              (begin
                                (write '(funapp 1466 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1467 26))
                           (display "\n")
                           (cons center7579 x8133)))))
                      (begin
                        (write '(funapp 1468 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1468 28))
                           (display "\n")
                           'tetra)
                         x8132)))))
                   g8131)))
               (tetra?
                (lambda (tetra7578)
                  (letrec*
                   ((g8134
                     (letrec*
                      ((x8135
                        (begin
                          (write '(funapp 1474 39))
                          (display "\n")
                          (car tetra7578))))
                      (begin
                        (write '(funapp 1474 57))
                        (display "\n")
                        (eq?
                         x8135
                         (begin
                           (write '(funapp 1474 67))
                           (display "\n")
                           'tetra))))))
                   g8134)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8137
                        (begin
                          (write '(funapp 1479 45))
                          (display "\n")
                          (cdr tetra))))
                      (begin
                        (write '(funapp 1479 59))
                        (display "\n")
                        (car x8137)))))
                   g8136)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8138
                     (letrec*
                      ((x8139
                        (letrec*
                         ((x8140
                           (begin
                             (write '(funapp 1486 48))
                             (display "\n")
                             (cdr tetra))))
                         (begin
                           (write '(funapp 1486 62))
                           (display "\n")
                           (cdr x8140)))))
                      (begin
                        (write '(funapp 1487 23))
                        (display "\n")
                        (car x8139)))))
                   g8138)))
               (world
                (lambda (tetra7584 blocks7585)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((x8142
                        (letrec*
                         ((x8143
                           (begin
                             (write '(funapp 1496 34))
                             (display "\n")
                             (cons
                              blocks7585
                              (begin
                                (write '(funapp 1496 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1497 26))
                           (display "\n")
                           (cons tetra7584 x8143)))))
                      (begin
                        (write '(funapp 1498 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1498 28))
                           (display "\n")
                           'world)
                         x8142)))))
                   g8141)))
               (world?
                (lambda (world7583)
                  (letrec*
                   ((g8144
                     (letrec*
                      ((x8145
                        (begin
                          (write '(funapp 1504 39))
                          (display "\n")
                          (car world7583))))
                      (begin
                        (write '(funapp 1504 57))
                        (display "\n")
                        (eq?
                         x8145
                         (begin
                           (write '(funapp 1504 67))
                           (display "\n")
                           'world))))))
                   g8144)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8147
                        (begin
                          (write '(funapp 1509 45))
                          (display "\n")
                          (cdr world))))
                      (begin
                        (write '(funapp 1509 59))
                        (display "\n")
                        (car x8147)))))
                   g8146)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8148
                     (letrec*
                      ((x8149
                        (letrec*
                         ((x8150
                           (begin
                             (write '(funapp 1516 48))
                             (display "\n")
                             (cdr world))))
                         (begin
                           (write '(funapp 1516 62))
                           (display "\n")
                           (cdr x8150)))))
                      (begin
                        (write '(funapp 1517 23))
                        (display "\n")
                        (car x8149)))))
                   g8148)))
               (posn
                (lambda (x7589 y7590)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8152
                        (letrec*
                         ((x8153
                           (begin
                             (write '(funapp 1526 34))
                             (display "\n")
                             (cons
                              y7590
                              (begin
                                (write '(funapp 1526 45))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1527 26))
                           (display "\n")
                           (cons x7589 x8153)))))
                      (begin
                        (write '(funapp 1528 23))
                        (display "\n")
                        (cons
                         (begin (write '(funapp 1528 28)) (display "\n") 'posn)
                         x8152)))))
                   g8151)))
               (posn?
                (lambda (posn7588)
                  (letrec*
                   ((g8154
                     (letrec*
                      ((x8155
                        (begin
                          (write '(funapp 1534 39))
                          (display "\n")
                          (car posn7588))))
                      (begin
                        (write '(funapp 1534 56))
                        (display "\n")
                        (eq?
                         x8155
                         (begin
                           (write '(funapp 1534 66))
                           (display "\n")
                           'posn))))))
                   g8154)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8156
                     (letrec*
                      ((x8157
                        (begin
                          (write '(funapp 1539 45))
                          (display "\n")
                          (cdr posn))))
                      (begin
                        (write '(funapp 1539 58))
                        (display "\n")
                        (car x8157)))))
                   g8156)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8158
                     (letrec*
                      ((x8159
                        (letrec*
                         ((x8160
                           (begin
                             (write '(funapp 1546 48))
                             (display "\n")
                             (cdr posn))))
                         (begin
                           (write '(funapp 1546 61))
                           (display "\n")
                           (cdr x8160)))))
                      (begin
                        (write '(funapp 1547 23))
                        (display "\n")
                        (car x8159)))))
                   g8158)))
               (COLOR/C symbol?)
               (POSN/C
                (lambda (j7330 k7331 v7329)
                  (letrec*
                   ((g8161
                     (letrec*
                      ((checked7332
                        (letrec*
                         ((x8162
                           (begin
                             (write '(funapp 1557 34))
                             (display "\n")
                             (car v7329))))
                         (begin
                           (write '(funapp 1558 26))
                           (display "\n")
                           (real?/c j7330 k7331 x8162)))))
                      (letrec*
                       ((g8163
                         (letrec*
                          ((checked7333
                            (letrec*
                             ((x8164
                               (letrec*
                                ((x8165
                                  (begin
                                    (write '(funapp 1565 49))
                                    (display "\n")
                                    (cdr v7329))))
                                (begin
                                  (write '(funapp 1565 63))
                                  (display "\n")
                                  (car x8165)))))
                             (begin
                               (write '(funapp 1566 30))
                               (display "\n")
                               (real?/c j7330 k7331 x8164)))))
                          (letrec*
                           ((g8166
                             (letrec*
                              ((x8167
                                (letrec*
                                 ((x8168
                                   (begin
                                     (write '(funapp 1572 42))
                                     (display "\n")
                                     (cons
                                      checked7333
                                      (begin
                                        (write '(funapp 1572 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1573 34))
                                   (display "\n")
                                   (cons checked7332 x8168)))))
                              (begin
                                (write '(funapp 1574 31))
                                (display "\n")
                                (cons posn x8167)))))
                           g8166))))
                       g8163))))
                   g8161)))
               (BLOCK/C
                (lambda (j7336 k7337 v7335)
                  (letrec*
                   ((g8169
                     (letrec*
                      ((checked7338
                        (letrec*
                         ((x8170
                           (begin
                             (write '(funapp 1585 34))
                             (display "\n")
                             (car v7335))))
                         (begin
                           (write '(funapp 1586 26))
                           (display "\n")
                           (real?/c j7336 k7337 x8170)))))
                      (letrec*
                       ((g8171
                         (letrec*
                          ((checked7339
                            (letrec*
                             ((x8172
                               (letrec*
                                ((x8173
                                  (begin
                                    (write '(funapp 1593 49))
                                    (display "\n")
                                    (cdr v7335))))
                                (begin
                                  (write '(funapp 1593 63))
                                  (display "\n")
                                  (car x8173)))))
                             (begin
                               (write '(funapp 1594 30))
                               (display "\n")
                               (real?/c j7336 k7337 x8172)))))
                          (letrec*
                           ((g8174
                             (letrec*
                              ((checked7340
                                (letrec*
                                 ((x8175
                                   (letrec*
                                    ((x8176
                                      (letrec*
                                       ((x8177
                                         (begin
                                           (write '(funapp 1604 48))
                                           (display "\n")
                                           (cdr v7335))))
                                       (begin
                                         (write '(funapp 1605 40))
                                         (display "\n")
                                         (cdr x8177)))))
                                    (begin
                                      (write '(funapp 1606 37))
                                      (display "\n")
                                      (car x8176)))))
                                 (begin
                                   (write '(funapp 1607 34))
                                   (display "\n")
                                   (COLOR/C j7336 k7337 x8175)))))
                              (letrec*
                               ((g8178
                                 (letrec*
                                  ((x8179
                                    (letrec*
                                     ((x8180
                                       (letrec*
                                        ((x8181
                                          (begin
                                            (write '(funapp 1615 49))
                                            (display "\n")
                                            (cons
                                             checked7340
                                             (begin
                                               (write '(funapp 1615 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1616 41))
                                          (display "\n")
                                          (cons checked7339 x8181)))))
                                     (begin
                                       (write '(funapp 1617 38))
                                       (display "\n")
                                       (cons checked7338 x8180)))))
                                  (begin
                                    (write '(funapp 1618 35))
                                    (display "\n")
                                    (cons block x8179)))))
                               g8178))))
                           g8174))))
                       g8171))))
                   g8169)))
               (BSET/C
                (begin
                  (write '(funapp 1623 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7343 k7344 v7342)
                  (letrec*
                   ((g8182
                     (letrec*
                      ((checked7345
                        (letrec*
                         ((x8183
                           (begin
                             (write '(funapp 1631 34))
                             (display "\n")
                             (car v7342))))
                         (begin
                           (write '(funapp 1632 26))
                           (display "\n")
                           (POSN/C j7343 k7344 x8183)))))
                      (letrec*
                       ((g8184
                         (letrec*
                          ((checked7346
                            (letrec*
                             ((x8185
                               (letrec*
                                ((x8186
                                  (begin
                                    (write '(funapp 1639 49))
                                    (display "\n")
                                    (cdr v7342))))
                                (begin
                                  (write '(funapp 1639 63))
                                  (display "\n")
                                  (car x8186)))))
                             (begin
                               (write '(funapp 1640 30))
                               (display "\n")
                               (BSET/C j7343 k7344 x8185)))))
                          (letrec*
                           ((g8187
                             (letrec*
                              ((x8188
                                (letrec*
                                 ((x8189
                                   (begin
                                     (write '(funapp 1646 42))
                                     (display "\n")
                                     (cons
                                      checked7346
                                      (begin
                                        (write '(funapp 1646 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1647 34))
                                   (display "\n")
                                   (cons checked7345 x8189)))))
                              (begin
                                (write '(funapp 1648 31))
                                (display "\n")
                                (cons tetra x8188)))))
                           g8187))))
                       g8184))))
                   g8182)))
               (WORLD/C
                (lambda (j7349 k7350 v7348)
                  (letrec*
                   ((g8190
                     (letrec*
                      ((checked7351
                        (letrec*
                         ((x8191
                           (begin
                             (write '(funapp 1659 34))
                             (display "\n")
                             (car v7348))))
                         (begin
                           (write '(funapp 1660 26))
                           (display "\n")
                           (TETRA/C j7349 k7350 x8191)))))
                      (letrec*
                       ((g8192
                         (letrec*
                          ((checked7352
                            (letrec*
                             ((x8193
                               (letrec*
                                ((x8194
                                  (begin
                                    (write '(funapp 1667 49))
                                    (display "\n")
                                    (cdr v7348))))
                                (begin
                                  (write '(funapp 1667 63))
                                  (display "\n")
                                  (car x8194)))))
                             (begin
                               (write '(funapp 1668 30))
                               (display "\n")
                               (BSET/C j7349 k7350 x8193)))))
                          (letrec*
                           ((g8195
                             (letrec*
                              ((x8196
                                (letrec*
                                 ((x8197
                                   (begin
                                     (write '(funapp 1674 42))
                                     (display "\n")
                                     (cons
                                      checked7352
                                      (begin
                                        (write '(funapp 1674 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1675 34))
                                   (display "\n")
                                   (cons checked7351 x8197)))))
                              (begin
                                (write '(funapp 1676 31))
                                (display "\n")
                                (cons world x8196)))))
                           g8195))))
                       g8192))))
                   g8190)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8198
                     (letrec*
                      ((x-cnd8199
                        (letrec*
                         ((x8201
                           (begin
                             (write '(funapp 1687 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8200
                           (begin
                             (write '(funapp 1687 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1688 26))
                           (display "\n")
                           (= x8201 x8200)))))
                      (if x-cnd8199
                        (letrec*
                         ((x8203
                           (begin
                             (write '(funapp 1691 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8202
                           (begin
                             (write '(funapp 1691 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1692 26))
                           (display "\n")
                           (= x8203 x8202)))
                        #f))))
                   g8198)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8204
                     (letrec*
                      ((x-cnd8205
                        (letrec*
                         ((x8207
                           (begin
                             (write '(funapp 1705 34))
                             (display "\n")
                             (block-x b1)))
                          (x8206
                           (begin
                             (write '(funapp 1705 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1706 26))
                           (display "\n")
                           (= x8207 x8206)))))
                      (if x-cnd8205
                        (letrec*
                         ((x8209
                           (begin
                             (write '(funapp 1709 34))
                             (display "\n")
                             (block-y b1)))
                          (x8208
                           (begin
                             (write '(funapp 1709 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1710 26))
                           (display "\n")
                           (= x8209 x8208)))
                        #f))))
                   g8204)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8210
                     (letrec*
                      ((x8214
                        (letrec*
                         ((x8215
                           (begin
                             (write '(funapp 1718 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 1718 62))
                           (display "\n")
                           (+ dx x8215))))
                       (x8212
                        (letrec*
                         ((x8213
                           (begin
                             (write '(funapp 1719 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 1719 62))
                           (display "\n")
                           (+ dy x8213))))
                       (x8211
                        (begin
                          (write '(funapp 1720 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1721 23))
                        (display "\n")
                        (block x8214 x8212 x8211)))))
                   g8210)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8216
                     (letrec*
                      ((x8223
                        (letrec*
                         ((x8227
                           (begin
                             (write '(funapp 1730 34))
                             (display "\n")
                             (posn-x c)))
                          (x8224
                           (letrec*
                            ((x8226
                              (begin
                                (write '(funapp 1733 37))
                                (display "\n")
                                (posn-y c)))
                             (x8225
                              (begin
                                (write '(funapp 1733 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1734 29))
                              (display "\n")
                              (- x8226 x8225)))))
                         (begin
                           (write '(funapp 1735 26))
                           (display "\n")
                           (+ x8227 x8224))))
                       (x8218
                        (letrec*
                         ((x8222
                           (begin
                             (write '(funapp 1738 34))
                             (display "\n")
                             (posn-y c)))
                          (x8219
                           (letrec*
                            ((x8221
                              (begin
                                (write '(funapp 1741 37))
                                (display "\n")
                                (block-x b)))
                             (x8220
                              (begin
                                (write '(funapp 1741 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 1742 29))
                              (display "\n")
                              (- x8221 x8220)))))
                         (begin
                           (write '(funapp 1743 26))
                           (display "\n")
                           (+ x8222 x8219))))
                       (x8217
                        (begin
                          (write '(funapp 1744 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1745 23))
                        (display "\n")
                        (block x8223 x8218 x8217)))))
                   g8216)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8228
                     (letrec*
                      ((x8229
                        (letrec*
                         ((x8230
                           (begin
                             (write '(funapp 1754 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1755 26))
                           (display "\n")
                           (block-rotate-ccw c x8230)))))
                      (begin
                        (write '(funapp 1756 23))
                        (display "\n")
                        (block-rotate-ccw c x8229)))))
                   g8228)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8231
                     (letrec*
                      ((x-cnd8232
                        (begin
                          (write '(funapp 1763 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8232
                        (letrec* ((g8233 #f)) g8233)
                        (letrec*
                         ((g8234
                           (letrec*
                            ((x8237
                              (letrec*
                               ((x8238
                                 (begin
                                   (write '(funapp 1769 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1769 65))
                                 (display "\n")
                                 (p? x8238))))
                             (x8235
                              (letrec*
                               ((x8236
                                 (begin
                                   (write '(funapp 1771 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1771 59))
                                 (display "\n")
                                 (ormap p? x8236)))))
                            (begin
                              (write '(funapp 1772 29))
                              (display "\n")
                              (or x8237 x8235)))))
                         g8234)))))
                   g8231)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8239
                     (letrec*
                      ((x-cnd8240
                        (begin
                          (write '(funapp 1780 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8240
                        (letrec* ((g8241 #t)) g8241)
                        (letrec*
                         ((g8242
                           (letrec*
                            ((x8245
                              (letrec*
                               ((x8246
                                 (begin
                                   (write '(funapp 1786 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1786 65))
                                 (display "\n")
                                 (p? x8246))))
                             (x8243
                              (letrec*
                               ((x8244
                                 (begin
                                   (write '(funapp 1788 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1788 59))
                                 (display "\n")
                                 (andmap p? x8244)))))
                            (begin
                              (write '(funapp 1789 29))
                              (display "\n")
                              (and x8245 x8243)))))
                         g8242)))))
                   g8239)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8247
                     (letrec*
                      ((x-cnd8248
                        (begin
                          (write '(funapp 1797 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8248
                        (letrec* ((g8249 null)) g8249)
                        (letrec*
                         ((x-cnd8250
                           (letrec*
                            ((x8251
                              (begin
                                (write '(funapp 1801 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1801 66))
                              (display "\n")
                              (p? x8251)))))
                         (if x-cnd8250
                           (letrec*
                            ((g8252
                              (letrec*
                               ((x8255
                                 (begin
                                   (write '(funapp 1806 40))
                                   (display "\n")
                                   (car xs)))
                                (x8253
                                 (letrec*
                                  ((x8254
                                    (begin
                                      (write '(funapp 1809 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1810 35))
                                    (display "\n")
                                    (filter p? x8254)))))
                               (begin
                                 (write '(funapp 1811 32))
                                 (display "\n")
                                 (cons x8255 x8253)))))
                            g8252)
                           (letrec*
                            ((g8256
                              (letrec*
                               ((x8257
                                 (begin
                                   (write '(funapp 1815 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1815 59))
                                 (display "\n")
                                 (filter p? x8257)))))
                            g8256)))))))
                   g8247)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8258
                     (letrec*
                      ((x-cnd8259
                        (begin
                          (write '(funapp 1823 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8259
                        (letrec* ((g8260 r)) g8260)
                        (letrec*
                         ((g8261
                           (letrec*
                            ((x8264
                              (begin
                                (write '(funapp 1829 37))
                                (display "\n")
                                (car l)))
                             (x8262
                              (letrec*
                               ((x8263
                                 (begin
                                   (write '(funapp 1831 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1831 58))
                                 (display "\n")
                                 (append x8263 r)))))
                            (begin
                              (write '(funapp 1832 29))
                              (display "\n")
                              (cons x8264 x8262)))))
                         g8261)))))
                   g8258)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8265
                     (letrec*
                      ((x-cnd8266
                        (begin
                          (write '(funapp 1840 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8266
                        (letrec* ((g8267 a)) g8267)
                        (letrec*
                         ((g8268
                           (letrec*
                            ((x8271
                              (begin
                                (write '(funapp 1846 37))
                                (display "\n")
                                (car xs)))
                             (x8269
                              (letrec*
                               ((x8270
                                 (begin
                                   (write '(funapp 1848 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1848 59))
                                 (display "\n")
                                 (foldr f a x8270)))))
                            (begin
                              (write '(funapp 1849 29))
                              (display "\n")
                              (f x8271 x8269)))))
                         g8268)))))
                   g8265)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8272
                     (letrec*
                      ((x8273
                        (letrec*
                         ((x8275
                           (begin
                             (write '(funapp 1859 34))
                             (display "\n")
                             (c)))
                          (x8274
                           (begin
                             (write '(funapp 1859 46))
                             (display "\n")
                             (block=? b c))))
                         (begin
                           (write '(funapp 1860 26))
                           (display "\n")
                           (λ x8275 x8274)))))
                      (begin
                        (write '(funapp 1861 23))
                        (display "\n")
                        (ormap x8273 bs)))))
                   g8272)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8276
                     (letrec*
                      ((x8277
                        (letrec*
                         ((x8279
                           (begin
                             (write '(funapp 1870 34))
                             (display "\n")
                             (b)))
                          (x8278
                           (begin
                             (write '(funapp 1870 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1871 26))
                           (display "\n")
                           (λ x8279 x8278)))))
                      (begin
                        (write '(funapp 1872 23))
                        (display "\n")
                        (andmap x8277 bs1)))))
                   g8276)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8280
                     (letrec*
                      ((x-cnd8281
                        (begin
                          (write '(funapp 1879 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8281
                        (begin
                          (write '(funapp 1880 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8280)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8282
                     (letrec*
                      ((x8283
                        (letrec*
                         ((x8285
                           (begin
                             (write '(funapp 1889 34))
                             (display "\n")
                             (b)))
                          (x8284
                           (begin
                             (write '(funapp 1889 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1890 26))
                           (display "\n")
                           (λ x8285 x8284)))))
                      (begin
                        (write '(funapp 1891 23))
                        (display "\n")
                        (filter x8283 bs1)))))
                   g8282)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8286
                     (begin
                       (write '(funapp 1894 47))
                       (display "\n")
                       (length bs))))
                   g8286)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8287
                     (letrec*
                      ((x8288
                        (letrec*
                         ((x8290
                           (begin
                             (write '(funapp 1902 34))
                             (display "\n")
                             (b)))
                          (x8289
                           (begin
                             (write '(funapp 1902 46))
                             (display "\n")
                             (block-move dx dy b))))
                         (begin
                           (write '(funapp 1903 26))
                           (display "\n")
                           (λ x8290 x8289)))))
                      (begin
                        (write '(funapp 1904 23))
                        (display "\n")
                        (map x8288 bs)))))
                   g8287)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8291
                     (letrec*
                      ((x8292
                        (letrec*
                         ((x8294
                           (begin
                             (write '(funapp 1913 34))
                             (display "\n")
                             (b)))
                          (x8293
                           (begin
                             (write '(funapp 1913 46))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1914 26))
                           (display "\n")
                           (λ x8294 x8293)))))
                      (begin
                        (write '(funapp 1915 23))
                        (display "\n")
                        (map x8292 bs)))))
                   g8291)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8295
                     (letrec*
                      ((x8296
                        (letrec*
                         ((x8298
                           (begin
                             (write '(funapp 1924 34))
                             (display "\n")
                             (b)))
                          (x8297
                           (begin
                             (write '(funapp 1924 46))
                             (display "\n")
                             (block-rotate-cw c b))))
                         (begin
                           (write '(funapp 1925 26))
                           (display "\n")
                           (λ x8298 x8297)))))
                      (begin
                        (write '(funapp 1926 23))
                        (display "\n")
                        (map x8296 bs)))))
                   g8295)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8299
                     (letrec*
                      ((x8300
                        (letrec*
                         ((x8304
                           (begin
                             (write '(funapp 1935 34))
                             (display "\n")
                             (b)))
                          (x8301
                           (letrec*
                            ((x8303
                              (begin
                                (write '(funapp 1938 37))
                                (display "\n")
                                (block-x b)))
                             (x8302
                              (begin
                                (write '(funapp 1938 57))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1939 29))
                              (display "\n")
                              (block x8303 x8302 c)))))
                         (begin
                           (write '(funapp 1940 26))
                           (display "\n")
                           (λ x8304 x8301)))))
                      (begin
                        (write '(funapp 1941 23))
                        (display "\n")
                        (map x8300 bs)))))
                   g8299)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8305
                     (letrec*
                      ((x8306
                        (letrec*
                         ((x8309
                           (begin
                             (write '(funapp 1950 34))
                             (display "\n")
                             (b)))
                          (x8307
                           (letrec*
                            ((x8308
                              (begin
                                (write '(funapp 1951 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1951 65))
                              (display "\n")
                              (= i x8308)))))
                         (begin
                           (write '(funapp 1952 26))
                           (display "\n")
                           (λ x8309 x8307)))))
                      (begin
                        (write '(funapp 1953 23))
                        (display "\n")
                        (filter x8306 bs)))))
                   g8305)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8310
                     (letrec*
                      ((x8311
                        (letrec*
                         ((x8312
                           (begin
                             (write '(funapp 1962 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 1963 26))
                           (display "\n")
                           (blocks-count x8312)))))
                      (begin
                        (write '(funapp 1964 23))
                        (display "\n")
                        (= board-width x8311)))))
                   g8310)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8313
                     (letrec*
                      ((x8314
                        (letrec*
                         ((x8317
                           (begin
                             (write '(funapp 1973 34))
                             (display "\n")
                             (b)))
                          (x8315
                           (letrec*
                            ((x8316
                              (begin
                                (write '(funapp 1974 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1974 65))
                              (display "\n")
                              (<= x8316 0)))))
                         (begin
                           (write '(funapp 1975 26))
                           (display "\n")
                           (λ x8317 x8315)))))
                      (begin
                        (write '(funapp 1976 23))
                        (display "\n")
                        (ormap x8314 bs)))))
                   g8313)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8318
                     (letrec*
                      ((x8319
                        (letrec*
                         ((x8324
                           (begin
                             (write '(funapp 1985 34))
                             (display "\n")
                             (b bs)))
                          (x8320
                           (letrec*
                            ((x-cnd8321
                              (begin
                                (write '(funapp 1988 41))
                                (display "\n")
                                (blocks-contains? bs b))))
                            (if x-cnd8321
                              (letrec* ((g8322 bs)) g8322)
                              (letrec*
                               ((g8323
                                 (begin
                                   (write '(funapp 1991 48))
                                   (display "\n")
                                   (cons b bs))))
                               g8323)))))
                         (begin
                           (write '(funapp 1992 26))
                           (display "\n")
                           (λ x8324 x8320)))))
                      (begin
                        (write '(funapp 1993 23))
                        (display "\n")
                        (foldr x8319 bs2 bs1)))))
                   g8318)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8325
                     (letrec*
                      ((x8326
                        (letrec*
                         ((x8329
                           (begin
                             (write '(funapp 2002 34))
                             (display "\n")
                             (b n)))
                          (x8327
                           (letrec*
                            ((x8328
                              (begin
                                (write '(funapp 2004 45))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2004 59))
                              (display "\n")
                              (max x8328 n)))))
                         (begin
                           (write '(funapp 2005 26))
                           (display "\n")
                           (λ x8329 x8327)))))
                      (begin
                        (write '(funapp 2006 23))
                        (display "\n")
                        (foldr x8326 0 bs)))))
                   g8325)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8330
                     (letrec*
                      ((x8331
                        (letrec*
                         ((x8334
                           (begin
                             (write '(funapp 2015 34))
                             (display "\n")
                             (b n)))
                          (x8332
                           (letrec*
                            ((x8333
                              (begin
                                (write '(funapp 2017 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2017 59))
                              (display "\n")
                              (min x8333 n)))))
                         (begin
                           (write '(funapp 2018 26))
                           (display "\n")
                           (λ x8334 x8332)))))
                      (begin
                        (write '(funapp 2019 23))
                        (display "\n")
                        (foldr x8331 board-width bs)))))
                   g8330)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8335
                     (letrec*
                      ((x8336
                        (letrec*
                         ((x8339
                           (begin
                             (write '(funapp 2028 34))
                             (display "\n")
                             (b n)))
                          (x8337
                           (letrec*
                            ((x8338
                              (begin
                                (write '(funapp 2030 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2030 59))
                              (display "\n")
                              (max x8338 n)))))
                         (begin
                           (write '(funapp 2031 26))
                           (display "\n")
                           (λ x8339 x8337)))))
                      (begin
                        (write '(funapp 2032 23))
                        (display "\n")
                        (foldr x8336 0 bs)))))
                   g8335)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8340
                     (begin
                       (write '(funapp 2036 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8340)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8341
                     (letrec*
                      ((x-cnd8342
                        (begin
                          (write '(funapp 2042 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8342
                        (letrec* ((g8343 empty)) g8343)
                        (letrec*
                         ((x-cnd8344
                           (begin
                             (write '(funapp 2046 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8344
                           (letrec*
                            ((g8345
                              (letrec*
                               ((x8347
                                 (begin
                                   (write '(funapp 2051 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8346
                                 (begin
                                   (write '(funapp 2051 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2052 32))
                                 (display "\n")
                                 (elim-row bs x8347 x8346)))))
                            g8345)
                           (letrec*
                            ((g8348
                              (letrec*
                               ((x8351
                                 (letrec*
                                  ((x8352
                                    (begin
                                      (write '(funapp 2059 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2060 35))
                                    (display "\n")
                                    (elim-row bs x8352 offset))))
                                (x8349
                                 (letrec*
                                  ((x8350
                                    (begin
                                      (write '(funapp 2063 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2064 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8350)))))
                               (begin
                                 (write '(funapp 2065 32))
                                 (display "\n")
                                 (blocks-union x8351 x8349)))))
                            g8348)))))))
                   g8341)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8353
                     (letrec*
                      ((x8356
                        (letrec*
                         ((x8360
                           (letrec*
                            ((x8361
                              (letrec*
                               ((x8362
                                 (begin
                                   (write '(funapp 2079 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2080 32))
                                 (display "\n")
                                 (posn-x x8362)))))
                            (begin
                              (write '(funapp 2081 29))
                              (display "\n")
                              (+ dx x8361))))
                          (x8357
                           (letrec*
                            ((x8358
                              (letrec*
                               ((x8359
                                 (begin
                                   (write '(funapp 2086 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2087 32))
                                 (display "\n")
                                 (posn-y x8359)))))
                            (begin
                              (write '(funapp 2088 29))
                              (display "\n")
                              (+ dy x8358)))))
                         (begin
                           (write '(funapp 2089 26))
                           (display "\n")
                           (posn x8360 x8357))))
                       (x8354
                        (letrec*
                         ((x8355
                           (begin
                             (write '(funapp 2092 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2093 26))
                           (display "\n")
                           (blocks-move dx dy x8355)))))
                      (begin
                        (write '(funapp 2094 23))
                        (display "\n")
                        (tetra x8356 x8354)))))
                   g8353)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8363
                     (letrec*
                      ((x8367
                        (begin
                          (write '(funapp 2101 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8364
                        (letrec*
                         ((x8366
                           (begin
                             (write '(funapp 2104 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8365
                           (begin
                             (write '(funapp 2104 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2105 26))
                           (display "\n")
                           (blocks-rotate-ccw x8366 x8365)))))
                      (begin
                        (write '(funapp 2106 23))
                        (display "\n")
                        (tetra x8367 x8364)))))
                   g8363)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8368
                     (letrec*
                      ((x8372
                        (begin
                          (write '(funapp 2113 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8369
                        (letrec*
                         ((x8371
                           (begin
                             (write '(funapp 2116 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8370
                           (begin
                             (write '(funapp 2116 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2117 26))
                           (display "\n")
                           (blocks-rotate-cw x8371 x8370)))))
                      (begin
                        (write '(funapp 2118 23))
                        (display "\n")
                        (tetra x8372 x8369)))))
                   g8368)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8373
                     (letrec*
                      ((x8374
                        (letrec*
                         ((x8375
                           (letrec*
                            ((x8376
                              (begin
                                (write '(funapp 2129 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2130 29))
                              (display "\n")
                              (blocks-intersect x8376 bs)))))
                         (begin
                           (write '(funapp 2131 26))
                           (display "\n")
                           (false? x8375)))))
                      (begin
                        (write '(funapp 2132 23))
                        (display "\n")
                        (false? x8374)))))
                   g8373)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8377
                     (letrec*
                      ((x8380
                        (begin
                          (write '(funapp 2139 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8378
                        (letrec*
                         ((x8379
                           (begin
                             (write '(funapp 2142 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2143 26))
                           (display "\n")
                           (blocks-change-color x8379 c)))))
                      (begin
                        (write '(funapp 2144 23))
                        (display "\n")
                        (tetra x8380 x8378)))))
                   g8377)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8381
                     (letrec*
                      ((x8382
                        (letrec*
                         ((x8388
                           (begin
                             (write '(funapp 2153 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8383
                           (letrec*
                            ((x8387
                              (begin
                                (write '(funapp 2156 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8386
                              (begin
                                (write '(funapp 2157 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8385
                              (begin
                                (write '(funapp 2158 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8384
                              (begin
                                (write '(funapp 2159 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2160 29))
                              (display "\n")
                              (list x8387 x8386 x8385 x8384)))))
                         (begin
                           (write '(funapp 2161 26))
                           (display "\n")
                           (tetra x8388 x8383)))))
                      (begin
                        (write '(funapp 2162 23))
                        (display "\n")
                        (tetra-move 3 0 x8382)))))
                   g8381)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8389
                     (letrec*
                      ((x8395
                        (begin
                          (write '(funapp 2169 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8390
                        (letrec*
                         ((x8391
                           (letrec*
                            ((x8393
                              (letrec*
                               ((x8394
                                 (begin
                                   (write '(funapp 2176 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2177 32))
                                 (display "\n")
                                 (tetra-blocks x8394))))
                             (x8392
                              (begin
                                (write '(funapp 2178 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2179 29))
                              (display "\n")
                              (blocks-union x8393 x8392)))))
                         (begin
                           (write '(funapp 2180 26))
                           (display "\n")
                           (eliminate-full-rows x8391)))))
                      (begin
                        (write '(funapp 2181 23))
                        (display "\n")
                        (world x8395 x8390)))))
                   g8389)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8396
                     (letrec*
                      ((x-cnd8397
                        (begin
                          (write '(funapp 2188 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8397
                        (letrec* ((g8398 w)) g8398)
                        (letrec*
                         ((g8399
                           (letrec*
                            ((x8400
                              (letrec*
                               ((x8402
                                 (letrec*
                                  ((x8403
                                    (begin
                                      (write '(funapp 2198 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2199 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8403))))
                                (x8401
                                 (begin
                                   (write '(funapp 2200 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2201 32))
                                 (display "\n")
                                 (world x8402 x8401)))))
                            (begin
                              (write '(funapp 2202 29))
                              (display "\n")
                              (world-jump-down x8400)))))
                         g8399)))))
                   g8396)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8404
                     (letrec*
                      ((x8406
                        (letrec*
                         ((x8407
                           (begin
                             (write '(funapp 2212 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2213 26))
                           (display "\n")
                           (tetra-move 0 1 x8407))))
                       (x8405
                        (begin
                          (write '(funapp 2214 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2215 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8406 x8405)))))
                   g8404)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8408
                     (letrec*
                      ((x8410
                        (letrec*
                         ((x8411
                           (letrec*
                            ((x8412
                              (begin
                                (write '(funapp 2226 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2227 29))
                              (display "\n")
                              (tetra-blocks x8412)))))
                         (begin
                           (write '(funapp 2228 26))
                           (display "\n")
                           (blocks-max-y x8411))))
                       (x8409
                        (begin
                          (write '(funapp 2229 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2230 23))
                        (display "\n")
                        (= x8410 x8409)))))
                   g8408)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8413
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 2237 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8414
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 2239 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8414))))
                   g8413)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8415
                     (letrec*
                      ((x-cnd8416
                        (begin
                          (write '(funapp 2247 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8416
                        (letrec*
                         ((g8417
                           (begin
                             (write '(funapp 2249 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8417)
                        (letrec*
                         ((g8418
                           (letrec*
                            ((x8420
                              (letrec*
                               ((x8421
                                 (begin
                                   (write '(funapp 2255 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2256 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8421))))
                             (x8419
                              (begin
                                (write '(funapp 2257 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2258 29))
                              (display "\n")
                              (world x8420 x8419)))))
                         g8418)))))
                   g8415)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8422
                     (letrec*
                      ((x-cnd8423
                        (letrec*
                         ((x8429
                           (letrec*
                            ((x8430
                              (letrec*
                               ((x8431
                                 (begin
                                   (write '(funapp 2272 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2273 32))
                                 (display "\n")
                                 (blocks-min-x x8431)))))
                            (begin
                              (write '(funapp 2274 29))
                              (display "\n")
                              (< x8430 0))))
                          (x8426
                           (letrec*
                            ((x8427
                              (letrec*
                               ((x8428
                                 (begin
                                   (write '(funapp 2279 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2280 32))
                                 (display "\n")
                                 (blocks-max-x x8428)))))
                            (begin
                              (write '(funapp 2281 29))
                              (display "\n")
                              (>= x8427 board-width))))
                          (x8424
                           (letrec*
                            ((x8425
                              (begin
                                (write '(funapp 2284 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2285 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8425)))))
                         (begin
                           (write '(funapp 2286 26))
                           (display "\n")
                           (or x8429 x8426 x8424)))))
                      (if x-cnd8423
                        (letrec* ((g8432 w)) g8432)
                        (letrec*
                         ((g8433
                           (letrec*
                            ((x8434
                              (begin
                                (write '(funapp 2292 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2293 29))
                              (display "\n")
                              (world new-tetra x8434)))))
                         g8433)))))
                   g8422)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8435
                     (letrec*
                      ((x8436
                        (letrec*
                         ((x8437
                           (begin
                             (write '(funapp 2303 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2304 26))
                           (display "\n")
                           (tetra-move dx dy x8437)))))
                      (begin
                        (write '(funapp 2305 23))
                        (display "\n")
                        (try-new-tetra w x8436)))))
                   g8435)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8438
                     (letrec*
                      ((x8439
                        (letrec*
                         ((x8440
                           (begin
                             (write '(funapp 2314 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2315 26))
                           (display "\n")
                           (tetra-rotate-ccw x8440)))))
                      (begin
                        (write '(funapp 2316 23))
                        (display "\n")
                        (try-new-tetra w x8439)))))
                   g8438)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8441
                     (letrec*
                      ((x8442
                        (letrec*
                         ((x8443
                           (begin
                             (write '(funapp 2325 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2326 26))
                           (display "\n")
                           (tetra-rotate-cw x8443)))))
                      (begin
                        (write '(funapp 2327 23))
                        (display "\n")
                        (try-new-tetra w x8442)))))
                   g8441)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8444
                     (letrec*
                      ((x8445
                        (letrec*
                         ((x8446
                           (letrec*
                            ((x8447
                              (begin
                                (write '(funapp 2338 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2339 29))
                              (display "\n")
                              (world-tetra x8447)))))
                         (begin
                           (write '(funapp 2340 26))
                           (display "\n")
                           (tetra-change-color
                            x8446
                            (begin
                              (write '(funapp 2340 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2341 23))
                        (display "\n")
                        (tetra-blocks x8445)))))
                   g8444)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8448
                     (letrec*
                      ((x-cnd8449
                        (begin
                          (write '(funapp 2348 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8449
                        (letrec*
                         ((g8450
                           (begin
                             (write '(funapp 2350 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8450)
                        (letrec*
                         ((x-cnd8451
                           (begin
                             (write '(funapp 2352 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8451
                           (letrec*
                            ((g8452
                              (begin
                                (write '(funapp 2354 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8452)
                           (letrec*
                            ((x-cnd8453
                              (begin
                                (write '(funapp 2356 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8453
                              (letrec*
                               ((g8454
                                 (begin
                                   (write '(funapp 2358 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8454)
                              (letrec*
                               ((x-cnd8455
                                 (begin
                                   (write '(funapp 2360 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8455
                                 (letrec*
                                  ((g8456
                                    (begin
                                      (write '(funapp 2362 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8456)
                                 (letrec*
                                  ((x-cnd8457
                                    (begin
                                      (write '(funapp 2364 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8457
                                    (letrec*
                                     ((g8458
                                       (begin
                                         (write '(funapp 2367 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8458)
                                    (letrec* ((g8459 w)) g8459)))))))))))))
                   g8448)))
               (image
                (lambda ()
                  (letrec*
                   ((g8460
                     (begin
                       (write '(funapp 2371 51))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2371 56)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2371 63))
                          (display "\n")
                          '())))))
                   g8460)))
               (image?
                (lambda (image7593)
                  (letrec*
                   ((g8461
                     (letrec*
                      ((x8462
                        (begin
                          (write '(funapp 2376 39))
                          (display "\n")
                          (car image7593))))
                      (begin
                        (write '(funapp 2376 57))
                        (display "\n")
                        (eq?
                         x8462
                         (begin
                           (write '(funapp 2376 67))
                           (display "\n")
                           'image))))))
                   g8461)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8463
                     (begin (write '(funapp 2378 58)) (display "\n") (image))))
                   g8463)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8464
                     (begin (write '(funapp 2379 57)) (display "\n") (image))))
                   g8464)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8465
                     (begin (write '(funapp 2380 62)) (display "\n") (image))))
                   g8465)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8466
                     (begin (write '(funapp 2382 54)) (display "\n") (image))))
                   g8466)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8467
                     (begin (write '(funapp 2383 60)) (display "\n") (image))))
                   g8467)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8468
                     (letrec*
                      ((x-cnd8469
                        (letrec*
                         ((x8470
                           (begin
                             (write '(funapp 2389 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2389 63))
                           (display "\n")
                           (null? x8470)))))
                      (if x-cnd8469
                        (letrec*
                         ((g8471
                           (begin
                             (write '(funapp 2391 42))
                             (display "\n")
                             (car xs))))
                         g8471)
                        (letrec*
                         ((g8472
                           (letrec*
                            ((x8473
                              (begin
                                (write '(funapp 2395 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2396 29))
                              (display "\n")
                              (list-pick-random x8473)))))
                         g8472)))))
                   g8468)))
               (neg-1
                (begin (write '(funapp 2399 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8474
                     (letrec*
                      ((x8478
                        (letrec*
                         ((x8479
                           (letrec*
                            ((x8483
                              (letrec*
                               ((x8484
                                 (begin
                                   (write '(funapp 2411 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2412 32))
                                 (display "\n")
                                 (tetra-blocks x8484))))
                             (x8480
                              (letrec*
                               ((x8482
                                 (begin
                                   (write '(funapp 2415 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8481
                                 (begin
                                   (write '(funapp 2416 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2417 32))
                                 (display "\n")
                                 (append x8482 x8481)))))
                            (begin
                              (write '(funapp 2418 29))
                              (display "\n")
                              (append x8483 x8480)))))
                         (begin
                           (write '(funapp 2419 26))
                           (display "\n")
                           (blocks->image x8479))))
                       (x8475
                        (letrec*
                         ((x8477
                           (begin
                             (write '(funapp 2422 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8476
                           (begin
                             (write '(funapp 2423 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2424 26))
                           (display "\n")
                           (empty-scene x8477 x8476)))))
                      (begin
                        (write '(funapp 2425 23))
                        (display "\n")
                        (place-image x8478 0 0 x8475)))))
                   g8474)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8485
                     (letrec*
                      ((x8491
                        (letrec*
                         ((x8497
                           (begin
                             (write '(funapp 2434 34))
                             (display "\n")
                             (b img)))
                          (x8492
                           (letrec*
                            ((x-cnd8493
                              (letrec*
                               ((x8494
                                 (begin
                                   (write '(funapp 2438 48))
                                   (display "\n")
                                   (block-y b))))
                               (begin
                                 (write '(funapp 2438 62))
                                 (display "\n")
                                 (<= 0 x8494)))))
                            (if x-cnd8493
                              (letrec*
                               ((g8495
                                 (begin
                                   (write '(funapp 2440 48))
                                   (display "\n")
                                   (place-block b img))))
                               g8495)
                              (letrec* ((g8496 img)) g8496)))))
                         (begin
                           (write '(funapp 2442 26))
                           (display "\n")
                           (λ x8497 x8492))))
                       (x8486
                        (letrec*
                         ((x8489
                           (letrec*
                            ((x8490
                              (begin
                                (write '(funapp 2447 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2448 29))
                              (display "\n")
                              (add1 x8490))))
                          (x8487
                           (letrec*
                            ((x8488
                              (begin
                                (write '(funapp 2451 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2452 29))
                              (display "\n")
                              (add1 x8488)))))
                         (begin
                           (write '(funapp 2453 26))
                           (display "\n")
                           (empty-scene x8489 x8487)))))
                      (begin
                        (write '(funapp 2454 23))
                        (display "\n")
                        (foldr x8491 x8486 bs)))))
                   g8485)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8498
                     (letrec*
                      ((x8502
                        (letrec*
                         ((x8505
                           (begin
                             (write '(funapp 2463 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8504
                           (begin
                             (write '(funapp 2464 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8503
                           (begin
                             (write '(funapp 2465 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2466 26))
                           (display "\n")
                           (rectangle
                            x8505
                            x8504
                            (begin
                              (write '(funapp 2466 48))
                              (display "\n")
                              'solid)
                            x8503))))
                       (x8499
                        (letrec*
                         ((x8501
                           (begin
                             (write '(funapp 2469 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8500
                           (begin
                             (write '(funapp 2469 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2470 26))
                           (display "\n")
                           (rectangle
                            x8501
                            x8500
                            (begin
                              (write '(funapp 2470 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2470 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2471 23))
                        (display "\n")
                        (overlay x8502 x8499)))))
                   g8498)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8506
                     (letrec*
                      ((x8515
                        (begin
                          (write '(funapp 2478 31))
                          (display "\n")
                          (block->image b)))
                       (x8511
                        (letrec*
                         ((x8513
                           (letrec*
                            ((x8514
                              (begin
                                (write '(funapp 2483 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2484 29))
                              (display "\n")
                              (* x8514 block-size))))
                          (x8512
                           (begin
                             (write '(funapp 2485 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2486 26))
                           (display "\n")
                           (+ x8513 x8512))))
                       (x8507
                        (letrec*
                         ((x8509
                           (letrec*
                            ((x8510
                              (begin
                                (write '(funapp 2491 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2492 29))
                              (display "\n")
                              (* x8510 block-size))))
                          (x8508
                           (begin
                             (write '(funapp 2493 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2494 26))
                           (display "\n")
                           (+ x8509 x8508)))))
                      (begin
                        (write '(funapp 2495 23))
                        (display "\n")
                        (place-image x8515 x8511 x8507 scene)))))
                   g8506)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8516
                     (letrec*
                      ((x8517
                        (begin
                          (write '(funapp 2502 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2503 23))
                        (display "\n")
                        (world x8517 null)))))
                   g8516))))
              (letrec*
               ((g8518
                 (letrec*
                  ((x8581
                    (begin
                      (write '(funapp 2509 21))
                      (display "\n")
                      ((lambda (j7356 k7357 f7358)
                         (letrec*
                          ((g8582
                            (lambda (g7354 g7355)
                              (letrec*
                               ((g8583
                                 (letrec*
                                  ((x8584
                                    (letrec*
                                     ((x8586
                                       (begin
                                         (write '(funapp 2518 44))
                                         (display "\n")
                                         (POSN/C j7356 k7357 g7354)))
                                      (x8585
                                       (begin
                                         (write '(funapp 2519 44))
                                         (display "\n")
                                         (POSN/C j7356 k7357 g7355))))
                                     (begin
                                       (write '(funapp 2520 36))
                                       (display "\n")
                                       (f7358 x8586 x8585)))))
                                  (begin
                                    (write '(funapp 2521 33))
                                    (display "\n")
                                    (boolean?/c j7356 k7357 x8584)))))
                               g8583))))
                          g8582))
                       (begin (write '(funapp 2524 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2525 21))
                         (display "\n")
                         'importer)
                       posn=?)))
                   (x8576
                    (letrec*
                     ((x8577
                       (letrec*
                        ((x8580 (input))
                         (x8578
                          (letrec*
                           ((x8579 (input)))
                           (begin
                             (write '(funapp 2532 60))
                             (display "\n")
                             (cons
                              x8579
                              (begin
                                (write '(funapp 2532 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2533 25))
                          (display "\n")
                          (cons x8580 x8578)))))
                     (begin
                       (write '(funapp 2534 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2534 27)) (display "\n") 'posn)
                        x8577))))
                   (x8571
                    (letrec*
                     ((x8572
                       (letrec*
                        ((x8575 (input))
                         (x8573
                          (letrec*
                           ((x8574 (input)))
                           (begin
                             (write '(funapp 2540 60))
                             (display "\n")
                             (cons
                              x8574
                              (begin
                                (write '(funapp 2540 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2541 25))
                          (display "\n")
                          (cons x8575 x8573)))))
                     (begin
                       (write '(funapp 2542 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2542 27)) (display "\n") 'posn)
                        x8572)))))
                  (begin
                    (write '(funapp 2543 19))
                    (display "\n")
                    (x8581 x8576 x8571))))
                (g8519
                 (begin
                   (write '(funapp 2544 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2544 30)) (display "\n") 'module)
                    (begin (write '(funapp 2544 38)) (display "\n") 'importer)
                    COLOR/C)))
                (g8520
                 (begin
                   (write '(funapp 2545 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2545 30)) (display "\n") 'module)
                    (begin (write '(funapp 2545 38)) (display "\n") 'importer)
                    POSN/C)))
                (g8521
                 (begin
                   (write '(funapp 2546 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2546 30)) (display "\n") 'module)
                    (begin (write '(funapp 2546 38)) (display "\n") 'importer)
                    BLOCK/C)))
                (g8522
                 (begin
                   (write '(funapp 2547 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2547 30)) (display "\n") 'module)
                    (begin (write '(funapp 2547 38)) (display "\n") 'importer)
                    TETRA/C)))
                (g8523
                 (begin
                   (write '(funapp 2548 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2548 30)) (display "\n") 'module)
                    (begin (write '(funapp 2548 38)) (display "\n") 'importer)
                    WORLD/C)))
                (g8524
                 (begin
                   (write '(funapp 2549 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2549 30)) (display "\n") 'module)
                    (begin (write '(funapp 2549 38)) (display "\n") 'importer)
                    BSET/C)))
                (g8525
                 (begin
                   (write '(funapp 2550 24))
                   (display "\n")
                   (integer?
                    (begin (write '(funapp 2550 33)) (display "\n") 'module)
                    (begin (write '(funapp 2550 41)) (display "\n") 'importer)
                    block-size)))
                (g8526
                 (begin
                   (write '(funapp 2551 24))
                   (display "\n")
                   (integer?
                    (begin (write '(funapp 2551 33)) (display "\n") 'module)
                    (begin (write '(funapp 2551 41)) (display "\n") 'importer)
                    board-width)))
                (g8527
                 (begin
                   (write '(funapp 2552 24))
                   (display "\n")
                   (integer?
                    (begin (write '(funapp 2552 33)) (display "\n") 'module)
                    (begin (write '(funapp 2552 41)) (display "\n") 'importer)
                    board-height)))
                (g8528
                 (letrec*
                  ((x8599
                    (begin
                      (write '(funapp 2556 21))
                      (display "\n")
                      ((lambda (j7361 k7362 f7363)
                         (letrec*
                          ((g8600
                            (lambda (g7359 g7360)
                              (letrec*
                               ((g8601
                                 (letrec*
                                  ((x8602
                                    (letrec*
                                     ((x8604
                                       (begin
                                         (write '(funapp 2565 44))
                                         (display "\n")
                                         (POSN/C j7361 k7362 g7359)))
                                      (x8603
                                       (begin
                                         (write '(funapp 2566 44))
                                         (display "\n")
                                         (BLOCK/C j7361 k7362 g7360))))
                                     (begin
                                       (write '(funapp 2567 36))
                                       (display "\n")
                                       (f7363 x8604 x8603)))))
                                  (begin
                                    (write '(funapp 2568 33))
                                    (display "\n")
                                    (BLOCK/C j7361 k7362 x8602)))))
                               g8601))))
                          g8600))
                       (begin (write '(funapp 2571 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2572 21))
                         (display "\n")
                         'importer)
                       block-rotate-ccw)))
                   (x8594
                    (letrec*
                     ((x8595
                       (letrec*
                        ((x8598 (input))
                         (x8596
                          (letrec*
                           ((x8597 (input)))
                           (begin
                             (write '(funapp 2579 60))
                             (display "\n")
                             (cons
                              x8597
                              (begin
                                (write '(funapp 2579 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2580 25))
                          (display "\n")
                          (cons x8598 x8596)))))
                     (begin
                       (write '(funapp 2581 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2581 27)) (display "\n") 'posn)
                        x8595))))
                   (x8587
                    (letrec*
                     ((x8588
                       (letrec*
                        ((x8593 (input))
                         (x8589
                          (letrec*
                           ((x8592 (input))
                            (x8590
                             (letrec*
                              ((x8591 (input)))
                              (begin
                                (write '(funapp 2591 57))
                                (display "\n")
                                (cons
                                 x8591
                                 (begin
                                   (write '(funapp 2591 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2592 28))
                             (display "\n")
                             (cons x8592 x8590)))))
                        (begin
                          (write '(funapp 2593 25))
                          (display "\n")
                          (cons x8593 x8589)))))
                     (begin
                       (write '(funapp 2594 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2594 27)) (display "\n") 'block)
                        x8588)))))
                  (begin
                    (write '(funapp 2595 19))
                    (display "\n")
                    (x8599 x8594 x8587))))
                (g8529
                 (letrec*
                  ((x8617
                    (begin
                      (write '(funapp 2599 21))
                      (display "\n")
                      ((lambda (j7366 k7367 f7368)
                         (letrec*
                          ((g8618
                            (lambda (g7364 g7365)
                              (letrec*
                               ((g8619
                                 (letrec*
                                  ((x8620
                                    (letrec*
                                     ((x8622
                                       (begin
                                         (write '(funapp 2608 44))
                                         (display "\n")
                                         (POSN/C j7366 k7367 g7364)))
                                      (x8621
                                       (begin
                                         (write '(funapp 2609 44))
                                         (display "\n")
                                         (BLOCK/C j7366 k7367 g7365))))
                                     (begin
                                       (write '(funapp 2610 36))
                                       (display "\n")
                                       (f7368 x8622 x8621)))))
                                  (begin
                                    (write '(funapp 2611 33))
                                    (display "\n")
                                    (BLOCK/C j7366 k7367 x8620)))))
                               g8619))))
                          g8618))
                       (begin (write '(funapp 2614 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2615 21))
                         (display "\n")
                         'importer)
                       block-rotate-cw)))
                   (x8612
                    (letrec*
                     ((x8613
                       (letrec*
                        ((x8616 (input))
                         (x8614
                          (letrec*
                           ((x8615 (input)))
                           (begin
                             (write '(funapp 2622 60))
                             (display "\n")
                             (cons
                              x8615
                              (begin
                                (write '(funapp 2622 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2623 25))
                          (display "\n")
                          (cons x8616 x8614)))))
                     (begin
                       (write '(funapp 2624 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2624 27)) (display "\n") 'posn)
                        x8613))))
                   (x8605
                    (letrec*
                     ((x8606
                       (letrec*
                        ((x8611 (input))
                         (x8607
                          (letrec*
                           ((x8610 (input))
                            (x8608
                             (letrec*
                              ((x8609 (input)))
                              (begin
                                (write '(funapp 2634 57))
                                (display "\n")
                                (cons
                                 x8609
                                 (begin
                                   (write '(funapp 2634 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2635 28))
                             (display "\n")
                             (cons x8610 x8608)))))
                        (begin
                          (write '(funapp 2636 25))
                          (display "\n")
                          (cons x8611 x8607)))))
                     (begin
                       (write '(funapp 2637 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2637 27)) (display "\n") 'block)
                        x8606)))))
                  (begin
                    (write '(funapp 2638 19))
                    (display "\n")
                    (x8617 x8612 x8605))))
                (g8530
                 (letrec*
                  ((x8637
                    (begin
                      (write '(funapp 2642 21))
                      (display "\n")
                      ((lambda (j7371 k7372 f7373)
                         (letrec*
                          ((g8638
                            (lambda (g7369 g7370)
                              (letrec*
                               ((g8639
                                 (letrec*
                                  ((x8640
                                    (letrec*
                                     ((x8642
                                       (begin
                                         (write '(funapp 2651 44))
                                         (display "\n")
                                         (BLOCK/C j7371 k7372 g7369)))
                                      (x8641
                                       (begin
                                         (write '(funapp 2652 44))
                                         (display "\n")
                                         (BLOCK/C j7371 k7372 g7370))))
                                     (begin
                                       (write '(funapp 2653 36))
                                       (display "\n")
                                       (f7373 x8642 x8641)))))
                                  (begin
                                    (write '(funapp 2654 33))
                                    (display "\n")
                                    (boolean?/c j7371 k7372 x8640)))))
                               g8639))))
                          g8638))
                       (begin (write '(funapp 2657 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2658 21))
                         (display "\n")
                         'importer)
                       block=?)))
                   (x8630
                    (letrec*
                     ((x8631
                       (letrec*
                        ((x8636 (input))
                         (x8632
                          (letrec*
                           ((x8635 (input))
                            (x8633
                             (letrec*
                              ((x8634 (input)))
                              (begin
                                (write '(funapp 2669 57))
                                (display "\n")
                                (cons
                                 x8634
                                 (begin
                                   (write '(funapp 2669 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2670 28))
                             (display "\n")
                             (cons x8635 x8633)))))
                        (begin
                          (write '(funapp 2671 25))
                          (display "\n")
                          (cons x8636 x8632)))))
                     (begin
                       (write '(funapp 2672 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2672 27)) (display "\n") 'block)
                        x8631))))
                   (x8623
                    (letrec*
                     ((x8624
                       (letrec*
                        ((x8629 (input))
                         (x8625
                          (letrec*
                           ((x8628 (input))
                            (x8626
                             (letrec*
                              ((x8627 (input)))
                              (begin
                                (write '(funapp 2682 57))
                                (display "\n")
                                (cons
                                 x8627
                                 (begin
                                   (write '(funapp 2682 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2683 28))
                             (display "\n")
                             (cons x8628 x8626)))))
                        (begin
                          (write '(funapp 2684 25))
                          (display "\n")
                          (cons x8629 x8625)))))
                     (begin
                       (write '(funapp 2685 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2685 27)) (display "\n") 'block)
                        x8624)))))
                  (begin
                    (write '(funapp 2686 19))
                    (display "\n")
                    (x8637 x8630 x8623))))
                (g8531
                 (letrec*
                  ((x8652
                    (begin
                      (write '(funapp 2690 21))
                      (display "\n")
                      ((lambda (j7377 k7378 f7379)
                         (letrec*
                          ((g8653
                            (lambda (g7374 g7375 g7376)
                              (letrec*
                               ((g8654
                                 (letrec*
                                  ((x8655
                                    (letrec*
                                     ((x8658
                                       (begin
                                         (write '(funapp 2699 44))
                                         (display "\n")
                                         (real?/c j7377 k7378 g7374)))
                                      (x8657
                                       (begin
                                         (write '(funapp 2700 44))
                                         (display "\n")
                                         (real?/c j7377 k7378 g7375)))
                                      (x8656
                                       (begin
                                         (write '(funapp 2701 44))
                                         (display "\n")
                                         (BLOCK/C j7377 k7378 g7376))))
                                     (begin
                                       (write '(funapp 2702 36))
                                       (display "\n")
                                       (f7379 x8658 x8657 x8656)))))
                                  (begin
                                    (write '(funapp 2703 33))
                                    (display "\n")
                                    (BLOCK/C j7377 k7378 x8655)))))
                               g8654))))
                          g8653))
                       (begin (write '(funapp 2706 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2707 21))
                         (display "\n")
                         'importer)
                       block-move)))
                   (x8651 (input))
                   (x8650 (input))
                   (x8643
                    (letrec*
                     ((x8644
                       (letrec*
                        ((x8649 (input))
                         (x8645
                          (letrec*
                           ((x8648 (input))
                            (x8646
                             (letrec*
                              ((x8647 (input)))
                              (begin
                                (write '(funapp 2720 57))
                                (display "\n")
                                (cons
                                 x8647
                                 (begin
                                   (write '(funapp 2720 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2721 28))
                             (display "\n")
                             (cons x8648 x8646)))))
                        (begin
                          (write '(funapp 2722 25))
                          (display "\n")
                          (cons x8649 x8645)))))
                     (begin
                       (write '(funapp 2723 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2723 27)) (display "\n") 'block)
                        x8644)))))
                  (begin
                    (write '(funapp 2724 19))
                    (display "\n")
                    (x8652 x8651 x8650 x8643))))
                (g8532
                 (letrec*
                  ((x8667
                    (begin
                      (write '(funapp 2728 21))
                      (display "\n")
                      ((lambda (j7382 k7383 f7384)
                         (letrec*
                          ((g8668
                            (lambda (g7380 g7381)
                              (letrec*
                               ((g8669
                                 (letrec*
                                  ((x8670
                                    (letrec*
                                     ((x8672
                                       (begin
                                         (write '(funapp 2737 44))
                                         (display "\n")
                                         (BSET/C j7382 k7383 g7380)))
                                      (x8671
                                       (begin
                                         (write '(funapp 2738 44))
                                         (display "\n")
                                         (BLOCK/C j7382 k7383 g7381))))
                                     (begin
                                       (write '(funapp 2739 36))
                                       (display "\n")
                                       (f7384 x8672 x8671)))))
                                  (begin
                                    (write '(funapp 2740 33))
                                    (display "\n")
                                    (boolean?/c j7382 k7383 x8670)))))
                               g8669))))
                          g8668))
                       (begin (write '(funapp 2743 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2744 21))
                         (display "\n")
                         'importer)
                       blocks-contains?)))
                   (x8666 (input))
                   (x8659
                    (letrec*
                     ((x8660
                       (letrec*
                        ((x8665 (input))
                         (x8661
                          (letrec*
                           ((x8664 (input))
                            (x8662
                             (letrec*
                              ((x8663 (input)))
                              (begin
                                (write '(funapp 2756 57))
                                (display "\n")
                                (cons
                                 x8663
                                 (begin
                                   (write '(funapp 2756 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2757 28))
                             (display "\n")
                             (cons x8664 x8662)))))
                        (begin
                          (write '(funapp 2758 25))
                          (display "\n")
                          (cons x8665 x8661)))))
                     (begin
                       (write '(funapp 2759 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2759 27)) (display "\n") 'block)
                        x8660)))))
                  (begin
                    (write '(funapp 2760 19))
                    (display "\n")
                    (x8667 x8666 x8659))))
                (g8533
                 (letrec*
                  ((x8675
                    (begin
                      (write '(funapp 2764 21))
                      (display "\n")
                      ((lambda (j7387 k7388 f7389)
                         (letrec*
                          ((g8676
                            (lambda (g7385 g7386)
                              (letrec*
                               ((g8677
                                 (letrec*
                                  ((x8678
                                    (letrec*
                                     ((x8680
                                       (begin
                                         (write '(funapp 2773 44))
                                         (display "\n")
                                         (BSET/C j7387 k7388 g7385)))
                                      (x8679
                                       (begin
                                         (write '(funapp 2774 44))
                                         (display "\n")
                                         (BSET/C j7387 k7388 g7386))))
                                     (begin
                                       (write '(funapp 2775 36))
                                       (display "\n")
                                       (f7389 x8680 x8679)))))
                                  (begin
                                    (write '(funapp 2776 33))
                                    (display "\n")
                                    (boolean?/c j7387 k7388 x8678)))))
                               g8677))))
                          g8676))
                       (begin (write '(funapp 2779 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2780 21))
                         (display "\n")
                         'importer)
                       blocks=?)))
                   (x8674 (input))
                   (x8673 (input)))
                  (begin
                    (write '(funapp 2784 19))
                    (display "\n")
                    (x8675 x8674 x8673))))
                (g8534
                 (letrec*
                  ((x8683
                    (begin
                      (write '(funapp 2788 21))
                      (display "\n")
                      ((lambda (j7392 k7393 f7394)
                         (letrec*
                          ((g8684
                            (lambda (g7390 g7391)
                              (letrec*
                               ((g8685
                                 (letrec*
                                  ((x8686
                                    (letrec*
                                     ((x8688
                                       (begin
                                         (write '(funapp 2797 44))
                                         (display "\n")
                                         (BSET/C j7392 k7393 g7390)))
                                      (x8687
                                       (begin
                                         (write '(funapp 2798 44))
                                         (display "\n")
                                         (BSET/C j7392 k7393 g7391))))
                                     (begin
                                       (write '(funapp 2799 36))
                                       (display "\n")
                                       (f7394 x8688 x8687)))))
                                  (begin
                                    (write '(funapp 2800 33))
                                    (display "\n")
                                    (boolean?/c j7392 k7393 x8686)))))
                               g8685))))
                          g8684))
                       (begin (write '(funapp 2803 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2804 21))
                         (display "\n")
                         'importer)
                       blocks-subset?)))
                   (x8682 (input))
                   (x8681 (input)))
                  (begin
                    (write '(funapp 2808 19))
                    (display "\n")
                    (x8683 x8682 x8681))))
                (g8535
                 (letrec*
                  ((x8691
                    (begin
                      (write '(funapp 2812 21))
                      (display "\n")
                      ((lambda (j7397 k7398 f7399)
                         (letrec*
                          ((g8692
                            (lambda (g7395 g7396)
                              (letrec*
                               ((g8693
                                 (letrec*
                                  ((x8694
                                    (letrec*
                                     ((x8696
                                       (begin
                                         (write '(funapp 2821 44))
                                         (display "\n")
                                         (BSET/C j7397 k7398 g7395)))
                                      (x8695
                                       (begin
                                         (write '(funapp 2822 44))
                                         (display "\n")
                                         (BSET/C j7397 k7398 g7396))))
                                     (begin
                                       (write '(funapp 2823 36))
                                       (display "\n")
                                       (f7399 x8696 x8695)))))
                                  (begin
                                    (write '(funapp 2824 33))
                                    (display "\n")
                                    (BSET/C j7397 k7398 x8694)))))
                               g8693))))
                          g8692))
                       (begin (write '(funapp 2827 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2828 21))
                         (display "\n")
                         'importer)
                       blocks-intersect)))
                   (x8690 (input))
                   (x8689 (input)))
                  (begin
                    (write '(funapp 2832 19))
                    (display "\n")
                    (x8691 x8690 x8689))))
                (g8536
                 (letrec*
                  ((x8698
                    (begin
                      (write '(funapp 2836 21))
                      (display "\n")
                      ((lambda (j7401 k7402 f7403)
                         (letrec*
                          ((g8699
                            (lambda (g7400)
                              (letrec*
                               ((g8700
                                 (letrec*
                                  ((x8701
                                    (letrec*
                                     ((x8702
                                       (begin
                                         (write '(funapp 2845 44))
                                         (display "\n")
                                         (BSET/C j7401 k7402 g7400))))
                                     (begin
                                       (write '(funapp 2846 36))
                                       (display "\n")
                                       (f7403 x8702)))))
                                  (begin
                                    (write '(funapp 2847 33))
                                    (display "\n")
                                    (real?/c j7401 k7402 x8701)))))
                               g8700))))
                          g8699))
                       (begin (write '(funapp 2850 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2851 21))
                         (display "\n")
                         'importer)
                       blocks-count)))
                   (x8697 (input)))
                  (begin
                    (write '(funapp 2854 19))
                    (display "\n")
                    (x8698 x8697))))
                (g8537
                 (letrec*
                  ((x8704
                    (begin
                      (write '(funapp 2858 21))
                      (display "\n")
                      ((lambda (j7405 k7406 f7407)
                         (letrec*
                          ((g8705
                            (lambda (g7404)
                              (letrec*
                               ((g8706
                                 (letrec*
                                  ((x8707
                                    (letrec*
                                     ((x8708
                                       (begin
                                         (write '(funapp 2867 44))
                                         (display "\n")
                                         (BSET/C j7405 k7406 g7404))))
                                     (begin
                                       (write '(funapp 2868 36))
                                       (display "\n")
                                       (f7407 x8708)))))
                                  (begin
                                    (write '(funapp 2869 33))
                                    (display "\n")
                                    (boolean?/c j7405 k7406 x8707)))))
                               g8706))))
                          g8705))
                       (begin (write '(funapp 2872 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2873 21))
                         (display "\n")
                         'importer)
                       blocks-overflow?)))
                   (x8703 (input)))
                  (begin
                    (write '(funapp 2876 19))
                    (display "\n")
                    (x8704 x8703))))
                (g8538
                 (letrec*
                  ((x8712
                    (begin
                      (write '(funapp 2880 21))
                      (display "\n")
                      ((lambda (j7411 k7412 f7413)
                         (letrec*
                          ((g8713
                            (lambda (g7408 g7409 g7410)
                              (letrec*
                               ((g8714
                                 (letrec*
                                  ((x8715
                                    (letrec*
                                     ((x8718
                                       (begin
                                         (write '(funapp 2889 44))
                                         (display "\n")
                                         (real?/c j7411 k7412 g7408)))
                                      (x8717
                                       (begin
                                         (write '(funapp 2890 44))
                                         (display "\n")
                                         (real?/c j7411 k7412 g7409)))
                                      (x8716
                                       (begin
                                         (write '(funapp 2891 44))
                                         (display "\n")
                                         (BSET/C j7411 k7412 g7410))))
                                     (begin
                                       (write '(funapp 2892 36))
                                       (display "\n")
                                       (f7413 x8718 x8717 x8716)))))
                                  (begin
                                    (write '(funapp 2893 33))
                                    (display "\n")
                                    (BSET/C j7411 k7412 x8715)))))
                               g8714))))
                          g8713))
                       (begin (write '(funapp 2896 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2897 21))
                         (display "\n")
                         'importer)
                       blocks-move)))
                   (x8711 (input))
                   (x8710 (input))
                   (x8709 (input)))
                  (begin
                    (write '(funapp 2902 19))
                    (display "\n")
                    (x8712 x8711 x8710 x8709))))
                (g8539
                 (letrec*
                  ((x8725
                    (begin
                      (write '(funapp 2906 21))
                      (display "\n")
                      ((lambda (j7416 k7417 f7418)
                         (letrec*
                          ((g8726
                            (lambda (g7414 g7415)
                              (letrec*
                               ((g8727
                                 (letrec*
                                  ((x8728
                                    (letrec*
                                     ((x8730
                                       (begin
                                         (write '(funapp 2915 44))
                                         (display "\n")
                                         (POSN/C j7416 k7417 g7414)))
                                      (x8729
                                       (begin
                                         (write '(funapp 2916 44))
                                         (display "\n")
                                         (BSET/C j7416 k7417 g7415))))
                                     (begin
                                       (write '(funapp 2917 36))
                                       (display "\n")
                                       (f7418 x8730 x8729)))))
                                  (begin
                                    (write '(funapp 2918 33))
                                    (display "\n")
                                    (BSET/C j7416 k7417 x8728)))))
                               g8727))))
                          g8726))
                       (begin (write '(funapp 2921 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2922 21))
                         (display "\n")
                         'importer)
                       blocks-rotate-cw)))
                   (x8720
                    (letrec*
                     ((x8721
                       (letrec*
                        ((x8724 (input))
                         (x8722
                          (letrec*
                           ((x8723 (input)))
                           (begin
                             (write '(funapp 2929 60))
                             (display "\n")
                             (cons
                              x8723
                              (begin
                                (write '(funapp 2929 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2930 25))
                          (display "\n")
                          (cons x8724 x8722)))))
                     (begin
                       (write '(funapp 2931 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2931 27)) (display "\n") 'posn)
                        x8721))))
                   (x8719 (input)))
                  (begin
                    (write '(funapp 2933 19))
                    (display "\n")
                    (x8725 x8720 x8719))))
                (g8540
                 (letrec*
                  ((x8737
                    (begin
                      (write '(funapp 2937 21))
                      (display "\n")
                      ((lambda (j7421 k7422 f7423)
                         (letrec*
                          ((g8738
                            (lambda (g7419 g7420)
                              (letrec*
                               ((g8739
                                 (letrec*
                                  ((x8740
                                    (letrec*
                                     ((x8742
                                       (begin
                                         (write '(funapp 2946 44))
                                         (display "\n")
                                         (POSN/C j7421 k7422 g7419)))
                                      (x8741
                                       (begin
                                         (write '(funapp 2947 44))
                                         (display "\n")
                                         (BSET/C j7421 k7422 g7420))))
                                     (begin
                                       (write '(funapp 2948 36))
                                       (display "\n")
                                       (f7423 x8742 x8741)))))
                                  (begin
                                    (write '(funapp 2949 33))
                                    (display "\n")
                                    (BSET/C j7421 k7422 x8740)))))
                               g8739))))
                          g8738))
                       (begin (write '(funapp 2952 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2953 21))
                         (display "\n")
                         'importer)
                       blocks-rotate-ccw)))
                   (x8732
                    (letrec*
                     ((x8733
                       (letrec*
                        ((x8736 (input))
                         (x8734
                          (letrec*
                           ((x8735 (input)))
                           (begin
                             (write '(funapp 2960 60))
                             (display "\n")
                             (cons
                              x8735
                              (begin
                                (write '(funapp 2960 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2961 25))
                          (display "\n")
                          (cons x8736 x8734)))))
                     (begin
                       (write '(funapp 2962 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2962 27)) (display "\n") 'posn)
                        x8733))))
                   (x8731 (input)))
                  (begin
                    (write '(funapp 2964 19))
                    (display "\n")
                    (x8737 x8732 x8731))))
                (g8541
                 (letrec*
                  ((x8745
                    (begin
                      (write '(funapp 2968 21))
                      (display "\n")
                      ((lambda (j7426 k7427 f7428)
                         (letrec*
                          ((g8746
                            (lambda (g7424 g7425)
                              (letrec*
                               ((g8747
                                 (letrec*
                                  ((x8748
                                    (letrec*
                                     ((x8750
                                       (begin
                                         (write '(funapp 2977 44))
                                         (display "\n")
                                         (BSET/C j7426 k7427 g7424)))
                                      (x8749
                                       (begin
                                         (write '(funapp 2978 44))
                                         (display "\n")
                                         (COLOR/C j7426 k7427 g7425))))
                                     (begin
                                       (write '(funapp 2979 36))
                                       (display "\n")
                                       (f7428 x8750 x8749)))))
                                  (begin
                                    (write '(funapp 2980 33))
                                    (display "\n")
                                    (BSET/C j7426 k7427 x8748)))))
                               g8747))))
                          g8746))
                       (begin (write '(funapp 2983 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2984 21))
                         (display "\n")
                         'importer)
                       blocks-change-color)))
                   (x8744 (input))
                   (x8743 (input)))
                  (begin
                    (write '(funapp 2988 19))
                    (display "\n")
                    (x8745 x8744 x8743))))
                (g8542
                 (letrec*
                  ((x8753
                    (begin
                      (write '(funapp 2992 21))
                      (display "\n")
                      ((lambda (j7431 k7432 f7433)
                         (letrec*
                          ((g8754
                            (lambda (g7429 g7430)
                              (letrec*
                               ((g8755
                                 (letrec*
                                  ((x8756
                                    (letrec*
                                     ((x8758
                                       (begin
                                         (write '(funapp 3001 44))
                                         (display "\n")
                                         (BSET/C j7431 k7432 g7429)))
                                      (x8757
                                       (begin
                                         (write '(funapp 3002 44))
                                         (display "\n")
                                         (real?/c j7431 k7432 g7430))))
                                     (begin
                                       (write '(funapp 3003 36))
                                       (display "\n")
                                       (f7433 x8758 x8757)))))
                                  (begin
                                    (write '(funapp 3004 33))
                                    (display "\n")
                                    (BSET/C j7431 k7432 x8756)))))
                               g8755))))
                          g8754))
                       (begin (write '(funapp 3007 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3008 21))
                         (display "\n")
                         'importer)
                       blocks-row)))
                   (x8752 (input))
                   (x8751 (input)))
                  (begin
                    (write '(funapp 3012 19))
                    (display "\n")
                    (x8753 x8752 x8751))))
                (g8543
                 (letrec*
                  ((x8761
                    (begin
                      (write '(funapp 3016 21))
                      (display "\n")
                      ((lambda (j7436 k7437 f7438)
                         (letrec*
                          ((g8762
                            (lambda (g7434 g7435)
                              (letrec*
                               ((g8763
                                 (letrec*
                                  ((x8764
                                    (letrec*
                                     ((x8766
                                       (begin
                                         (write '(funapp 3025 44))
                                         (display "\n")
                                         (BSET/C j7436 k7437 g7434)))
                                      (x8765
                                       (begin
                                         (write '(funapp 3026 44))
                                         (display "\n")
                                         (real?/c j7436 k7437 g7435))))
                                     (begin
                                       (write '(funapp 3027 36))
                                       (display "\n")
                                       (f7438 x8766 x8765)))))
                                  (begin
                                    (write '(funapp 3028 33))
                                    (display "\n")
                                    (boolean?/c j7436 k7437 x8764)))))
                               g8763))))
                          g8762))
                       (begin (write '(funapp 3031 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3032 21))
                         (display "\n")
                         'importer)
                       full-row?)))
                   (x8760 (input))
                   (x8759 (input)))
                  (begin
                    (write '(funapp 3036 19))
                    (display "\n")
                    (x8761 x8760 x8759))))
                (g8544
                 (letrec*
                  ((x8769
                    (begin
                      (write '(funapp 3040 21))
                      (display "\n")
                      ((lambda (j7441 k7442 f7443)
                         (letrec*
                          ((g8770
                            (lambda (g7439 g7440)
                              (letrec*
                               ((g8771
                                 (letrec*
                                  ((x8772
                                    (letrec*
                                     ((x8774
                                       (begin
                                         (write '(funapp 3049 44))
                                         (display "\n")
                                         (BSET/C j7441 k7442 g7439)))
                                      (x8773
                                       (begin
                                         (write '(funapp 3050 44))
                                         (display "\n")
                                         (BSET/C j7441 k7442 g7440))))
                                     (begin
                                       (write '(funapp 3051 36))
                                       (display "\n")
                                       (f7443 x8774 x8773)))))
                                  (begin
                                    (write '(funapp 3052 33))
                                    (display "\n")
                                    (BSET/C j7441 k7442 x8772)))))
                               g8771))))
                          g8770))
                       (begin (write '(funapp 3055 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3056 21))
                         (display "\n")
                         'importer)
                       blocks-union)))
                   (x8768 (input))
                   (x8767 (input)))
                  (begin
                    (write '(funapp 3060 19))
                    (display "\n")
                    (x8769 x8768 x8767))))
                (g8545
                 (letrec*
                  ((x8776
                    (begin
                      (write '(funapp 3064 21))
                      (display "\n")
                      ((lambda (j7445 k7446 f7447)
                         (letrec*
                          ((g8777
                            (lambda (g7444)
                              (letrec*
                               ((g8778
                                 (letrec*
                                  ((x8779
                                    (letrec*
                                     ((x8780
                                       (begin
                                         (write '(funapp 3073 44))
                                         (display "\n")
                                         (BSET/C j7445 k7446 g7444))))
                                     (begin
                                       (write '(funapp 3074 36))
                                       (display "\n")
                                       (f7447 x8780)))))
                                  (begin
                                    (write '(funapp 3075 33))
                                    (display "\n")
                                    (real?/c j7445 k7446 x8779)))))
                               g8778))))
                          g8777))
                       (begin (write '(funapp 3078 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3079 21))
                         (display "\n")
                         'importer)
                       blocks-max-x)))
                   (x8775 (input)))
                  (begin
                    (write '(funapp 3082 19))
                    (display "\n")
                    (x8776 x8775))))
                (g8546
                 (letrec*
                  ((x8782
                    (begin
                      (write '(funapp 3086 21))
                      (display "\n")
                      ((lambda (j7449 k7450 f7451)
                         (letrec*
                          ((g8783
                            (lambda (g7448)
                              (letrec*
                               ((g8784
                                 (letrec*
                                  ((x8785
                                    (letrec*
                                     ((x8786
                                       (begin
                                         (write '(funapp 3095 44))
                                         (display "\n")
                                         (BSET/C j7449 k7450 g7448))))
                                     (begin
                                       (write '(funapp 3096 36))
                                       (display "\n")
                                       (f7451 x8786)))))
                                  (begin
                                    (write '(funapp 3097 33))
                                    (display "\n")
                                    (real?/c j7449 k7450 x8785)))))
                               g8784))))
                          g8783))
                       (begin (write '(funapp 3100 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3101 21))
                         (display "\n")
                         'importer)
                       blocks-min-x)))
                   (x8781 (input)))
                  (begin
                    (write '(funapp 3104 19))
                    (display "\n")
                    (x8782 x8781))))
                (g8547
                 (letrec*
                  ((x8788
                    (begin
                      (write '(funapp 3108 21))
                      (display "\n")
                      ((lambda (j7453 k7454 f7455)
                         (letrec*
                          ((g8789
                            (lambda (g7452)
                              (letrec*
                               ((g8790
                                 (letrec*
                                  ((x8791
                                    (letrec*
                                     ((x8792
                                       (begin
                                         (write '(funapp 3117 44))
                                         (display "\n")
                                         (BSET/C j7453 k7454 g7452))))
                                     (begin
                                       (write '(funapp 3118 36))
                                       (display "\n")
                                       (f7455 x8792)))))
                                  (begin
                                    (write '(funapp 3119 33))
                                    (display "\n")
                                    (real?/c j7453 k7454 x8791)))))
                               g8790))))
                          g8789))
                       (begin (write '(funapp 3122 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3123 21))
                         (display "\n")
                         'importer)
                       blocks-max-y)))
                   (x8787 (input)))
                  (begin
                    (write '(funapp 3126 19))
                    (display "\n")
                    (x8788 x8787))))
                (g8548
                 (letrec*
                  ((x8794
                    (begin
                      (write '(funapp 3130 21))
                      (display "\n")
                      ((lambda (j7457 k7458 f7459)
                         (letrec*
                          ((g8795
                            (lambda (g7456)
                              (letrec*
                               ((g8796
                                 (letrec*
                                  ((x8797
                                    (letrec*
                                     ((x8798
                                       (begin
                                         (write '(funapp 3139 44))
                                         (display "\n")
                                         (BSET/C j7457 k7458 g7456))))
                                     (begin
                                       (write '(funapp 3140 36))
                                       (display "\n")
                                       (f7459 x8798)))))
                                  (begin
                                    (write '(funapp 3141 33))
                                    (display "\n")
                                    (BSET/C j7457 k7458 x8797)))))
                               g8796))))
                          g8795))
                       (begin (write '(funapp 3144 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3145 21))
                         (display "\n")
                         'importer)
                       eliminate-full-rows)))
                   (x8793 (input)))
                  (begin
                    (write '(funapp 3148 19))
                    (display "\n")
                    (x8794 x8793))))
                (g8549
                 (letrec*
                  ((x8810
                    (begin
                      (write '(funapp 3152 21))
                      (display "\n")
                      ((lambda (j7463 k7464 f7465)
                         (letrec*
                          ((g8811
                            (lambda (g7460 g7461 g7462)
                              (letrec*
                               ((g8812
                                 (letrec*
                                  ((x8813
                                    (letrec*
                                     ((x8816
                                       (begin
                                         (write '(funapp 3161 44))
                                         (display "\n")
                                         (integer?/c j7463 k7464 g7460)))
                                      (x8815
                                       (begin
                                         (write '(funapp 3162 44))
                                         (display "\n")
                                         (integer?/c j7463 k7464 g7461)))
                                      (x8814
                                       (begin
                                         (write '(funapp 3163 44))
                                         (display "\n")
                                         (TETRA/C j7463 k7464 g7462))))
                                     (begin
                                       (write '(funapp 3164 36))
                                       (display "\n")
                                       (f7465 x8816 x8815 x8814)))))
                                  (begin
                                    (write '(funapp 3165 33))
                                    (display "\n")
                                    (TETRA/C j7463 k7464 x8813)))))
                               g8812))))
                          g8811))
                       (begin (write '(funapp 3168 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3169 21))
                         (display "\n")
                         'importer)
                       tetra-move)))
                   (x8809 (input))
                   (x8808 (input))
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
                                   (write '(funapp 3183 60))
                                   (display "\n")
                                   (cons
                                    x8806
                                    (begin
                                      (write '(funapp 3183 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3184 31))
                                (display "\n")
                                (cons x8807 x8805)))))
                           (begin
                             (write '(funapp 3185 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3185 33))
                                (display "\n")
                                'posn)
                              x8804))))
                         (x8801
                          (letrec*
                           ((x8802 (input)))
                           (begin
                             (write '(funapp 3186 60))
                             (display "\n")
                             (cons
                              x8802
                              (begin
                                (write '(funapp 3186 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3187 25))
                          (display "\n")
                          (cons x8803 x8801)))))
                     (begin
                       (write '(funapp 3188 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3188 27)) (display "\n") 'tetra)
                        x8800)))))
                  (begin
                    (write '(funapp 3189 19))
                    (display "\n")
                    (x8810 x8809 x8808 x8799))))
                (g8550
                 (letrec*
                  ((x8826
                    (begin
                      (write '(funapp 3193 21))
                      (display "\n")
                      ((lambda (j7467 k7468 f7469)
                         (letrec*
                          ((g8827
                            (lambda (g7466)
                              (letrec*
                               ((g8828
                                 (letrec*
                                  ((x8829
                                    (letrec*
                                     ((x8830
                                       (begin
                                         (write '(funapp 3202 44))
                                         (display "\n")
                                         (TETRA/C j7467 k7468 g7466))))
                                     (begin
                                       (write '(funapp 3203 36))
                                       (display "\n")
                                       (f7469 x8830)))))
                                  (begin
                                    (write '(funapp 3204 33))
                                    (display "\n")
                                    (TETRA/C j7467 k7468 x8829)))))
                               g8828))))
                          g8827))
                       (begin (write '(funapp 3207 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3208 21))
                         (display "\n")
                         'importer)
                       tetra-rotate-ccw)))
                   (x8817
                    (letrec*
                     ((x8818
                       (letrec*
                        ((x8821
                          (letrec*
                           ((x8822
                             (letrec*
                              ((x8825 (input))
                               (x8823
                                (letrec*
                                 ((x8824 (input)))
                                 (begin
                                   (write '(funapp 3220 60))
                                   (display "\n")
                                   (cons
                                    x8824
                                    (begin
                                      (write '(funapp 3220 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3221 31))
                                (display "\n")
                                (cons x8825 x8823)))))
                           (begin
                             (write '(funapp 3222 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3222 33))
                                (display "\n")
                                'posn)
                              x8822))))
                         (x8819
                          (letrec*
                           ((x8820 (input)))
                           (begin
                             (write '(funapp 3223 60))
                             (display "\n")
                             (cons
                              x8820
                              (begin
                                (write '(funapp 3223 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3224 25))
                          (display "\n")
                          (cons x8821 x8819)))))
                     (begin
                       (write '(funapp 3225 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3225 27)) (display "\n") 'tetra)
                        x8818)))))
                  (begin
                    (write '(funapp 3226 19))
                    (display "\n")
                    (x8826 x8817))))
                (g8551
                 (letrec*
                  ((x8840
                    (begin
                      (write '(funapp 3230 21))
                      (display "\n")
                      ((lambda (j7471 k7472 f7473)
                         (letrec*
                          ((g8841
                            (lambda (g7470)
                              (letrec*
                               ((g8842
                                 (letrec*
                                  ((x8843
                                    (letrec*
                                     ((x8844
                                       (begin
                                         (write '(funapp 3239 44))
                                         (display "\n")
                                         (TETRA/C j7471 k7472 g7470))))
                                     (begin
                                       (write '(funapp 3240 36))
                                       (display "\n")
                                       (f7473 x8844)))))
                                  (begin
                                    (write '(funapp 3241 33))
                                    (display "\n")
                                    (TETRA/C j7471 k7472 x8843)))))
                               g8842))))
                          g8841))
                       (begin (write '(funapp 3244 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3245 21))
                         (display "\n")
                         'importer)
                       tetra-rotate-cw)))
                   (x8831
                    (letrec*
                     ((x8832
                       (letrec*
                        ((x8835
                          (letrec*
                           ((x8836
                             (letrec*
                              ((x8839 (input))
                               (x8837
                                (letrec*
                                 ((x8838 (input)))
                                 (begin
                                   (write '(funapp 3257 60))
                                   (display "\n")
                                   (cons
                                    x8838
                                    (begin
                                      (write '(funapp 3257 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3258 31))
                                (display "\n")
                                (cons x8839 x8837)))))
                           (begin
                             (write '(funapp 3259 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3259 33))
                                (display "\n")
                                'posn)
                              x8836))))
                         (x8833
                          (letrec*
                           ((x8834 (input)))
                           (begin
                             (write '(funapp 3260 60))
                             (display "\n")
                             (cons
                              x8834
                              (begin
                                (write '(funapp 3260 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3261 25))
                          (display "\n")
                          (cons x8835 x8833)))))
                     (begin
                       (write '(funapp 3262 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3262 27)) (display "\n") 'tetra)
                        x8832)))))
                  (begin
                    (write '(funapp 3263 19))
                    (display "\n")
                    (x8840 x8831))))
                (g8552
                 (letrec*
                  ((x8855
                    (begin
                      (write '(funapp 3267 21))
                      (display "\n")
                      ((lambda (j7476 k7477 f7478)
                         (letrec*
                          ((g8856
                            (lambda (g7474 g7475)
                              (letrec*
                               ((g8857
                                 (letrec*
                                  ((x8858
                                    (letrec*
                                     ((x8860
                                       (begin
                                         (write '(funapp 3276 44))
                                         (display "\n")
                                         (TETRA/C j7476 k7477 g7474)))
                                      (x8859
                                       (begin
                                         (write '(funapp 3277 44))
                                         (display "\n")
                                         (BSET/C j7476 k7477 g7475))))
                                     (begin
                                       (write '(funapp 3278 36))
                                       (display "\n")
                                       (f7478 x8860 x8859)))))
                                  (begin
                                    (write '(funapp 3279 33))
                                    (display "\n")
                                    (boolean?/c j7476 k7477 x8858)))))
                               g8857))))
                          g8856))
                       (begin (write '(funapp 3282 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3283 21))
                         (display "\n")
                         'importer)
                       tetra-overlaps-blocks?)))
                   (x8846
                    (letrec*
                     ((x8847
                       (letrec*
                        ((x8850
                          (letrec*
                           ((x8851
                             (letrec*
                              ((x8854 (input))
                               (x8852
                                (letrec*
                                 ((x8853 (input)))
                                 (begin
                                   (write '(funapp 3295 60))
                                   (display "\n")
                                   (cons
                                    x8853
                                    (begin
                                      (write '(funapp 3295 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3296 31))
                                (display "\n")
                                (cons x8854 x8852)))))
                           (begin
                             (write '(funapp 3297 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3297 33))
                                (display "\n")
                                'posn)
                              x8851))))
                         (x8848
                          (letrec*
                           ((x8849 (input)))
                           (begin
                             (write '(funapp 3298 60))
                             (display "\n")
                             (cons
                              x8849
                              (begin
                                (write '(funapp 3298 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3299 25))
                          (display "\n")
                          (cons x8850 x8848)))))
                     (begin
                       (write '(funapp 3300 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3300 27)) (display "\n") 'tetra)
                        x8847))))
                   (x8845 (input)))
                  (begin
                    (write '(funapp 3302 19))
                    (display "\n")
                    (x8855 x8846 x8845))))
                (g8553
                 (letrec*
                  ((x8872
                    (begin
                      (write '(funapp 3306 21))
                      (display "\n")
                      ((lambda (j7490 k7491 f7492)
                         (letrec*
                          ((g8873
                            (lambda (g7479
                                     g7480
                                     g7481
                                     g7482
                                     g7483
                                     g7484
                                     g7485
                                     g7486
                                     g7487
                                     g7488
                                     g7489)
                              (letrec*
                               ((g8874
                                 (letrec*
                                  ((x8875
                                    (letrec*
                                     ((x8886
                                       (begin
                                         (write '(funapp 3325 44))
                                         (display "\n")
                                         (COLOR/C j7490 k7491 g7479)))
                                      (x8885
                                       (begin
                                         (write '(funapp 3326 44))
                                         (display "\n")
                                         (real?/c j7490 k7491 g7480)))
                                      (x8884
                                       (begin
                                         (write '(funapp 3327 44))
                                         (display "\n")
                                         (real?/c j7490 k7491 g7481)))
                                      (x8883
                                       (begin
                                         (write '(funapp 3328 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7482)))
                                      (x8882
                                       (begin
                                         (write '(funapp 3329 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7483)))
                                      (x8881
                                       (begin
                                         (write '(funapp 3330 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7484)))
                                      (x8880
                                       (begin
                                         (write '(funapp 3331 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7485)))
                                      (x8879
                                       (begin
                                         (write '(funapp 3332 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7486)))
                                      (x8878
                                       (begin
                                         (write '(funapp 3333 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7487)))
                                      (x8877
                                       (begin
                                         (write '(funapp 3334 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7488)))
                                      (x8876
                                       (begin
                                         (write '(funapp 3335 44))
                                         (display "\n")
                                         (integer?/c j7490 k7491 g7489))))
                                     (begin
                                       (write '(funapp 3336 36))
                                       (display "\n")
                                       (f7492
                                        x8886
                                        x8885
                                        x8884
                                        x8883
                                        x8882
                                        x8881
                                        x8880
                                        x8879
                                        x8878
                                        x8877
                                        x8876)))))
                                  (begin
                                    (write '(funapp 3348 33))
                                    (display "\n")
                                    (TETRA/C j7490 k7491 x8875)))))
                               g8874))))
                          g8873))
                       (begin (write '(funapp 3351 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3352 21))
                         (display "\n")
                         'importer)
                       build-tetra-blocks)))
                   (x8871 (input))
                   (x8870 (input))
                   (x8869 (input))
                   (x8868 (input))
                   (x8867 (input))
                   (x8866 (input))
                   (x8865 (input))
                   (x8864 (input))
                   (x8863 (input))
                   (x8862 (input))
                   (x8861 (input)))
                  (begin
                    (write '(funapp 3365 19))
                    (display "\n")
                    (x8872
                     x8871
                     x8870
                     x8869
                     x8868
                     x8867
                     x8866
                     x8865
                     x8864
                     x8863
                     x8862
                     x8861))))
                (g8554
                 (letrec*
                  ((x8897
                    (begin
                      (write '(funapp 3380 21))
                      (display "\n")
                      ((lambda (j7495 k7496 f7497)
                         (letrec*
                          ((g8898
                            (lambda (g7493 g7494)
                              (letrec*
                               ((g8899
                                 (letrec*
                                  ((x8900
                                    (letrec*
                                     ((x8902
                                       (begin
                                         (write '(funapp 3389 44))
                                         (display "\n")
                                         (TETRA/C j7495 k7496 g7493)))
                                      (x8901
                                       (begin
                                         (write '(funapp 3390 44))
                                         (display "\n")
                                         (COLOR/C j7495 k7496 g7494))))
                                     (begin
                                       (write '(funapp 3391 36))
                                       (display "\n")
                                       (f7497 x8902 x8901)))))
                                  (begin
                                    (write '(funapp 3392 33))
                                    (display "\n")
                                    (TETRA/C j7495 k7496 x8900)))))
                               g8899))))
                          g8898))
                       (begin (write '(funapp 3395 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3396 21))
                         (display "\n")
                         'importer)
                       tetra-change-color)))
                   (x8888
                    (letrec*
                     ((x8889
                       (letrec*
                        ((x8892
                          (letrec*
                           ((x8893
                             (letrec*
                              ((x8896 (input))
                               (x8894
                                (letrec*
                                 ((x8895 (input)))
                                 (begin
                                   (write '(funapp 3408 60))
                                   (display "\n")
                                   (cons
                                    x8895
                                    (begin
                                      (write '(funapp 3408 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3409 31))
                                (display "\n")
                                (cons x8896 x8894)))))
                           (begin
                             (write '(funapp 3410 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3410 33))
                                (display "\n")
                                'posn)
                              x8893))))
                         (x8890
                          (letrec*
                           ((x8891 (input)))
                           (begin
                             (write '(funapp 3411 60))
                             (display "\n")
                             (cons
                              x8891
                              (begin
                                (write '(funapp 3411 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3412 25))
                          (display "\n")
                          (cons x8892 x8890)))))
                     (begin
                       (write '(funapp 3413 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3413 27)) (display "\n") 'tetra)
                        x8889))))
                   (x8887 (input)))
                  (begin
                    (write '(funapp 3415 19))
                    (display "\n")
                    (x8897 x8888 x8887))))
                (g8555
                 (letrec*
                  ((x8917
                    (begin
                      (write '(funapp 3419 21))
                      (display "\n")
                      ((lambda (j7500 k7501 f7502)
                         (letrec*
                          ((g8918
                            (lambda (g7498 g7499)
                              (letrec*
                               ((g8919
                                 (letrec*
                                  ((x8920
                                    (letrec*
                                     ((x8922
                                       (begin
                                         (write '(funapp 3428 44))
                                         (display "\n")
                                         (WORLD/C j7500 k7501 g7498)))
                                      (x8921
                                       (begin
                                         (write '(funapp 3429 44))
                                         (display "\n")
                                         (string?/c j7500 k7501 g7499))))
                                     (begin
                                       (write '(funapp 3430 36))
                                       (display "\n")
                                       (f7502 x8922 x8921)))))
                                  (begin
                                    (write '(funapp 3431 33))
                                    (display "\n")
                                    (WORLD/C j7500 k7501 x8920)))))
                               g8919))))
                          g8918))
                       (begin (write '(funapp 3434 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3435 21))
                         (display "\n")
                         'importer)
                       world-key-move)))
                   (x8904
                    (letrec*
                     ((x8905
                       (letrec*
                        ((x8908
                          (letrec*
                           ((x8909
                             (letrec*
                              ((x8912
                                (letrec*
                                 ((x8913
                                   (letrec*
                                    ((x8916 (input))
                                     (x8914
                                      (letrec*
                                       ((x8915 (input)))
                                       (begin
                                         (write '(funapp 3453 40))
                                         (display "\n")
                                         (cons
                                          x8915
                                          (begin
                                            (write '(funapp 3453 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3454 37))
                                      (display "\n")
                                      (cons x8916 x8914)))))
                                 (begin
                                   (write '(funapp 3455 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3455 39))
                                      (display "\n")
                                      'posn)
                                    x8913))))
                               (x8910
                                (letrec*
                                 ((x8911 (input)))
                                 (begin
                                   (write '(funapp 3457 60))
                                   (display "\n")
                                   (cons
                                    x8911
                                    (begin
                                      (write '(funapp 3457 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3458 31))
                                (display "\n")
                                (cons x8912 x8910)))))
                           (begin
                             (write '(funapp 3459 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3459 33))
                                (display "\n")
                                'tetra)
                              x8909))))
                         (x8906
                          (letrec*
                           ((x8907 (input)))
                           (begin
                             (write '(funapp 3460 60))
                             (display "\n")
                             (cons
                              x8907
                              (begin
                                (write '(funapp 3460 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3461 25))
                          (display "\n")
                          (cons x8908 x8906)))))
                     (begin
                       (write '(funapp 3462 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3462 27)) (display "\n") 'world)
                        x8905))))
                   (x8903 (input)))
                  (begin
                    (write '(funapp 3464 19))
                    (display "\n")
                    (x8917 x8904 x8903))))
                (g8556
                 (letrec*
                  ((x8937
                    (begin
                      (write '(funapp 3468 21))
                      (display "\n")
                      ((lambda (j7505 k7506 f7507)
                         (letrec*
                          ((g8938
                            (lambda (g7503 g7504)
                              (letrec*
                               ((g8939
                                 (letrec*
                                  ((x8940
                                    (letrec*
                                     ((x8944
                                       (begin
                                         (write '(funapp 3477 44))
                                         (display "\n")
                                         (WORLD/C j7505 k7506 g7503)))
                                      (x8941
                                       (letrec*
                                        ((x8942
                                          (letrec*
                                           ((x8943
                                             (begin
                                               (write '(funapp 3482 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3483 42))
                                             (display "\n")
                                             (and/c cons?/c x8943)))))
                                        (begin
                                          (write '(funapp 3484 39))
                                          (display "\n")
                                          (x8942 j7505 k7506 g7504)))))
                                     (begin
                                       (write '(funapp 3485 36))
                                       (display "\n")
                                       (f7507 x8944 x8941)))))
                                  (begin
                                    (write '(funapp 3486 33))
                                    (display "\n")
                                    (WORLD/C j7505 k7506 x8940)))))
                               g8939))))
                          g8938))
                       (begin (write '(funapp 3489 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3490 21))
                         (display "\n")
                         'importer)
                       next-world)))
                   (x8924
                    (letrec*
                     ((x8925
                       (letrec*
                        ((x8928
                          (letrec*
                           ((x8929
                             (letrec*
                              ((x8932
                                (letrec*
                                 ((x8933
                                   (letrec*
                                    ((x8936 (input))
                                     (x8934
                                      (letrec*
                                       ((x8935 (input)))
                                       (begin
                                         (write '(funapp 3508 40))
                                         (display "\n")
                                         (cons
                                          x8935
                                          (begin
                                            (write '(funapp 3508 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3509 37))
                                      (display "\n")
                                      (cons x8936 x8934)))))
                                 (begin
                                   (write '(funapp 3510 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3510 39))
                                      (display "\n")
                                      'posn)
                                    x8933))))
                               (x8930
                                (letrec*
                                 ((x8931 (input)))
                                 (begin
                                   (write '(funapp 3512 60))
                                   (display "\n")
                                   (cons
                                    x8931
                                    (begin
                                      (write '(funapp 3512 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3513 31))
                                (display "\n")
                                (cons x8932 x8930)))))
                           (begin
                             (write '(funapp 3514 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3514 33))
                                (display "\n")
                                'tetra)
                              x8929))))
                         (x8926
                          (letrec*
                           ((x8927 (input)))
                           (begin
                             (write '(funapp 3515 60))
                             (display "\n")
                             (cons
                              x8927
                              (begin
                                (write '(funapp 3515 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3516 25))
                          (display "\n")
                          (cons x8928 x8926)))))
                     (begin
                       (write '(funapp 3517 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3517 27)) (display "\n") 'world)
                        x8925))))
                   (x8923 (input)))
                  (begin
                    (write '(funapp 3519 19))
                    (display "\n")
                    (x8937 x8924 x8923))))
                (g8557
                 (letrec*
                  ((x8958
                    (begin
                      (write '(funapp 3523 21))
                      (display "\n")
                      ((lambda (j7509 k7510 f7511)
                         (letrec*
                          ((g8959
                            (lambda (g7508)
                              (letrec*
                               ((g8960
                                 (letrec*
                                  ((x8961
                                    (letrec*
                                     ((x8962
                                       (begin
                                         (write '(funapp 3532 44))
                                         (display "\n")
                                         (WORLD/C j7509 k7510 g7508))))
                                     (begin
                                       (write '(funapp 3533 36))
                                       (display "\n")
                                       (f7511 x8962)))))
                                  (begin
                                    (write '(funapp 3534 33))
                                    (display "\n")
                                    (BSET/C j7509 k7510 x8961)))))
                               g8960))))
                          g8959))
                       (begin (write '(funapp 3537 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3538 21))
                         (display "\n")
                         'importer)
                       ghost-blocks)))
                   (x8945
                    (letrec*
                     ((x8946
                       (letrec*
                        ((x8949
                          (letrec*
                           ((x8950
                             (letrec*
                              ((x8953
                                (letrec*
                                 ((x8954
                                   (letrec*
                                    ((x8957 (input))
                                     (x8955
                                      (letrec*
                                       ((x8956 (input)))
                                       (begin
                                         (write '(funapp 3556 40))
                                         (display "\n")
                                         (cons
                                          x8956
                                          (begin
                                            (write '(funapp 3556 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3557 37))
                                      (display "\n")
                                      (cons x8957 x8955)))))
                                 (begin
                                   (write '(funapp 3558 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3558 39))
                                      (display "\n")
                                      'posn)
                                    x8954))))
                               (x8951
                                (letrec*
                                 ((x8952 (input)))
                                 (begin
                                   (write '(funapp 3560 60))
                                   (display "\n")
                                   (cons
                                    x8952
                                    (begin
                                      (write '(funapp 3560 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3561 31))
                                (display "\n")
                                (cons x8953 x8951)))))
                           (begin
                             (write '(funapp 3562 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3562 33))
                                (display "\n")
                                'tetra)
                              x8950))))
                         (x8947
                          (letrec*
                           ((x8948 (input)))
                           (begin
                             (write '(funapp 3563 60))
                             (display "\n")
                             (cons
                              x8948
                              (begin
                                (write '(funapp 3563 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3564 25))
                          (display "\n")
                          (cons x8949 x8947)))))
                     (begin
                       (write '(funapp 3565 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3565 27)) (display "\n") 'world)
                        x8946)))))
                  (begin
                    (write '(funapp 3566 19))
                    (display "\n")
                    (x8958 x8945))))
                (g8558
                 (letrec*
                  ((x8964
                    (begin
                      (write '(funapp 3570 21))
                      (display "\n")
                      ((lambda (j7513 k7514 f7515)
                         (letrec*
                          ((g8965
                            (lambda (g7512)
                              (letrec*
                               ((g8966
                                 (letrec*
                                  ((x8967
                                    (letrec*
                                     ((x8968
                                       (begin
                                         (write '(funapp 3579 44))
                                         (display "\n")
                                         (any/c j7513 k7514 g7512))))
                                     (begin
                                       (write '(funapp 3580 36))
                                       (display "\n")
                                       (f7515 x8968)))))
                                  (begin
                                    (write '(funapp 3581 33))
                                    (display "\n")
                                    (boolean?/c j7513 k7514 x8967)))))
                               g8966))))
                          g8965))
                       (begin (write '(funapp 3584 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3585 21))
                         (display "\n")
                         'importer)
                       image?)))
                   (x8963 (input)))
                  (begin
                    (write '(funapp 3588 19))
                    (display "\n")
                    (x8964 x8963))))
                (g8559
                 (letrec*
                  ((x8971
                    (begin
                      (write '(funapp 3592 21))
                      (display "\n")
                      ((lambda (j7518 k7519 f7520)
                         (letrec*
                          ((g8972
                            (lambda (g7516 g7517)
                              (letrec*
                               ((g8973
                                 (letrec*
                                  ((x8974
                                    (letrec*
                                     ((x8976
                                       (begin
                                         (write '(funapp 3601 44))
                                         (display "\n")
                                         (image? j7518 k7519 g7516)))
                                      (x8975
                                       (begin
                                         (write '(funapp 3602 44))
                                         (display "\n")
                                         (image? j7518 k7519 g7517))))
                                     (begin
                                       (write '(funapp 3603 36))
                                       (display "\n")
                                       (f7520 x8976 x8975)))))
                                  (begin
                                    (write '(funapp 3604 33))
                                    (display "\n")
                                    (image? j7518 k7519 x8974)))))
                               g8973))))
                          g8972))
                       (begin (write '(funapp 3607 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3608 21))
                         (display "\n")
                         'importer)
                       overlay)))
                   (x8970 (input))
                   (x8969 (input)))
                  (begin
                    (write '(funapp 3612 19))
                    (display "\n")
                    (x8971 x8970 x8969))))
                (g8560
                 (letrec*
                  ((x8980
                    (begin
                      (write '(funapp 3616 21))
                      (display "\n")
                      ((lambda (j7524 k7525 f7526)
                         (letrec*
                          ((g8981
                            (lambda (g7521 g7522 g7523)
                              (letrec*
                               ((g8982
                                 (letrec*
                                  ((x8983
                                    (letrec*
                                     ((x8986
                                       (begin
                                         (write '(funapp 3625 44))
                                         (display "\n")
                                         (real?/c j7524 k7525 g7521)))
                                      (x8985
                                       (begin
                                         (write '(funapp 3626 44))
                                         (display "\n")
                                         (real?/c j7524 k7525 g7522)))
                                      (x8984
                                       (begin
                                         (write '(funapp 3627 44))
                                         (display "\n")
                                         (string?/c j7524 k7525 g7523))))
                                     (begin
                                       (write '(funapp 3628 36))
                                       (display "\n")
                                       (f7526 x8986 x8985 x8984)))))
                                  (begin
                                    (write '(funapp 3629 33))
                                    (display "\n")
                                    (image? j7524 k7525 x8983)))))
                               g8982))))
                          g8981))
                       (begin (write '(funapp 3632 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3633 21))
                         (display "\n")
                         'importer)
                       circle)))
                   (x8979 (input))
                   (x8978 (input))
                   (x8977 (input)))
                  (begin
                    (write '(funapp 3638 19))
                    (display "\n")
                    (x8980 x8979 x8978 x8977))))
                (g8561
                 (letrec*
                  ((x8991
                    (begin
                      (write '(funapp 3642 21))
                      (display "\n")
                      ((lambda (j7531 k7532 f7533)
                         (letrec*
                          ((g8992
                            (lambda (g7527 g7528 g7529 g7530)
                              (letrec*
                               ((g8993
                                 (letrec*
                                  ((x8994
                                    (letrec*
                                     ((x8998
                                       (begin
                                         (write '(funapp 3651 44))
                                         (display "\n")
                                         (real?/c j7531 k7532 g7527)))
                                      (x8997
                                       (begin
                                         (write '(funapp 3652 44))
                                         (display "\n")
                                         (real?/c j7531 k7532 g7528)))
                                      (x8996
                                       (begin
                                         (write '(funapp 3653 44))
                                         (display "\n")
                                         (COLOR/C j7531 k7532 g7529)))
                                      (x8995
                                       (begin
                                         (write '(funapp 3654 44))
                                         (display "\n")
                                         (COLOR/C j7531 k7532 g7530))))
                                     (begin
                                       (write '(funapp 3655 36))
                                       (display "\n")
                                       (f7533 x8998 x8997 x8996 x8995)))))
                                  (begin
                                    (write '(funapp 3656 33))
                                    (display "\n")
                                    (image? j7531 k7532 x8994)))))
                               g8993))))
                          g8992))
                       (begin (write '(funapp 3659 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3660 21))
                         (display "\n")
                         'importer)
                       rectangle)))
                   (x8990 (input))
                   (x8989 (input))
                   (x8988 (input))
                   (x8987 (input)))
                  (begin
                    (write '(funapp 3666 19))
                    (display "\n")
                    (x8991 x8990 x8989 x8988 x8987))))
                (g8562
                 (letrec*
                  ((x9003
                    (begin
                      (write '(funapp 3670 21))
                      (display "\n")
                      ((lambda (j7538 k7539 f7540)
                         (letrec*
                          ((g9004
                            (lambda (g7534 g7535 g7536 g7537)
                              (letrec*
                               ((g9005
                                 (letrec*
                                  ((x9006
                                    (letrec*
                                     ((x9010
                                       (begin
                                         (write '(funapp 3679 44))
                                         (display "\n")
                                         (image/c j7538 k7539 g7534)))
                                      (x9009
                                       (begin
                                         (write '(funapp 3680 44))
                                         (display "\n")
                                         (real?/c j7538 k7539 g7535)))
                                      (x9008
                                       (begin
                                         (write '(funapp 3681 44))
                                         (display "\n")
                                         (real?/c j7538 k7539 g7536)))
                                      (x9007
                                       (begin
                                         (write '(funapp 3682 44))
                                         (display "\n")
                                         (image/c j7538 k7539 g7537))))
                                     (begin
                                       (write '(funapp 3683 36))
                                       (display "\n")
                                       (f7540 x9010 x9009 x9008 x9007)))))
                                  (begin
                                    (write '(funapp 3684 33))
                                    (display "\n")
                                    (image/c j7538 k7539 x9006)))))
                               g9005))))
                          g9004))
                       (begin (write '(funapp 3687 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3688 21))
                         (display "\n")
                         'importer)
                       place-image)))
                   (x9002 (input))
                   (x9001 (input))
                   (x9000 (input))
                   (x8999 (input)))
                  (begin
                    (write '(funapp 3694 19))
                    (display "\n")
                    (x9003 x9002 x9001 x9000 x8999))))
                (g8563
                 (letrec*
                  ((x9013
                    (begin
                      (write '(funapp 3698 21))
                      (display "\n")
                      ((lambda (j7543 k7544 f7545)
                         (letrec*
                          ((g9014
                            (lambda (g7541 g7542)
                              (letrec*
                               ((g9015
                                 (letrec*
                                  ((x9016
                                    (letrec*
                                     ((x9018
                                       (begin
                                         (write '(funapp 3707 44))
                                         (display "\n")
                                         (real?/c j7543 k7544 g7541)))
                                      (x9017
                                       (begin
                                         (write '(funapp 3708 44))
                                         (display "\n")
                                         (real?/c j7543 k7544 g7542))))
                                     (begin
                                       (write '(funapp 3709 36))
                                       (display "\n")
                                       (f7545 x9018 x9017)))))
                                  (begin
                                    (write '(funapp 3710 33))
                                    (display "\n")
                                    (image? j7543 k7544 x9016)))))
                               g9015))))
                          g9014))
                       (begin (write '(funapp 3713 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3714 21))
                         (display "\n")
                         'importer)
                       empty-scene)))
                   (x9012 (input))
                   (x9011 (input)))
                  (begin
                    (write '(funapp 3718 19))
                    (display "\n")
                    (x9013 x9012 x9011))))
                (g8564
                 (letrec*
                  ((x9020
                    (begin
                      (write '(funapp 3722 21))
                      (display "\n")
                      ((lambda (j7547 k7548 f7549)
                         (letrec*
                          ((g9021
                            (lambda (g7546)
                              (letrec*
                               ((g9022
                                 (letrec*
                                  ((x9023
                                    (letrec*
                                     ((x9024
                                       (letrec*
                                        ((x9025
                                          (letrec*
                                           ((x9026
                                             (begin
                                               (write '(funapp 3735 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3736 42))
                                             (display "\n")
                                             (and/c cons?/c x9026)))))
                                        (begin
                                          (write '(funapp 3737 39))
                                          (display "\n")
                                          (x9025 j7547 k7548 g7546)))))
                                     (begin
                                       (write '(funapp 3738 36))
                                       (display "\n")
                                       (f7549 x9024)))))
                                  (begin
                                    (write '(funapp 3739 33))
                                    (display "\n")
                                    (TETRA/C j7547 k7548 x9023)))))
                               g9022))))
                          g9021))
                       (begin (write '(funapp 3742 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3743 21))
                         (display "\n")
                         'importer)
                       list-pick-random)))
                   (x9019 (input)))
                  (begin
                    (write '(funapp 3746 19))
                    (display "\n")
                    (x9020 x9019))))
                (g8565
                 (begin
                   (write '(funapp 3747 24))
                   (display "\n")
                   (integer?/c
                    (begin (write '(funapp 3747 35)) (display "\n") 'module)
                    (begin (write '(funapp 3747 43)) (display "\n") 'importer)
                    neg-1)))
                (g8566
                 (letrec*
                  ((x9040
                    (begin
                      (write '(funapp 3751 21))
                      (display "\n")
                      ((lambda (j7551 k7552 f7553)
                         (letrec*
                          ((g9041
                            (lambda (g7550)
                              (letrec*
                               ((g9042
                                 (letrec*
                                  ((x9043
                                    (letrec*
                                     ((x9044
                                       (begin
                                         (write '(funapp 3760 44))
                                         (display "\n")
                                         (WORLD/C j7551 k7552 g7550))))
                                     (begin
                                       (write '(funapp 3761 36))
                                       (display "\n")
                                       (f7553 x9044)))))
                                  (begin
                                    (write '(funapp 3762 33))
                                    (display "\n")
                                    (image/c j7551 k7552 x9043)))))
                               g9042))))
                          g9041))
                       (begin (write '(funapp 3765 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3766 21))
                         (display "\n")
                         'importer)
                       world->image)))
                   (x9027
                    (letrec*
                     ((x9028
                       (letrec*
                        ((x9031
                          (letrec*
                           ((x9032
                             (letrec*
                              ((x9035
                                (letrec*
                                 ((x9036
                                   (letrec*
                                    ((x9039 (input))
                                     (x9037
                                      (letrec*
                                       ((x9038 (input)))
                                       (begin
                                         (write '(funapp 3784 40))
                                         (display "\n")
                                         (cons
                                          x9038
                                          (begin
                                            (write '(funapp 3784 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3785 37))
                                      (display "\n")
                                      (cons x9039 x9037)))))
                                 (begin
                                   (write '(funapp 3786 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3786 39))
                                      (display "\n")
                                      'posn)
                                    x9036))))
                               (x9033
                                (letrec*
                                 ((x9034 (input)))
                                 (begin
                                   (write '(funapp 3788 60))
                                   (display "\n")
                                   (cons
                                    x9034
                                    (begin
                                      (write '(funapp 3788 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3789 31))
                                (display "\n")
                                (cons x9035 x9033)))))
                           (begin
                             (write '(funapp 3790 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3790 33))
                                (display "\n")
                                'tetra)
                              x9032))))
                         (x9029
                          (letrec*
                           ((x9030 (input)))
                           (begin
                             (write '(funapp 3791 60))
                             (display "\n")
                             (cons
                              x9030
                              (begin
                                (write '(funapp 3791 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3792 25))
                          (display "\n")
                          (cons x9031 x9029)))))
                     (begin
                       (write '(funapp 3793 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3793 27)) (display "\n") 'world)
                        x9028)))))
                  (begin
                    (write '(funapp 3794 19))
                    (display "\n")
                    (x9040 x9027))))
                (g8567
                 (letrec*
                  ((x9046
                    (begin
                      (write '(funapp 3798 21))
                      (display "\n")
                      ((lambda (j7555 k7556 f7557)
                         (letrec*
                          ((g9047
                            (lambda (g7554)
                              (letrec*
                               ((g9048
                                 (letrec*
                                  ((x9049
                                    (letrec*
                                     ((x9050
                                       (begin
                                         (write '(funapp 3807 44))
                                         (display "\n")
                                         (BSET/C j7555 k7556 g7554))))
                                     (begin
                                       (write '(funapp 3808 36))
                                       (display "\n")
                                       (f7557 x9050)))))
                                  (begin
                                    (write '(funapp 3809 33))
                                    (display "\n")
                                    (image/c j7555 k7556 x9049)))))
                               g9048))))
                          g9047))
                       (begin (write '(funapp 3812 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3813 21))
                         (display "\n")
                         'importer)
                       blocks->image)))
                   (x9045 (input)))
                  (begin
                    (write '(funapp 3816 19))
                    (display "\n")
                    (x9046 x9045))))
                (g8568
                 (letrec*
                  ((x9058
                    (begin
                      (write '(funapp 3820 21))
                      (display "\n")
                      ((lambda (j7559 k7560 f7561)
                         (letrec*
                          ((g9059
                            (lambda (g7558)
                              (letrec*
                               ((g9060
                                 (letrec*
                                  ((x9061
                                    (letrec*
                                     ((x9062
                                       (begin
                                         (write '(funapp 3829 44))
                                         (display "\n")
                                         (BLOCK/C j7559 k7560 g7558))))
                                     (begin
                                       (write '(funapp 3830 36))
                                       (display "\n")
                                       (f7561 x9062)))))
                                  (begin
                                    (write '(funapp 3831 33))
                                    (display "\n")
                                    (image/c j7559 k7560 x9061)))))
                               g9060))))
                          g9059))
                       (begin (write '(funapp 3834 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3835 21))
                         (display "\n")
                         'importer)
                       block->image)))
                   (x9051
                    (letrec*
                     ((x9052
                       (letrec*
                        ((x9057 (input))
                         (x9053
                          (letrec*
                           ((x9056 (input))
                            (x9054
                             (letrec*
                              ((x9055 (input)))
                              (begin
                                (write '(funapp 3846 57))
                                (display "\n")
                                (cons
                                 x9055
                                 (begin
                                   (write '(funapp 3846 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 3847 28))
                             (display "\n")
                             (cons x9056 x9054)))))
                        (begin
                          (write '(funapp 3848 25))
                          (display "\n")
                          (cons x9057 x9053)))))
                     (begin
                       (write '(funapp 3849 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3849 27)) (display "\n") 'block)
                        x9052)))))
                  (begin
                    (write '(funapp 3850 19))
                    (display "\n")
                    (x9058 x9051))))
                (g8569
                 (letrec*
                  ((x9071
                    (begin
                      (write '(funapp 3854 21))
                      (display "\n")
                      ((lambda (j7564 k7565 f7566)
                         (letrec*
                          ((g9072
                            (lambda (g7562 g7563)
                              (letrec*
                               ((g9073
                                 (letrec*
                                  ((x9074
                                    (letrec*
                                     ((x9076
                                       (begin
                                         (write '(funapp 3863 44))
                                         (display "\n")
                                         (BLOCK/C j7564 k7565 g7562)))
                                      (x9075
                                       (begin
                                         (write '(funapp 3864 44))
                                         (display "\n")
                                         (image/c j7564 k7565 g7563))))
                                     (begin
                                       (write '(funapp 3865 36))
                                       (display "\n")
                                       (f7566 x9076 x9075)))))
                                  (begin
                                    (write '(funapp 3866 33))
                                    (display "\n")
                                    (image/c j7564 k7565 x9074)))))
                               g9073))))
                          g9072))
                       (begin (write '(funapp 3869 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3870 21))
                         (display "\n")
                         'importer)
                       place-block)))
                   (x9064
                    (letrec*
                     ((x9065
                       (letrec*
                        ((x9070 (input))
                         (x9066
                          (letrec*
                           ((x9069 (input))
                            (x9067
                             (letrec*
                              ((x9068 (input)))
                              (begin
                                (write '(funapp 3881 57))
                                (display "\n")
                                (cons
                                 x9068
                                 (begin
                                   (write '(funapp 3881 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 3882 28))
                             (display "\n")
                             (cons x9069 x9067)))))
                        (begin
                          (write '(funapp 3883 25))
                          (display "\n")
                          (cons x9070 x9066)))))
                     (begin
                       (write '(funapp 3884 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3884 27)) (display "\n") 'block)
                        x9065))))
                   (x9063 (input)))
                  (begin
                    (write '(funapp 3886 19))
                    (display "\n")
                    (x9071 x9064 x9063))))
                (g8570
                 (letrec*
                  ((x9078
                    (begin
                      (write '(funapp 3890 21))
                      (display "\n")
                      ((lambda (j7568 k7569 f7570)
                         (letrec*
                          ((g9079
                            (lambda (g7567)
                              (letrec*
                               ((g9080
                                 (letrec*
                                  ((x9081
                                    (letrec*
                                     ((x9082
                                       (letrec*
                                        ((x9083
                                          (letrec*
                                           ((x9084
                                             (begin
                                               (write '(funapp 3903 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3904 42))
                                             (display "\n")
                                             (and/c cons?/c x9084)))))
                                        (begin
                                          (write '(funapp 3905 39))
                                          (display "\n")
                                          (x9083 j7568 k7569 g7567)))))
                                     (begin
                                       (write '(funapp 3906 36))
                                       (display "\n")
                                       (f7570 x9082)))))
                                  (begin
                                    (write '(funapp 3907 33))
                                    (display "\n")
                                    (WORLD/C j7568 k7569 x9081)))))
                               g9080))))
                          g9079))
                       (begin (write '(funapp 3910 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3911 21))
                         (display "\n")
                         'importer)
                       world0)))
                   (x9077 (input)))
                  (begin
                    (write '(funapp 3914 19))
                    (display "\n")
                    (x9078 x9077)))))
               g8570))))
           g7607))))
       g7605)))
    g7604)))
