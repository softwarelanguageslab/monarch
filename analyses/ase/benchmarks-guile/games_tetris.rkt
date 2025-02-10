(begin
  (use-modules (srfi srfi-28))
  (define (add1 x) (begin (write '(funapp 3 20)) (display "\n") (+ x 1)))
  (define (sub1 x) (begin (write '(funapp 4 20)) (display "\n") (+ x 1)))
  (set! *random-state*
    (begin (write '(funapp 5 24)) (display "\n") (random-state-from-platform)))
  (define (input) (begin (write '(funapp 6 19)) (display "\n") (expt 2 64)))
  (letrec*
   ((any? (lambda (v) (letrec* ((g7597 #t)) g7597)))
    (meta (lambda (v) (letrec* ((g7598 v)) g7598)))
    (member
     (lambda (v lst)
       (letrec*
        ((g7599
          (letrec*
           ((g7600
             (letrec*
              ((x-e7601 lst))
              (letrec*
               ((v1742 x-e7601))
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
                   ((x-cnd7602
                     (begin
                       (write '(funapp 26 32))
                       (display "\n")
                       (eq? v v1))))
                   (if x-cnd7602
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
           g7600)))
        g7599)))
    (unconstrained/c #f)
    (actor?
     (lambda (k j)
       (letrec* ((g7603 (lambda (v) (letrec* ((g7604 v)) g7604)))) g7603)))
    (nonzero?
     (lambda (v)
       (letrec*
        ((g7605
          (letrec*
           ((x7606 (begin (write '(funapp 37 42)) (display "\n") (= v 0))))
           (begin (write '(funapp 37 52)) (display "\n") (not x7606)))))
        g7605))))
   (letrec*
    ((g7607
      (letrec*
       ((g7608
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
           ((g7609 (begin (write '(funapp 53 19)) (display "\n") '()))
            (g7610
             (letrec*
              ((empty (begin (write '(funapp 56 22)) (display "\n") '()))
               (listof
                (lambda (contract)
                  (letrec*
                   ((g7611
                     (lambda (k j lst)
                       (letrec*
                        ((g7612
                          (begin
                            (write '(funapp 64 27))
                            (display "\n")
                            (map
                             (lambda (v)
                               (letrec*
                                ((g7613
                                  (begin
                                    (write '(funapp 66 47))
                                    (display "\n")
                                    (contract k j v))))
                                g7613))
                             lst))))
                        g7612))))
                   g7611)))
               (real?/c
                (lambda (g7260 g7261 g7262)
                  (letrec*
                   ((g7614
                     (letrec*
                      ((x-cnd7615
                        (begin
                          (write '(funapp 75 35))
                          (display "\n")
                          (real? g7262))))
                      (if x-cnd7615
                        g7262
                        (begin
                          (write '(blame g7260 76 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7260)))))))
                   g7614)))
               (boolean?/c
                (lambda (g7263 g7264 g7265)
                  (letrec*
                   ((g7616
                     (letrec*
                      ((x-cnd7617
                        (begin
                          (write '(funapp 83 35))
                          (display "\n")
                          (boolean? g7265))))
                      (if x-cnd7617
                        g7265
                        (begin
                          (write '(blame g7263 84 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7263)))))))
                   g7616)))
               (number?/c
                (lambda (g7266 g7267 g7268)
                  (letrec*
                   ((g7618
                     (letrec*
                      ((x-cnd7619
                        (begin
                          (write '(funapp 91 35))
                          (display "\n")
                          (number? g7268))))
                      (if x-cnd7619
                        g7268
                        (begin
                          (write '(blame g7266 92 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7266)))))))
                   g7618)))
               (any/c
                (lambda (g7269 g7270 g7271)
                  (letrec*
                   ((g7620
                     (letrec*
                      ((x-cnd7621
                        (begin
                          (write '(funapp 100 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7622 #t)) g7622)) g7271))))
                      (if x-cnd7621
                        g7271
                        (begin
                          (write '(blame g7269 101 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7269)))))))
                   g7620)))
               (any?/c
                (lambda (g7272 g7273 g7274)
                  (letrec*
                   ((g7623
                     (letrec*
                      ((x-cnd7624
                        (begin
                          (write '(funapp 109 25))
                          (display "\n")
                          ((lambda (v) (letrec* ((g7625 #t)) g7625)) g7274))))
                      (if x-cnd7624
                        g7274
                        (begin
                          (write '(blame g7272 110 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7272)))))))
                   g7623)))
               (cons?/c
                (lambda (g7275 g7276 g7277)
                  (letrec*
                   ((g7626
                     (letrec*
                      ((x-cnd7627
                        (begin
                          (write '(funapp 117 35))
                          (display "\n")
                          (pair? g7277))))
                      (if x-cnd7627
                        g7277
                        (begin
                          (write '(blame g7275 118 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7275)))))))
                   g7626)))
               (pair?/c
                (lambda (g7278 g7279 g7280)
                  (letrec*
                   ((g7628
                     (letrec*
                      ((x-cnd7629
                        (begin
                          (write '(funapp 125 35))
                          (display "\n")
                          (pair? g7280))))
                      (if x-cnd7629
                        g7280
                        (begin
                          (write '(blame g7278 126 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7278)))))))
                   g7628)))
               (integer?/c
                (lambda (g7281 g7282 g7283)
                  (letrec*
                   ((g7630
                     (letrec*
                      ((x-cnd7631
                        (begin
                          (write '(funapp 133 35))
                          (display "\n")
                          (integer? g7283))))
                      (if x-cnd7631
                        g7283
                        (begin
                          (write '(blame g7281 134 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7281)))))))
                   g7630)))
               (symbol?/c
                (lambda (g7284 g7285 g7286)
                  (letrec*
                   ((g7632
                     (letrec*
                      ((x-cnd7633
                        (begin
                          (write '(funapp 141 35))
                          (display "\n")
                          (symbol? g7286))))
                      (if x-cnd7633
                        g7286
                        (begin
                          (write '(blame g7284 142 42))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7284)))))))
                   g7632)))
               (and/c
                (lambda (c1 c2)
                  (letrec*
                   ((g7634
                     (lambda (k j v)
                       (letrec*
                        ((g7635
                          (letrec*
                           ((x-cnd7636
                             (begin
                               (write '(funapp 152 40))
                               (display "\n")
                               (c1 k j v))))
                           (if x-cnd7636
                             (begin
                               (write '(funapp 153 42))
                               (display "\n")
                               (c2 k j v))
                             #f))))
                        g7635))))
                   g7634)))
               (list-of
                (lambda (contract)
                  (letrec*
                   ((g7637
                     (lambda (k j v)
                       (letrec*
                        ((g7638
                          (letrec*
                           ((x-cnd7639
                             (begin
                               (write '(funapp 164 40))
                               (display "\n")
                               (null? v))))
                           (if x-cnd7639
                             (begin
                               (write '(funapp 166 29))
                               (display "\n")
                               '())
                             (letrec*
                              ((x7643
                                (letrec*
                                 ((x7644
                                   (begin
                                     (write '(funapp 170 42))
                                     (display "\n")
                                     (car v))))
                                 (begin
                                   (write '(funapp 171 34))
                                   (display "\n")
                                   (contract k j x7644))))
                               (x7640
                                (letrec*
                                 ((x7642
                                   (begin
                                     (write '(funapp 174 42))
                                     (display "\n")
                                     (list-of contract)))
                                  (x7641
                                   (begin
                                     (write '(funapp 174 69))
                                     (display "\n")
                                     (cdr v))))
                                 (begin
                                   (write '(funapp 175 34))
                                   (display "\n")
                                   (x7642 k j x7641)))))
                              (begin
                                (write '(funapp 176 31))
                                (display "\n")
                                (orig-cons x7643 x7640)))))))
                        g7638))))
                   g7637)))
               (any? (lambda (v) (letrec* ((g7645 #t)) g7645)))
               (nonzero?
                (lambda (v)
                  (letrec*
                   ((g7646
                     (letrec*
                      ((x7647
                        (begin
                          (write '(funapp 183 45))
                          (display "\n")
                          (= v 0))))
                      (begin
                        (write '(funapp 183 55))
                        (display "\n")
                        (not x7647)))))
                   g7646)))
               (nonzero?/c
                (lambda (g7287 g7288 g7289)
                  (letrec*
                   ((g7648
                     (letrec*
                      ((x-cnd7649
                        (begin
                          (write '(funapp 191 25))
                          (display "\n")
                          ((lambda (v)
                             (letrec*
                              ((g7650
                                (letrec*
                                 ((x7651
                                   (begin
                                     (write '(funapp 193 54))
                                     (display "\n")
                                     (= v 0))))
                                 (begin
                                   (write '(funapp 193 64))
                                   (display "\n")
                                   (not x7651)))))
                              g7650))
                           g7289))))
                      (if x-cnd7649
                        g7289
                        (begin
                          (write '(blame g7287 198 24))
                          (display "\n")
                          (error
                           (format
                            "contract violation, blaming ~a~%"
                            g7287)))))))
                   g7648)))
               (meta (lambda (v) (letrec* ((g7652 v)) g7652)))
               (+
                (begin
                  (write '(funapp 202 17))
                  (display "\n")
                  ((lambda (j7292 k7293 f7294)
                     (letrec*
                      ((g7654
                        (lambda (g7290 g7291)
                          (letrec*
                           ((g7655
                             (letrec*
                              ((x7656
                                (letrec*
                                 ((x7658
                                   (begin
                                     (write '(funapp 211 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7290)))
                                  (x7657
                                   (begin
                                     (write '(funapp 212 40))
                                     (display "\n")
                                     (number?/c j7292 k7293 g7291))))
                                 (begin
                                   (write '(funapp 213 32))
                                   (display "\n")
                                   (f7294 x7658 x7657)))))
                              (begin
                                (write '(funapp 214 29))
                                (display "\n")
                                (number?/c j7292 k7293 x7656)))))
                           g7655))))
                      g7654))
                   (begin (write '(funapp 217 17)) (display "\n") 'server)
                   (begin (write '(funapp 218 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7653
                        (begin
                          (write '(funapp 219 49))
                          (display "\n")
                          (orig-+ a b))))
                      g7653)))))
               (-
                (begin
                  (write '(funapp 221 17))
                  (display "\n")
                  ((lambda (j7297 k7298 f7299)
                     (letrec*
                      ((g7660
                        (lambda (g7295 g7296)
                          (letrec*
                           ((g7661
                             (letrec*
                              ((x7662
                                (letrec*
                                 ((x7664
                                   (begin
                                     (write '(funapp 230 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7295)))
                                  (x7663
                                   (begin
                                     (write '(funapp 231 40))
                                     (display "\n")
                                     (number?/c j7297 k7298 g7296))))
                                 (begin
                                   (write '(funapp 232 32))
                                   (display "\n")
                                   (f7299 x7664 x7663)))))
                              (begin
                                (write '(funapp 233 29))
                                (display "\n")
                                (number?/c j7297 k7298 x7662)))))
                           g7661))))
                      g7660))
                   (begin (write '(funapp 236 17)) (display "\n") 'server)
                   (begin (write '(funapp 237 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7659
                        (begin
                          (write '(funapp 238 49))
                          (display "\n")
                          (orig-- a b))))
                      g7659)))))
               (*
                (begin
                  (write '(funapp 240 17))
                  (display "\n")
                  ((lambda (j7302 k7303 f7304)
                     (letrec*
                      ((g7666
                        (lambda (g7300 g7301)
                          (letrec*
                           ((g7667
                             (letrec*
                              ((x7668
                                (letrec*
                                 ((x7670
                                   (begin
                                     (write '(funapp 249 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7300)))
                                  (x7669
                                   (begin
                                     (write '(funapp 250 40))
                                     (display "\n")
                                     (number?/c j7302 k7303 g7301))))
                                 (begin
                                   (write '(funapp 251 32))
                                   (display "\n")
                                   (f7304 x7670 x7669)))))
                              (begin
                                (write '(funapp 252 29))
                                (display "\n")
                                (number?/c j7302 k7303 x7668)))))
                           g7667))))
                      g7666))
                   (begin (write '(funapp 255 17)) (display "\n") 'server)
                   (begin (write '(funapp 256 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7665
                        (begin
                          (write '(funapp 257 49))
                          (display "\n")
                          (orig-* a b))))
                      g7665)))))
               (/
                (begin
                  (write '(funapp 259 17))
                  (display "\n")
                  ((lambda (j7307 k7308 f7309)
                     (letrec*
                      ((g7672
                        (lambda (g7305 g7306)
                          (letrec*
                           ((g7673
                             (letrec*
                              ((x7674
                                (letrec*
                                 ((x7676
                                   (begin
                                     (write '(funapp 268 40))
                                     (display "\n")
                                     (number?/c j7307 k7308 g7305)))
                                  (x7675
                                   (begin
                                     (write '(funapp 269 40))
                                     (display "\n")
                                     (number?/c j7307 k7308 g7306))))
                                 (begin
                                   (write '(funapp 270 32))
                                   (display "\n")
                                   (f7309 x7676 x7675)))))
                              (begin
                                (write '(funapp 271 29))
                                (display "\n")
                                (number?/c j7307 k7308 x7674)))))
                           g7673))))
                      g7672))
                   (begin (write '(funapp 274 17)) (display "\n") 'server)
                   (begin (write '(funapp 275 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7671
                        (begin
                          (write '(funapp 276 49))
                          (display "\n")
                          (orig-/ a b))))
                      g7671)))))
               (car
                (begin
                  (write '(funapp 278 17))
                  (display "\n")
                  ((lambda (j7311 k7312 f7313)
                     (letrec*
                      ((g7678
                        (lambda (g7310)
                          (letrec*
                           ((g7679
                             (letrec*
                              ((x7680
                                (letrec*
                                 ((x7681
                                   (begin
                                     (write '(funapp 287 40))
                                     (display "\n")
                                     (pair?/c j7311 k7312 g7310))))
                                 (begin
                                   (write '(funapp 288 32))
                                   (display "\n")
                                   (f7313 x7681)))))
                              (begin
                                (write '(funapp 289 29))
                                (display "\n")
                                (any/c j7311 k7312 x7680)))))
                           g7679))))
                      g7678))
                   (begin (write '(funapp 292 17)) (display "\n") 'server)
                   (begin (write '(funapp 293 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7677
                        (begin
                          (write '(funapp 294 47))
                          (display "\n")
                          (orig-car p))))
                      g7677)))))
               (cdr
                (begin
                  (write '(funapp 296 17))
                  (display "\n")
                  ((lambda (j7315 k7316 f7317)
                     (letrec*
                      ((g7683
                        (lambda (g7314)
                          (letrec*
                           ((g7684
                             (letrec*
                              ((x7685
                                (letrec*
                                 ((x7686
                                   (begin
                                     (write '(funapp 305 40))
                                     (display "\n")
                                     (pair?/c j7315 k7316 g7314))))
                                 (begin
                                   (write '(funapp 306 32))
                                   (display "\n")
                                   (f7317 x7686)))))
                              (begin
                                (write '(funapp 307 29))
                                (display "\n")
                                (any/c j7315 k7316 x7685)))))
                           g7684))))
                      g7683))
                   (begin (write '(funapp 310 17)) (display "\n") 'server)
                   (begin (write '(funapp 311 17)) (display "\n") 'client)
                   (lambda (p)
                     (letrec*
                      ((g7682
                        (begin
                          (write '(funapp 312 47))
                          (display "\n")
                          (orig-cdr p))))
                      g7682)))))
               (cons
                (begin
                  (write '(funapp 314 17))
                  (display "\n")
                  ((lambda (j7320 k7321 f7322)
                     (letrec*
                      ((g7688
                        (lambda (g7318 g7319)
                          (letrec*
                           ((g7689
                             (letrec*
                              ((x7690
                                (letrec*
                                 ((x7692
                                   (begin
                                     (write '(funapp 323 40))
                                     (display "\n")
                                     (any/c j7320 k7321 g7318)))
                                  (x7691
                                   (begin
                                     (write '(funapp 324 40))
                                     (display "\n")
                                     (any/c j7320 k7321 g7319))))
                                 (begin
                                   (write '(funapp 325 32))
                                   (display "\n")
                                   (f7322 x7692 x7691)))))
                              (begin
                                (write '(funapp 326 29))
                                (display "\n")
                                (pair?/c j7320 k7321 x7690)))))
                           g7689))))
                      g7688))
                   (begin (write '(funapp 329 17)) (display "\n") 'server)
                   (begin (write '(funapp 330 17)) (display "\n") 'client)
                   (lambda (a b)
                     (letrec*
                      ((g7687
                        (begin
                          (write '(funapp 331 49))
                          (display "\n")
                          (orig-cons a b))))
                      g7687)))))
               (vector-ref
                (begin
                  (write '(funapp 333 17))
                  (display "\n")
                  ((lambda (j7324 k7325 f7326)
                     (letrec*
                      ((g7694
                        (lambda (g7323)
                          (letrec*
                           ((g7695
                             (letrec*
                              ((x7696
                                (letrec*
                                 ((x7697
                                   (begin
                                     (write '(funapp 342 40))
                                     (display "\n")
                                     (vector?/c j7324 k7325 g7323))))
                                 (begin
                                   (write '(funapp 343 32))
                                   (display "\n")
                                   (f7326 x7697)))))
                              (begin
                                (write '(funapp 344 29))
                                (display "\n")
                                (integer?/c j7324 k7325 x7696)))))
                           g7695))))
                      g7694))
                   (begin (write '(funapp 347 17)) (display "\n") 'server)
                   (begin (write '(funapp 348 17)) (display "\n") 'client)
                   (lambda (v i)
                     (letrec*
                      ((g7693
                        (begin
                          (write '(funapp 350 37))
                          (display "\n")
                          (orig-vector-ref v i))))
                      g7693)))))
               (vector-set!
                (begin
                  (write '(funapp 352 17))
                  (display "\n")
                  ((lambda (j7329 k7330 f7331)
                     (letrec*
                      ((g7699
                        (lambda (g7327 g7328)
                          (letrec*
                           ((g7700
                             (letrec*
                              ((x7701
                                (letrec*
                                 ((x7703
                                   (begin
                                     (write '(funapp 361 40))
                                     (display "\n")
                                     (vector?/c j7329 k7330 g7327)))
                                  (x7702
                                   (begin
                                     (write '(funapp 362 40))
                                     (display "\n")
                                     (integer?/c j7329 k7330 g7328))))
                                 (begin
                                   (write '(funapp 363 32))
                                   (display "\n")
                                   (f7331 x7703 x7702)))))
                              (begin
                                (write '(funapp 364 29))
                                (display "\n")
                                (any/c j7329 k7330 x7701)))))
                           g7700))))
                      g7699))
                   (begin (write '(funapp 367 17)) (display "\n") 'server)
                   (begin (write '(funapp 368 17)) (display "\n") 'client)
                   (lambda (vec i v)
                     (letrec*
                      ((g7698
                        (begin
                          (write '(funapp 370 37))
                          (display "\n")
                          (orig-vector-set! vec i v))))
                      g7698)))))
               (assert
                (lambda (cnd)
                  (letrec*
                   ((g7704
                     (if cnd
                       (begin (write '(funapp 374 35)) (display "\n") '())
                       (begin
                         (write '(funapp 374 40))
                         (display "\n")
                         (error "assertion failed")))))
                   g7704)))
               (cdddr
                (lambda (x)
                  (letrec*
                   ((g7705
                     (letrec*
                      ((x7706
                        (letrec*
                         ((x7707
                           (begin
                             (write '(funapp 381 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 381 58))
                           (display "\n")
                           (cdr x7707)))))
                      (begin
                        (write '(funapp 382 23))
                        (display "\n")
                        (cdr x7706)))))
                   g7705)))
               (__toplevel_set-car! set-car!)
               (map
                (lambda (f l)
                  (letrec*
                   ((g7708
                     (letrec*
                      ((x7711
                        (begin
                          (write '(funapp 388 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 388 62))
                        (display "\n")
                        (assert x7711))))
                    (g7709
                     (letrec*
                      ((x7712
                        (begin
                          (write '(funapp 389 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 389 57))
                        (display "\n")
                        (assert x7712))))
                    (g7710
                     (letrec*
                      ((x-cnd7713
                        (begin
                          (write '(funapp 392 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7713
                        (begin (write '(funapp 394 24)) (display "\n") '())
                        (letrec*
                         ((x7716
                           (letrec*
                            ((x7717
                              (begin
                                (write '(funapp 396 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 396 61))
                              (display "\n")
                              (f x7717))))
                          (x7714
                           (letrec*
                            ((x7715
                              (begin
                                (write '(funapp 397 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 397 61))
                              (display "\n")
                              (map f x7715)))))
                         (begin
                           (write '(funapp 398 26))
                           (display "\n")
                           (cons x7716 x7714)))))))
                   g7710)))
               (cdar
                (lambda (x)
                  (letrec*
                   ((g7718
                     (letrec*
                      ((x7719
                        (begin
                          (write '(funapp 403 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 403 55))
                        (display "\n")
                        (cdr x7719)))))
                   g7718)))
               (cadadr
                (lambda (x)
                  (letrec*
                   ((g7720
                     (letrec*
                      ((x7721
                        (letrec*
                         ((x7722
                           (letrec*
                            ((x7723
                              (begin
                                (write '(funapp 412 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 412 61))
                              (display "\n")
                              (car x7723)))))
                         (begin
                           (write '(funapp 413 26))
                           (display "\n")
                           (cdr x7722)))))
                      (begin
                        (write '(funapp 414 23))
                        (display "\n")
                        (car x7721)))))
                   g7720)))
               (cdadar
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
                                (write '(funapp 423 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 423 61))
                              (display "\n")
                              (cdr x7727)))))
                         (begin
                           (write '(funapp 424 26))
                           (display "\n")
                           (car x7726)))))
                      (begin
                        (write '(funapp 425 23))
                        (display "\n")
                        (cdr x7725)))))
                   g7724)))
               (call-with-output-file
                (lambda (filename proc)
                  (letrec*
                   ((g7728
                     (letrec*
                      ((x7731
                        (begin
                          (write '(funapp 431 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 431 60))
                        (display "\n")
                        (assert x7731))))
                    (g7729
                     (letrec*
                      ((x7732
                        (begin
                          (write '(funapp 433 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 433 59))
                        (display "\n")
                        (assert x7732))))
                    (g7730
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
                       ((g7733
                         (begin
                           (write '(funapp 439 32))
                           (display "\n")
                           (close-output-port output-port)))
                        (g7734 res))
                       g7734))))
                   g7730)))
               (caddr
                (lambda (x)
                  (letrec*
                   ((g7735
                     (letrec*
                      ((x7736
                        (letrec*
                         ((x7737
                           (begin
                             (write '(funapp 447 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 447 58))
                           (display "\n")
                           (cdr x7737)))))
                      (begin
                        (write '(funapp 448 23))
                        (display "\n")
                        (car x7736)))))
                   g7735)))
               (cdaadr
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
                                (write '(funapp 457 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 457 61))
                              (display "\n")
                              (car x7741)))))
                         (begin
                           (write '(funapp 458 26))
                           (display "\n")
                           (car x7740)))))
                      (begin
                        (write '(funapp 459 23))
                        (display "\n")
                        (cdr x7739)))))
                   g7738)))
               (assq
                (lambda (k l)
                  (letrec*
                   ((g7742
                     (letrec*
                      ((x7744
                        (begin
                          (write '(funapp 464 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 464 57))
                        (display "\n")
                        (assert x7744))))
                    (g7743
                     (letrec*
                      ((x-cnd7745
                        (begin
                          (write '(funapp 467 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7745
                        #f
                        (letrec*
                         ((x-cnd7746
                           (letrec*
                            ((x7747
                              (begin
                                (write '(funapp 472 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 472 56))
                              (display "\n")
                              (eq? x7747 k)))))
                         (if x-cnd7746
                           (begin
                             (write '(funapp 474 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x7748
                              (begin
                                (write '(funapp 475 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 475 55))
                              (display "\n")
                              (assq k x7748)))))))))
                   g7743)))
               (even?
                (lambda (x)
                  (letrec*
                   ((g7749
                     (letrec*
                      ((x7750
                        (begin
                          (write '(funapp 480 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 480 60))
                        (display "\n")
                        (= 0 x7750)))))
                   g7749)))
               (list->string
                (lambda (l)
                  (letrec*
                   ((g7751
                     (letrec*
                      ((x7753
                        (begin
                          (write '(funapp 485 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 485 57))
                        (display "\n")
                        (assert x7753))))
                    (g7752
                     (letrec*
                      ((x-cnd7754
                        (begin
                          (write '(funapp 488 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7754
                        ""
                        (letrec*
                         ((x7757
                           (letrec*
                            ((x7758
                              (begin
                                (write '(funapp 493 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 493 55))
                              (display "\n")
                              (char->string x7758))))
                          (x7755
                           (letrec*
                            ((x7756
                              (begin
                                (write '(funapp 495 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 495 55))
                              (display "\n")
                              (list->string x7756)))))
                         (begin
                           (write '(funapp 496 26))
                           (display "\n")
                           (string-append x7757 x7755)))))))
                   g7752)))
               (char<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7759
                     (letrec*
                      ((x7762
                        (begin
                          (write '(funapp 501 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 501 58))
                        (display "\n")
                        (assert x7762))))
                    (g7760
                     (letrec*
                      ((x7763
                        (begin
                          (write '(funapp 502 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 502 58))
                        (display "\n")
                        (assert x7763))))
                    (g7761
                     (letrec*
                      ((val7241
                        (begin
                          (write '(funapp 505 33))
                          (display "\n")
                          (char<? c1 c2))))
                      (letrec*
                       ((g7764
                         (if val7241
                           val7241
                           (begin
                             (write '(funapp 507 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7764))))
                   g7761)))
               (cdddar
                (lambda (x)
                  (letrec*
                   ((g7765
                     (letrec*
                      ((x7766
                        (letrec*
                         ((x7767
                           (letrec*
                            ((x7768
                              (begin
                                (write '(funapp 517 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 517 61))
                              (display "\n")
                              (cdr x7768)))))
                         (begin
                           (write '(funapp 518 26))
                           (display "\n")
                           (cdr x7767)))))
                      (begin
                        (write '(funapp 519 23))
                        (display "\n")
                        (cdr x7766)))))
                   g7765)))
               (list-tail
                (lambda (x k)
                  (letrec*
                   ((g7769
                     (letrec*
                      ((x7772
                        (begin
                          (write '(funapp 524 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 524 57))
                        (display "\n")
                        (assert x7772))))
                    (g7770
                     (letrec*
                      ((x7773
                        (begin
                          (write '(funapp 525 45))
                          (display "\n")
                          (number?))))
                      (begin
                        (write '(funapp 525 57))
                        (display "\n")
                        (assert x7773))))
                    (g7771
                     (letrec*
                      ((x-cnd7774
                        (begin
                          (write '(funapp 528 35))
                          (display "\n")
                          (zero? k))))
                      (if x-cnd7774
                        x
                        (letrec*
                         ((x7776
                           (begin
                             (write '(funapp 532 34))
                             (display "\n")
                             (cdr x)))
                          (x7775
                           (begin
                             (write '(funapp 532 50))
                             (display "\n")
                             (- k 1))))
                         (begin
                           (write '(funapp 533 26))
                           (display "\n")
                           (list-tail x7776 x7775)))))))
                   g7771)))
               (halt
                (lambda ()
                  (letrec*
                   ((g7777
                     (begin (write '(funapp 535 49)) (display "\n") '())))
                   g7777)))
               (char-alphabetic?
                (lambda (c)
                  (letrec*
                   ((g7778
                     (letrec*
                      ((x-cnd7779
                        (letrec*
                         ((x7780 #\a))
                         (begin
                           (write '(funapp 542 48))
                           (display "\n")
                           (char-ci>=? c x7780)))))
                      (if x-cnd7779
                        (letrec*
                         ((x7781 #\z))
                         (begin
                           (write '(funapp 544 48))
                           (display "\n")
                           (char-ci<=? c x7781)))
                        #f))))
                   g7778)))
               (<=
                (lambda (x y)
                  (letrec*
                   ((g7782
                     (letrec*
                      ((x7784
                        (begin
                          (write '(funapp 550 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 550 59))
                        (display "\n")
                        (assert x7784))))
                    (g7783
                     (letrec*
                      ((val7242
                        (begin
                          (write '(funapp 553 33))
                          (display "\n")
                          (< x y))))
                      (letrec*
                       ((g7785
                         (if val7242
                           val7242
                           (letrec*
                            ((val7243
                              (begin
                                (write '(funapp 559 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7786 (if val7243 val7243 #f)))
                             g7786)))))
                       g7785))))
                   g7783)))
               (char-whitespace?
                (lambda (c)
                  (letrec*
                   ((g7787
                     (letrec*
                      ((val7244
                        (letrec*
                         ((x7788
                           (begin
                             (write '(funapp 571 42))
                             (display "\n")
                             (char->integer c))))
                         (begin
                           (write '(funapp 571 62))
                           (display "\n")
                           (= x7788 9)))))
                      (letrec*
                       ((g7789
                         (if val7244
                           val7244
                           (letrec*
                            ((val7245
                              (letrec*
                               ((x7790
                                 (begin
                                   (write '(funapp 579 40))
                                   (display "\n")
                                   (char->integer c))))
                               (begin
                                 (write '(funapp 580 32))
                                 (display "\n")
                                 (= x7790 10)))))
                            (letrec*
                             ((g7791
                               (if val7245
                                 val7245
                                 (letrec*
                                  ((x7792
                                    (begin
                                      (write '(funapp 586 43))
                                      (display "\n")
                                      (char->integer c))))
                                  (begin
                                    (write '(funapp 587 35))
                                    (display "\n")
                                    (= x7792 32))))))
                             g7791)))))
                       g7789))))
                   g7787)))
               (cddar
                (lambda (x)
                  (letrec*
                   ((g7793
                     (letrec*
                      ((x7794
                        (letrec*
                         ((x7795
                           (begin
                             (write '(funapp 596 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 596 58))
                           (display "\n")
                           (cdr x7795)))))
                      (begin
                        (write '(funapp 597 23))
                        (display "\n")
                        (cdr x7794)))))
                   g7793)))
               (positive?
                (lambda (x)
                  (letrec*
                   ((g7796
                     (letrec*
                      ((x7798
                        (begin
                          (write '(funapp 602 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 602 59))
                        (display "\n")
                        (assert x7798))))
                    (g7797
                     (begin (write '(funapp 603 28)) (display "\n") (> x 0))))
                   g7797)))
               ($pc (begin (write '(funapp 605 20)) (display "\n") '()))
               (ref-set set-car!)
               (void (lambda () (letrec* ((g7799 #f)) g7799)))
               (cddr
                (lambda (x)
                  (letrec*
                   ((g7800
                     (letrec*
                      ((x7801
                        (begin
                          (write '(funapp 611 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 611 55))
                        (display "\n")
                        (cdr x7801)))))
                   g7800)))
               (truncate
                (lambda (x)
                  (letrec*
                   ((g7802
                     (letrec*
                      ((x7804
                        (begin
                          (write '(funapp 616 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 616 59))
                        (display "\n")
                        (assert x7804))))
                    (g7803
                     (letrec*
                      ((x-cnd7805
                        (begin
                          (write '(funapp 619 35))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd7805
                        (begin
                          (write '(funapp 620 37))
                          (display "\n")
                          (ceiling x))
                        (begin
                          (write '(funapp 620 49))
                          (display "\n")
                          (floor x))))))
                   g7803)))
               ($cmp (begin (write '(funapp 622 21)) (display "\n") '()))
               (equal?
                (lambda (a b)
                  (letrec*
                   ((g7806
                     (letrec*
                      ((val7246
                        (begin
                          (write '(funapp 628 33))
                          (display "\n")
                          (eq? a b))))
                      (letrec*
                       ((g7807
                         (if val7246
                           val7246
                           (letrec*
                            ((val7247
                              (letrec*
                               ((x-cnd7808
                                 (begin
                                   (write '(funapp 636 44))
                                   (display "\n")
                                   (null? a))))
                               (if x-cnd7808
                                 (begin
                                   (write '(funapp 637 46))
                                   (display "\n")
                                   (null? b))
                                 #f))))
                            (letrec*
                             ((g7809
                               (if val7247
                                 val7247
                                 (letrec*
                                  ((val7248
                                    (letrec*
                                     ((x-cnd7810
                                       (begin
                                         (write '(funapp 645 50))
                                         (display "\n")
                                         (string? a))))
                                     (if x-cnd7810
                                       (letrec*
                                        ((x-cnd7811
                                          (begin
                                            (write '(funapp 648 53))
                                            (display "\n")
                                            (string? b))))
                                        (if x-cnd7811
                                          (begin
                                            (write '(funapp 649 55))
                                            (display "\n")
                                            (string=? a b))
                                          #f))
                                       #f))))
                                  (letrec*
                                   ((g7812
                                     (if val7248
                                       val7248
                                       (letrec*
                                        ((val7249
                                          (letrec*
                                           ((x-cnd7813
                                             (begin
                                               (write '(funapp 658 56))
                                               (display "\n")
                                               (pair? a))))
                                           (if x-cnd7813
                                             (letrec*
                                              ((x-cnd7814
                                                (begin
                                                  (write '(funapp 661 59))
                                                  (display "\n")
                                                  (pair? b))))
                                              (if x-cnd7814
                                                (letrec*
                                                 ((x-cnd7815
                                                   (letrec*
                                                    ((x7817
                                                      (begin
                                                        (write
                                                         '(funapp 666 61))
                                                        (display "\n")
                                                        (car a)))
                                                     (x7816
                                                      (begin
                                                        (write
                                                         '(funapp 667 61))
                                                        (display "\n")
                                                        (car b))))
                                                    (begin
                                                      (write '(funapp 668 53))
                                                      (display "\n")
                                                      (equal? x7817 x7816)))))
                                                 (if x-cnd7815
                                                   (letrec*
                                                    ((x7819
                                                      (begin
                                                        (write
                                                         '(funapp 671 61))
                                                        (display "\n")
                                                        (cdr a)))
                                                     (x7818
                                                      (begin
                                                        (write
                                                         '(funapp 672 61))
                                                        (display "\n")
                                                        (cdr b))))
                                                    (begin
                                                      (write '(funapp 673 53))
                                                      (display "\n")
                                                      (equal? x7819 x7818)))
                                                   #f))
                                                #f))
                                             #f))))
                                        (letrec*
                                         ((g7820
                                           (if val7249
                                             val7249
                                             (letrec*
                                              ((x-cnd7821
                                                (begin
                                                  (write '(funapp 682 59))
                                                  (display "\n")
                                                  (vector? a))))
                                              (if x-cnd7821
                                                (letrec*
                                                 ((x-cnd7822
                                                   (begin
                                                     (write '(funapp 685 62))
                                                     (display "\n")
                                                     (vector? b))))
                                                 (if x-cnd7822
                                                   (letrec*
                                                    ((n
                                                      (begin
                                                        (write
                                                         '(funapp 688 57))
                                                        (display "\n")
                                                        (vector-length a))))
                                                    (letrec*
                                                     ((g7823
                                                       (letrec*
                                                        ((x-cnd7824
                                                          (letrec*
                                                           ((x7825
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
                                                             (= x7825 n)))))
                                                        (if x-cnd7824
                                                          (letrec*
                                                           ((loop
                                                             (lambda (i)
                                                               (letrec*
                                                                ((g7826
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
                                                                    ((g7827
                                                                      (if val7250
                                                                        val7250
                                                                        (letrec*
                                                                         ((x-cnd7828
                                                                           (letrec*
                                                                            ((x7830
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
                                                                             (x7829
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
                                                                               x7830
                                                                               x7829)))))
                                                                         (if x-cnd7828
                                                                           (letrec*
                                                                            ((x7831
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
                                                                               x7831)))
                                                                           #f)))))
                                                                    g7827))))
                                                                g7826))))
                                                           (letrec*
                                                            ((g7832
                                                              (begin
                                                                (write
                                                                 '(funapp
                                                                   737
                                                                   69))
                                                                (display "\n")
                                                                (loop 0))))
                                                            g7832))
                                                          #f))))
                                                     g7823))
                                                   #f))
                                                #f)))))
                                         g7820)))))
                                   g7812)))))
                             g7809)))))
                       g7807))))
                   g7806)))
               (cdaaar
                (lambda (x)
                  (letrec*
                   ((g7833
                     (letrec*
                      ((x7834
                        (letrec*
                         ((x7835
                           (letrec*
                            ((x7836
                              (begin
                                (write '(funapp 755 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 755 61))
                              (display "\n")
                              (car x7836)))))
                         (begin
                           (write '(funapp 756 26))
                           (display "\n")
                           (car x7835)))))
                      (begin
                        (write '(funapp 757 23))
                        (display "\n")
                        (cdr x7834)))))
                   g7833)))
               (caaddr
                (lambda (x)
                  (letrec*
                   ((g7837
                     (letrec*
                      ((x7838
                        (letrec*
                         ((x7839
                           (letrec*
                            ((x7840
                              (begin
                                (write '(funapp 766 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 766 61))
                              (display "\n")
                              (cdr x7840)))))
                         (begin
                           (write '(funapp 767 26))
                           (display "\n")
                           (car x7839)))))
                      (begin
                        (write '(funapp 768 23))
                        (display "\n")
                        (car x7838)))))
                   g7837)))
               (eqv?
                (lambda (x y)
                  (letrec*
                   ((g7841
                     (begin
                       (write '(funapp 770 53))
                       (display "\n")
                       (eq? x y))))
                   g7841)))
               (>=
                (lambda (x y)
                  (letrec*
                   ((g7842
                     (letrec*
                      ((x7844
                        (begin
                          (write '(funapp 774 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 774 59))
                        (display "\n")
                        (assert x7844))))
                    (g7843
                     (letrec*
                      ((val7251
                        (begin
                          (write '(funapp 777 33))
                          (display "\n")
                          (> x y))))
                      (letrec*
                       ((g7845
                         (if val7251
                           val7251
                           (letrec*
                            ((val7252
                              (begin
                                (write '(funapp 783 39))
                                (display "\n")
                                (= x y))))
                            (letrec*
                             ((g7846 (if val7252 val7252 #f)))
                             g7846)))))
                       g7845))))
                   g7843)))
               (call-with-input-file
                (lambda (filename proc)
                  (letrec*
                   ((g7847
                     (letrec*
                      ((x7850
                        (begin
                          (write '(funapp 793 39))
                          (display "\n")
                          (string? filename))))
                      (begin
                        (write '(funapp 793 60))
                        (display "\n")
                        (assert x7850))))
                    (g7848
                     (letrec*
                      ((x7851
                        (begin
                          (write '(funapp 795 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 795 59))
                        (display "\n")
                        (assert x7851))))
                    (g7849
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
                       ((g7852
                         (begin
                           (write '(funapp 801 32))
                           (display "\n")
                           (close-input-port input-port)))
                        (g7853 res))
                       g7853))))
                   g7849)))
               (ref
                (lambda (x)
                  (letrec*
                   ((g7854
                     (begin
                       (write '(funapp 804 50))
                       (display "\n")
                       (cons
                        x
                        (begin (write '(funapp 804 57)) (display "\n") '())))))
                   g7854)))
               (char>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g7855
                     (letrec*
                      ((x7858
                        (begin
                          (write '(funapp 808 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 808 58))
                        (display "\n")
                        (assert x7858))))
                    (g7856
                     (letrec*
                      ((x7859
                        (begin
                          (write '(funapp 809 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 809 58))
                        (display "\n")
                        (assert x7859))))
                    (g7857
                     (letrec*
                      ((val7253
                        (begin
                          (write '(funapp 812 33))
                          (display "\n")
                          (char>? c1 c2))))
                      (letrec*
                       ((g7860
                         (if val7253
                           val7253
                           (begin
                             (write '(funapp 814 52))
                             (display "\n")
                             (char=? c1 c2)))))
                       g7860))))
                   g7857)))
               (cdaar
                (lambda (x)
                  (letrec*
                   ((g7861
                     (letrec*
                      ((x7862
                        (letrec*
                         ((x7863
                           (begin
                             (write '(funapp 822 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 822 58))
                           (display "\n")
                           (car x7863)))))
                      (begin
                        (write '(funapp 823 23))
                        (display "\n")
                        (cdr x7862)))))
                   g7861)))
               (cdaddr
                (lambda (x)
                  (letrec*
                   ((g7864
                     (letrec*
                      ((x7865
                        (letrec*
                         ((x7866
                           (letrec*
                            ((x7867
                              (begin
                                (write '(funapp 832 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 832 61))
                              (display "\n")
                              (cdr x7867)))))
                         (begin
                           (write '(funapp 833 26))
                           (display "\n")
                           (car x7866)))))
                      (begin
                        (write '(funapp 834 23))
                        (display "\n")
                        (cdr x7865)))))
                   g7864)))
               (__toplevel_cdr cdr)
               (cadar
                (lambda (x)
                  (letrec*
                   ((g7868
                     (letrec*
                      ((x7869
                        (letrec*
                         ((x7870
                           (begin
                             (write '(funapp 842 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 842 58))
                           (display "\n")
                           (cdr x7870)))))
                      (begin
                        (write '(funapp 843 23))
                        (display "\n")
                        (car x7869)))))
                   g7868)))
               (caadr
                (lambda (x)
                  (letrec*
                   ((g7871
                     (letrec*
                      ((x7872
                        (letrec*
                         ((x7873
                           (begin
                             (write '(funapp 850 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 850 58))
                           (display "\n")
                           (car x7873)))))
                      (begin
                        (write '(funapp 851 23))
                        (display "\n")
                        (car x7872)))))
                   g7871)))
               (char-ci>?
                (lambda (c1 c2)
                  (letrec*
                   ((g7874
                     (letrec*
                      ((x7877
                        (begin
                          (write '(funapp 856 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 856 58))
                        (display "\n")
                        (assert x7877))))
                    (g7875
                     (letrec*
                      ((x7878
                        (begin
                          (write '(funapp 857 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 857 58))
                        (display "\n")
                        (assert x7878))))
                    (g7876
                     (letrec*
                      ((x7879
                        (begin
                          (write '(funapp 858 45))
                          (display "\n")
                          (char-ci<=? c1 c2))))
                      (begin
                        (write '(funapp 858 66))
                        (display "\n")
                        (not x7879)))))
                   g7876)))
               (__toplevel_set-cdr! set-cdr!)
               (caaaar
                (lambda (x)
                  (letrec*
                   ((g7880
                     (letrec*
                      ((x7881
                        (letrec*
                         ((x7882
                           (letrec*
                            ((x7883
                              (begin
                                (write '(funapp 868 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 868 61))
                              (display "\n")
                              (car x7883)))))
                         (begin
                           (write '(funapp 869 26))
                           (display "\n")
                           (car x7882)))))
                      (begin
                        (write '(funapp 870 23))
                        (display "\n")
                        (car x7881)))))
                   g7880)))
               (negative?
                (lambda (x)
                  (letrec*
                   ((g7884
                     (letrec*
                      ((x7886
                        (begin
                          (write '(funapp 875 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 875 59))
                        (display "\n")
                        (assert x7886))))
                    (g7885
                     (begin (write '(funapp 876 28)) (display "\n") (< x 0))))
                   g7885)))
               (memv
                (lambda (e l)
                  (letrec*
                   ((g7887
                     (begin
                       (write '(funapp 878 53))
                       (display "\n")
                       (memq e l))))
                   g7887)))
               (caaar
                (lambda (x)
                  (letrec*
                   ((g7888
                     (letrec*
                      ((x7889
                        (letrec*
                         ((x7890
                           (begin
                             (write '(funapp 884 48))
                             (display "\n")
                             (car x))))
                         (begin
                           (write '(funapp 884 58))
                           (display "\n")
                           (car x7890)))))
                      (begin
                        (write '(funapp 885 23))
                        (display "\n")
                        (car x7889)))))
                   g7888)))
               (debug
                (lambda (e)
                  (letrec*
                   ((g7891
                     (begin (write '(funapp 887 51)) (display "\n") '())))
                   g7891)))
               (reverse
                (lambda (l)
                  (letrec*
                   ((g7892
                     (letrec*
                      ((x7894
                        (begin
                          (write '(funapp 891 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 891 57))
                        (display "\n")
                        (assert x7894))))
                    (g7893
                     (letrec*
                      ((x-cnd7895
                        (begin
                          (write '(funapp 894 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7895
                        (begin (write '(funapp 896 24)) (display "\n") '())
                        (letrec*
                         ((x7898
                           (letrec*
                            ((x7899
                              (begin
                                (write '(funapp 898 51))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 898 61))
                              (display "\n")
                              (reverse x7899))))
                          (x7896
                           (letrec*
                            ((x7897
                              (begin
                                (write '(funapp 899 51))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 899 61))
                              (display "\n")
                              (list x7897)))))
                         (begin
                           (write '(funapp 900 26))
                           (display "\n")
                           (append x7898 x7896)))))))
                   g7893)))
               (caaadr
                (lambda (x)
                  (letrec*
                   ((g7900
                     (letrec*
                      ((x7901
                        (letrec*
                         ((x7902
                           (letrec*
                            ((x7903
                              (begin
                                (write '(funapp 909 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 909 61))
                              (display "\n")
                              (car x7903)))))
                         (begin
                           (write '(funapp 910 26))
                           (display "\n")
                           (car x7902)))))
                      (begin
                        (write '(funapp 911 23))
                        (display "\n")
                        (car x7901)))))
                   g7900)))
               (cddadr
                (lambda (x)
                  (letrec*
                   ((g7904
                     (letrec*
                      ((x7905
                        (letrec*
                         ((x7906
                           (letrec*
                            ((x7907
                              (begin
                                (write '(funapp 920 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 920 61))
                              (display "\n")
                              (car x7907)))))
                         (begin
                           (write '(funapp 921 26))
                           (display "\n")
                           (cdr x7906)))))
                      (begin
                        (write '(funapp 922 23))
                        (display "\n")
                        (cdr x7905)))))
                   g7904)))
               (odd?
                (lambda (x)
                  (letrec*
                   ((g7908
                     (letrec*
                      ((x7910
                        (begin
                          (write '(funapp 927 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 927 59))
                        (display "\n")
                        (assert x7910))))
                    (g7909
                     (letrec*
                      ((x7911
                        (begin
                          (write '(funapp 928 45))
                          (display "\n")
                          (modulo x 2))))
                      (begin
                        (write '(funapp 928 60))
                        (display "\n")
                        (= 1 x7911)))))
                   g7909)))
               (caadar
                (lambda (x)
                  (letrec*
                   ((g7912
                     (letrec*
                      ((x7913
                        (letrec*
                         ((x7914
                           (letrec*
                            ((x7915
                              (begin
                                (write '(funapp 937 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 937 61))
                              (display "\n")
                              (cdr x7915)))))
                         (begin
                           (write '(funapp 938 26))
                           (display "\n")
                           (car x7914)))))
                      (begin
                        (write '(funapp 939 23))
                        (display "\n")
                        (car x7913)))))
                   g7912)))
               (apply
                (lambda (proc args)
                  (letrec*
                   ((g7916
                     (letrec*
                      ((x7919
                        (begin
                          (write '(funapp 945 39))
                          (display "\n")
                          (procedure? proc))))
                      (begin
                        (write '(funapp 945 59))
                        (display "\n")
                        (assert x7919))))
                    (g7917
                     (letrec*
                      ((x7920
                        (begin
                          (write '(funapp 946 45))
                          (display "\n")
                          (list? args))))
                      (begin
                        (write '(funapp 946 60))
                        (display "\n")
                        (assert x7920))))
                    (g7918
                     (letrec*
                      ((x-cnd7921
                        (begin
                          (write '(funapp 949 35))
                          (display "\n")
                          (null? args))))
                      (if x-cnd7921
                        (letrec*
                         ((g7922
                           (begin
                             (write '(funapp 951 42))
                             (display "\n")
                             (proc))))
                         g7922)
                        (letrec*
                         ((x-cnd7923
                           (letrec*
                            ((x7924
                              (begin
                                (write '(funapp 954 45))
                                (display "\n")
                                (cdr args))))
                            (begin
                              (write '(funapp 954 58))
                              (display "\n")
                              (null? x7924)))))
                         (if x-cnd7923
                           (letrec*
                            ((g7925
                              (letrec*
                               ((x7926
                                 (begin
                                   (write '(funapp 958 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 958 61))
                                 (display "\n")
                                 (proc x7926)))))
                            g7925)
                           (letrec*
                            ((x-cnd7927
                              (letrec*
                               ((x7928
                                 (begin
                                   (write '(funapp 962 48))
                                   (display "\n")
                                   (cddr args))))
                               (begin
                                 (write '(funapp 962 62))
                                 (display "\n")
                                 (null? x7928)))))
                            (if x-cnd7927
                              (letrec*
                               ((g7929
                                 (letrec*
                                  ((x7931
                                    (begin
                                      (write '(funapp 967 43))
                                      (display "\n")
                                      (car args)))
                                   (x7930
                                    (begin
                                      (write '(funapp 967 62))
                                      (display "\n")
                                      (cadr args))))
                                  (begin
                                    (write '(funapp 968 35))
                                    (display "\n")
                                    (proc x7931 x7930)))))
                               g7929)
                              (letrec*
                               ((x-cnd7932
                                 (letrec*
                                  ((x7933
                                    (begin
                                      (write '(funapp 973 43))
                                      (display "\n")
                                      (cdddr args))))
                                  (begin
                                    (write '(funapp 974 35))
                                    (display "\n")
                                    (null? x7933)))))
                               (if x-cnd7932
                                 (letrec*
                                  ((g7934
                                    (letrec*
                                     ((x7937
                                       (begin
                                         (write '(funapp 979 46))
                                         (display "\n")
                                         (car args)))
                                      (x7936
                                       (begin
                                         (write '(funapp 980 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7935
                                       (begin
                                         (write '(funapp 981 46))
                                         (display "\n")
                                         (caddr args))))
                                     (begin
                                       (write '(funapp 982 38))
                                       (display "\n")
                                       (proc x7937 x7936 x7935)))))
                                  g7934)
                                 (letrec*
                                  ((x-cnd7938
                                    (letrec*
                                     ((x7939
                                       (begin
                                         (write '(funapp 987 46))
                                         (display "\n")
                                         (cddddr args))))
                                     (begin
                                       (write '(funapp 988 38))
                                       (display "\n")
                                       (null? x7939)))))
                                  (if x-cnd7938
                                    (letrec*
                                     ((g7940
                                       (letrec*
                                        ((x7944
                                          (begin
                                            (write '(funapp 993 49))
                                            (display "\n")
                                            (car args)))
                                         (x7943
                                          (begin
                                            (write '(funapp 994 49))
                                            (display "\n")
                                            (cadr args)))
                                         (x7942
                                          (begin
                                            (write '(funapp 995 49))
                                            (display "\n")
                                            (caddr args)))
                                         (x7941
                                          (begin
                                            (write '(funapp 996 49))
                                            (display "\n")
                                            (cadddr args))))
                                        (begin
                                          (write '(funapp 997 41))
                                          (display "\n")
                                          (proc x7944 x7943 x7942 x7941)))))
                                     g7940)
                                    (letrec*
                                     ((x-cnd7945
                                       (letrec*
                                        ((x7946
                                          (letrec*
                                           ((x7947
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (cddddr args))))
                                           (begin
                                             (write '(funapp 1005 44))
                                             (display "\n")
                                             (cdr x7947)))))
                                        (begin
                                          (write '(funapp 1006 41))
                                          (display "\n")
                                          (null? x7946)))))
                                     (if x-cnd7945
                                       (letrec*
                                        ((g7948
                                          (letrec*
                                           ((x7954
                                             (begin
                                               (write '(funapp 1011 52))
                                               (display "\n")
                                               (car args)))
                                            (x7953
                                             (begin
                                               (write '(funapp 1012 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7952
                                             (begin
                                               (write '(funapp 1013 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7951
                                             (begin
                                               (write '(funapp 1014 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7949
                                             (letrec*
                                              ((x7950
                                                (begin
                                                  (write '(funapp 1017 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1018 47))
                                                (display "\n")
                                                (car x7950)))))
                                           (begin
                                             (write '(funapp 1019 44))
                                             (display "\n")
                                             (proc
                                              x7954
                                              x7953
                                              x7952
                                              x7951
                                              x7949)))))
                                        g7948)
                                       (letrec*
                                        ((x-cnd7955
                                          (letrec*
                                           ((x7956
                                             (letrec*
                                              ((x7957
                                                (begin
                                                  (write '(funapp 1031 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1032 47))
                                                (display "\n")
                                                (cddr x7957)))))
                                           (begin
                                             (write '(funapp 1033 44))
                                             (display "\n")
                                             (null? x7956)))))
                                        (if x-cnd7955
                                          (letrec*
                                           ((g7958
                                             (letrec*
                                              ((x7966
                                                (begin
                                                  (write '(funapp 1038 55))
                                                  (display "\n")
                                                  (car args)))
                                               (x7965
                                                (begin
                                                  (write '(funapp 1039 55))
                                                  (display "\n")
                                                  (cadr args)))
                                               (x7964
                                                (begin
                                                  (write '(funapp 1040 55))
                                                  (display "\n")
                                                  (caddr args)))
                                               (x7963
                                                (begin
                                                  (write '(funapp 1041 55))
                                                  (display "\n")
                                                  (cadddr args)))
                                               (x7961
                                                (letrec*
                                                 ((x7962
                                                   (begin
                                                     (write '(funapp 1044 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1045 50))
                                                   (display "\n")
                                                   (car x7962))))
                                               (x7959
                                                (letrec*
                                                 ((x7960
                                                   (begin
                                                     (write '(funapp 1048 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1049 50))
                                                   (display "\n")
                                                   (cadr x7960)))))
                                              (begin
                                                (write '(funapp 1050 47))
                                                (display "\n")
                                                (proc
                                                 x7966
                                                 x7965
                                                 x7964
                                                 x7963
                                                 x7961
                                                 x7959)))))
                                           g7958)
                                          (letrec*
                                           ((x-cnd7967
                                             (letrec*
                                              ((x7968
                                                (letrec*
                                                 ((x7969
                                                   (begin
                                                     (write '(funapp 1063 58))
                                                     (display "\n")
                                                     (cddddr args))))
                                                 (begin
                                                   (write '(funapp 1064 50))
                                                   (display "\n")
                                                   (cdddr x7969)))))
                                              (begin
                                                (write '(funapp 1065 47))
                                                (display "\n")
                                                (null? x7968)))))
                                           (if x-cnd7967
                                             (letrec*
                                              ((g7970
                                                (letrec*
                                                 ((x7980
                                                   (begin
                                                     (write '(funapp 1070 58))
                                                     (display "\n")
                                                     (car args)))
                                                  (x7979
                                                   (begin
                                                     (write '(funapp 1071 58))
                                                     (display "\n")
                                                     (cadr args)))
                                                  (x7978
                                                   (begin
                                                     (write '(funapp 1072 58))
                                                     (display "\n")
                                                     (caddr args)))
                                                  (x7977
                                                   (begin
                                                     (write '(funapp 1073 58))
                                                     (display "\n")
                                                     (cadddr args)))
                                                  (x7975
                                                   (letrec*
                                                    ((x7976
                                                      (begin
                                                        (write
                                                         '(funapp 1076 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1077 53))
                                                      (display "\n")
                                                      (car x7976))))
                                                  (x7973
                                                   (letrec*
                                                    ((x7974
                                                      (begin
                                                        (write
                                                         '(funapp 1080 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1081 53))
                                                      (display "\n")
                                                      (cadr x7974))))
                                                  (x7971
                                                   (letrec*
                                                    ((x7972
                                                      (begin
                                                        (write
                                                         '(funapp 1084 61))
                                                        (display "\n")
                                                        (cddddr args))))
                                                    (begin
                                                      (write '(funapp 1085 53))
                                                      (display "\n")
                                                      (caddr x7972)))))
                                                 (begin
                                                   (write '(funapp 1086 50))
                                                   (display "\n")
                                                   (proc
                                                    x7980
                                                    x7979
                                                    x7978
                                                    x7977
                                                    x7975
                                                    x7973
                                                    x7971)))))
                                              g7970)
                                             (letrec*
                                              ((g7981
                                                (begin
                                                  (write '(funapp 1097 49))
                                                  (display "\n")
                                                  (error
                                                   "Unsupported call."))))
                                              g7981)))))))))))))))))))
                   g7918)))
               (member
                (lambda (e l)
                  (letrec*
                   ((g7982
                     (letrec*
                      ((x7984
                        (begin
                          (write '(funapp 1103 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1103 57))
                        (display "\n")
                        (assert x7984))))
                    (g7983
                     (letrec*
                      ((x-cnd7985
                        (begin
                          (write '(funapp 1106 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd7985
                        #f
                        (letrec*
                         ((x-cnd7986
                           (letrec*
                            ((x7987
                              (begin
                                (write '(funapp 1111 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1111 55))
                              (display "\n")
                              (equal? x7987 e)))))
                         (if x-cnd7986
                           l
                           (letrec*
                            ((x7988
                              (begin
                                (write '(funapp 1114 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1114 55))
                              (display "\n")
                              (member e x7988)))))))))
                   g7983)))
               (cddddr
                (lambda (x)
                  (letrec*
                   ((g7989
                     (letrec*
                      ((x7990
                        (letrec*
                         ((x7991
                           (letrec*
                            ((x7992
                              (begin
                                (write '(funapp 1123 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1123 61))
                              (display "\n")
                              (cdr x7992)))))
                         (begin
                           (write '(funapp 1124 26))
                           (display "\n")
                           (cdr x7991)))))
                      (begin
                        (write '(funapp 1125 23))
                        (display "\n")
                        (cdr x7990)))))
                   g7989)))
               (cadddr
                (lambda (x)
                  (letrec*
                   ((g7993
                     (letrec*
                      ((x7994
                        (letrec*
                         ((x7995
                           (letrec*
                            ((x7996
                              (begin
                                (write '(funapp 1134 51))
                                (display "\n")
                                (cdr x))))
                            (begin
                              (write '(funapp 1134 61))
                              (display "\n")
                              (cdr x7996)))))
                         (begin
                           (write '(funapp 1135 26))
                           (display "\n")
                           (cdr x7995)))))
                      (begin
                        (write '(funapp 1136 23))
                        (display "\n")
                        (car x7994)))))
                   g7993)))
               (int-top
                (lambda ()
                  (letrec*
                   ((g7997
                     (begin
                       (write '(funapp 1138 53))
                       (display "\n")
                       (random 42))))
                   g7997)))
               (zero?
                (lambda (x)
                  (letrec*
                   ((g7998
                     (letrec*
                      ((x8000
                        (begin
                          (write '(funapp 1142 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1142 59))
                        (display "\n")
                        (assert x8000))))
                    (g7999
                     (begin (write '(funapp 1143 28)) (display "\n") (= x 0))))
                   g7999)))
               (string>=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8001
                     (letrec*
                      ((val7254
                        (begin
                          (write '(funapp 1150 33))
                          (display "\n")
                          (string>? s1 s2))))
                      (letrec*
                       ((g8002
                         (if val7254
                           val7254
                           (begin
                             (write '(funapp 1152 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8002))))
                   g8001)))
               (cadr
                (lambda (x)
                  (letrec*
                   ((g8003
                     (letrec*
                      ((x8004
                        (begin
                          (write '(funapp 1158 45))
                          (display "\n")
                          (cdr x))))
                      (begin
                        (write '(funapp 1158 55))
                        (display "\n")
                        (car x8004)))))
                   g8003)))
               (__toplevel_car car)
               (list?
                (lambda (l)
                  (letrec*
                   ((g8005
                     (letrec*
                      ((val7255
                        (letrec*
                         ((x-cnd8006
                           (begin
                             (write '(funapp 1168 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8006
                           (letrec*
                            ((x8007
                              (begin
                                (write '(funapp 1170 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1170 55))
                              (display "\n")
                              (list? x8007)))
                           #f))))
                      (letrec*
                       ((g8008
                         (if val7255
                           val7255
                           (begin
                             (write '(funapp 1173 52))
                             (display "\n")
                             (null? l)))))
                       g8008))))
                   g8005)))
               (cddaar
                (lambda (x)
                  (letrec*
                   ((g8009
                     (letrec*
                      ((x8010
                        (letrec*
                         ((x8011
                           (letrec*
                            ((x8012
                              (begin
                                (write '(funapp 1183 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1183 61))
                              (display "\n")
                              (car x8012)))))
                         (begin
                           (write '(funapp 1184 26))
                           (display "\n")
                           (cdr x8011)))))
                      (begin
                        (write '(funapp 1185 23))
                        (display "\n")
                        (cdr x8010)))))
                   g8009)))
               (char-numeric?
                (lambda (c)
                  (letrec*
                   ((g8013
                     (letrec*
                      ((x-cnd8014
                        (letrec*
                         ((x8015 #\0))
                         (begin
                           (write '(funapp 1192 58))
                           (display "\n")
                           (char<=? x8015 c)))))
                      (if x-cnd8014
                        (letrec*
                         ((x8016 #\9))
                         (begin
                           (write '(funapp 1194 48))
                           (display "\n")
                           (char<=? c x8016)))
                        #f))))
                   g8013)))
               (__toplevel_cons cons)
               (assv
                (lambda (k l)
                  (letrec*
                   ((g8017
                     (letrec*
                      ((x8019
                        (begin
                          (write '(funapp 1201 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1201 57))
                        (display "\n")
                        (assert x8019))))
                    (g8018
                     (letrec*
                      ((x-cnd8020
                        (begin
                          (write '(funapp 1204 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8020
                        #f
                        (letrec*
                         ((x-cnd8021
                           (letrec*
                            ((x8022
                              (begin
                                (write '(funapp 1209 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1209 56))
                              (display "\n")
                              (eqv? x8022 k)))))
                         (if x-cnd8021
                           (begin
                             (write '(funapp 1211 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8023
                              (begin
                                (write '(funapp 1212 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1212 55))
                              (display "\n")
                              (assq k x8023)))))))))
                   g8018)))
               (not (lambda (x) (letrec* ((g8024 (if x #f #t))) g8024)))
               (__toplevel_append
                (lambda (l1 l2)
                  (letrec*
                   ((g8025
                     (begin
                       (write '(funapp 1216 50))
                       (display "\n")
                       (append l1 l2))))
                   g8025)))
               (memq
                (lambda (e l)
                  (letrec*
                   ((g8026
                     (letrec*
                      ((x8028
                        (begin
                          (write '(funapp 1220 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1220 57))
                        (display "\n")
                        (assert x8028))))
                    (g8027
                     (letrec*
                      ((x-cnd8029
                        (begin
                          (write '(funapp 1223 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8029
                        #f
                        (letrec*
                         ((x-cnd8030
                           (letrec*
                            ((x8031
                              (begin
                                (write '(funapp 1228 45))
                                (display "\n")
                                (car l))))
                            (begin
                              (write '(funapp 1228 55))
                              (display "\n")
                              (eq? x8031 e)))))
                         (if x-cnd8030
                           l
                           (letrec*
                            ((x8032
                              (begin
                                (write '(funapp 1231 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1231 55))
                              (display "\n")
                              (memq e x8032)))))))))
                   g8027)))
               (cadaar
                (lambda (x)
                  (letrec*
                   ((g8033
                     (letrec*
                      ((x8034
                        (letrec*
                         ((x8035
                           (letrec*
                            ((x8036
                              (begin
                                (write '(funapp 1240 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1240 61))
                              (display "\n")
                              (car x8036)))))
                         (begin
                           (write '(funapp 1241 26))
                           (display "\n")
                           (cdr x8035)))))
                      (begin
                        (write '(funapp 1242 23))
                        (display "\n")
                        (car x8034)))))
                   g8033)))
               (length
                (lambda (l)
                  (letrec*
                   ((g8037
                     (letrec*
                      ((x8039
                        (begin
                          (write '(funapp 1247 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1247 57))
                        (display "\n")
                        (assert x8039))))
                    (g8038
                     (letrec*
                      ((rec
                        (lambda (l)
                          (letrec*
                           ((g8040
                             (letrec*
                              ((x-cnd8041
                                (begin
                                  (write '(funapp 1255 43))
                                  (display "\n")
                                  (null? l))))
                              (if x-cnd8041
                                0
                                (letrec*
                                 ((x8042
                                   (letrec*
                                    ((x8043
                                      (begin
                                        (write '(funapp 1260 53))
                                        (display "\n")
                                        (cdr l))))
                                    (begin
                                      (write '(funapp 1260 63))
                                      (display "\n")
                                      (rec x8043)))))
                                 (begin
                                   (write '(funapp 1261 34))
                                   (display "\n")
                                   (+ 1 x8042)))))))
                           g8040))))
                      (letrec*
                       ((g8044
                         (begin
                           (write '(funapp 1263 40))
                           (display "\n")
                           (rec l))))
                       g8044))))
                   g8038)))
               (char-ci<=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8045
                     (letrec*
                      ((x8048
                        (begin
                          (write '(funapp 1268 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1268 58))
                        (display "\n")
                        (assert x8048))))
                    (g8046
                     (letrec*
                      ((x8049
                        (begin
                          (write '(funapp 1269 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1269 58))
                        (display "\n")
                        (assert x8049))))
                    (g8047
                     (letrec*
                      ((val7256
                        (begin
                          (write '(funapp 1272 33))
                          (display "\n")
                          (char-ci<? c1 c2))))
                      (letrec*
                       ((g8050
                         (if val7256
                           val7256
                           (begin
                             (write '(funapp 1274 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8050))))
                   g8047)))
               (string>?
                (lambda (s1 s2)
                  (letrec*
                   ((g8051
                     (letrec*
                      ((x8052
                        (begin
                          (write '(funapp 1280 45))
                          (display "\n")
                          (string<=? s1 s2))))
                      (begin
                        (write '(funapp 1280 65))
                        (display "\n")
                        (not x8052)))))
                   g8051)))
               (cdadr
                (lambda (x)
                  (letrec*
                   ((g8053
                     (letrec*
                      ((x8054
                        (letrec*
                         ((x8055
                           (begin
                             (write '(funapp 1287 48))
                             (display "\n")
                             (cdr x))))
                         (begin
                           (write '(funapp 1287 58))
                           (display "\n")
                           (car x8055)))))
                      (begin
                        (write '(funapp 1288 23))
                        (display "\n")
                        (cdr x8054)))))
                   g8053)))
               (assoc
                (lambda (k l)
                  (letrec*
                   ((g8056
                     (letrec*
                      ((x8058
                        (begin
                          (write '(funapp 1293 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1293 57))
                        (display "\n")
                        (assert x8058))))
                    (g8057
                     (letrec*
                      ((x-cnd8059
                        (begin
                          (write '(funapp 1296 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8059
                        #f
                        (letrec*
                         ((x-cnd8060
                           (letrec*
                            ((x8061
                              (begin
                                (write '(funapp 1301 45))
                                (display "\n")
                                (caar l))))
                            (begin
                              (write '(funapp 1301 56))
                              (display "\n")
                              (equal? x8061 k)))))
                         (if x-cnd8060
                           (begin
                             (write '(funapp 1303 28))
                             (display "\n")
                             (car l))
                           (letrec*
                            ((x8062
                              (begin
                                (write '(funapp 1304 45))
                                (display "\n")
                                (cdr l))))
                            (begin
                              (write '(funapp 1304 55))
                              (display "\n")
                              (assoc k x8062)))))))))
                   g8057)))
               (caar
                (lambda (x)
                  (letrec*
                   ((g8063
                     (letrec*
                      ((x8064
                        (begin
                          (write '(funapp 1309 45))
                          (display "\n")
                          (car x))))
                      (begin
                        (write '(funapp 1309 55))
                        (display "\n")
                        (car x8064)))))
                   g8063)))
               (char>?
                (lambda (c1 c2)
                  (letrec*
                   ((g8065
                     (letrec*
                      ((x8068
                        (begin
                          (write '(funapp 1314 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1314 58))
                        (display "\n")
                        (assert x8068))))
                    (g8066
                     (letrec*
                      ((x8069
                        (begin
                          (write '(funapp 1315 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1315 58))
                        (display "\n")
                        (assert x8069))))
                    (g8067
                     (letrec*
                      ((x8070
                        (begin
                          (write '(funapp 1316 45))
                          (display "\n")
                          (char<=? c1 c2))))
                      (begin
                        (write '(funapp 1316 63))
                        (display "\n")
                        (not x8070)))))
                   g8067)))
               (string<=?
                (lambda (s1 s2)
                  (letrec*
                   ((g8071
                     (letrec*
                      ((val7257
                        (begin
                          (write '(funapp 1323 33))
                          (display "\n")
                          (string<? s1 s2))))
                      (letrec*
                       ((g8072
                         (if val7257
                           val7257
                           (begin
                             (write '(funapp 1325 52))
                             (display "\n")
                             (string=? s1 s2)))))
                       g8072))))
                   g8071)))
               (for-each
                (lambda (f l)
                  (letrec*
                   ((g8073
                     (letrec*
                      ((x8076
                        (begin
                          (write '(funapp 1331 45))
                          (display "\n")
                          (procedure? f))))
                      (begin
                        (write '(funapp 1331 62))
                        (display "\n")
                        (assert x8076))))
                    (g8074
                     (letrec*
                      ((x8077
                        (begin
                          (write '(funapp 1332 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1332 57))
                        (display "\n")
                        (assert x8077))))
                    (g8075
                     (letrec*
                      ((x-cnd8078
                        (begin
                          (write '(funapp 1335 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8078
                        #t
                        (letrec*
                         ((x-cnd8079
                           (begin
                             (write '(funapp 1339 38))
                             (display "\n")
                             (pair? l))))
                         (if x-cnd8079
                           (letrec*
                            ((g8080
                              (letrec*
                               ((x8082
                                 (begin
                                   (write '(funapp 1342 54))
                                   (display "\n")
                                   (car l))))
                               (begin
                                 (write '(funapp 1342 64))
                                 (display "\n")
                                 (f x8082))))
                             (g8081
                              (letrec*
                               ((x8083
                                 (begin
                                   (write '(funapp 1344 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1344 58))
                                 (display "\n")
                                 (for-each f x8083)))))
                            g8081)
                           (begin
                             (write '(funapp 1346 27))
                             (display "\n")
                             '())))))))
                   g8075)))
               (abs
                (lambda (x)
                  (letrec*
                   ((g8084
                     (letrec*
                      ((x8086
                        (begin
                          (write '(funapp 1351 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1351 59))
                        (display "\n")
                        (assert x8086))))
                    (g8085
                     (letrec*
                      ((x-cnd8087
                        (begin
                          (write '(funapp 1353 43))
                          (display "\n")
                          (< x 0))))
                      (if x-cnd8087
                        (begin
                          (write '(funapp 1353 67))
                          (display "\n")
                          (- 0 x))
                        x))))
                   g8085)))
               (char-ci>=?
                (lambda (c1 c2)
                  (letrec*
                   ((g8088
                     (letrec*
                      ((x8091
                        (begin
                          (write '(funapp 1358 45))
                          (display "\n")
                          (char? c1))))
                      (begin
                        (write '(funapp 1358 58))
                        (display "\n")
                        (assert x8091))))
                    (g8089
                     (letrec*
                      ((x8092
                        (begin
                          (write '(funapp 1359 45))
                          (display "\n")
                          (char? c2))))
                      (begin
                        (write '(funapp 1359 58))
                        (display "\n")
                        (assert x8092))))
                    (g8090
                     (letrec*
                      ((val7258
                        (begin
                          (write '(funapp 1362 33))
                          (display "\n")
                          (char-ci>? c1 c2))))
                      (letrec*
                       ((g8093
                         (if val7258
                           val7258
                           (begin
                             (write '(funapp 1364 52))
                             (display "\n")
                             (char-ci=? c1 c2)))))
                       g8093))))
                   g8090)))
               (caddar
                (lambda (x)
                  (letrec*
                   ((g8094
                     (letrec*
                      ((x8095
                        (letrec*
                         ((x8096
                           (letrec*
                            ((x8097
                              (begin
                                (write '(funapp 1374 51))
                                (display "\n")
                                (car x))))
                            (begin
                              (write '(funapp 1374 61))
                              (display "\n")
                              (cdr x8097)))))
                         (begin
                           (write '(funapp 1375 26))
                           (display "\n")
                           (cdr x8096)))))
                      (begin
                        (write '(funapp 1376 23))
                        (display "\n")
                        (car x8095)))))
                   g8094)))
               (newline (lambda () (letrec* ((g8098 #f)) g8098)))
               (lcm
                (lambda (m n)
                  (letrec*
                   ((g8099
                     (letrec*
                      ((x8101
                        (letrec*
                         ((x8102
                           (begin
                             (write '(funapp 1384 48))
                             (display "\n")
                             (* m n))))
                         (begin
                           (write '(funapp 1384 58))
                           (display "\n")
                           (abs x8102))))
                       (x8100
                        (begin
                          (write '(funapp 1385 31))
                          (display "\n")
                          (gcd m n))))
                      (begin
                        (write '(funapp 1386 23))
                        (display "\n")
                        (/ x8101 x8100)))))
                   g8099)))
               (deref car)
               (>
                (lambda (x y)
                  (letrec*
                   ((g8103
                     (letrec*
                      ((x8105
                        (begin
                          (write '(funapp 1392 45))
                          (display "\n")
                          (number? x))))
                      (begin
                        (write '(funapp 1392 59))
                        (display "\n")
                        (assert x8105))))
                    (g8104
                     (letrec*
                      ((x8106
                        (begin
                          (write '(funapp 1393 45))
                          (display "\n")
                          (<= x y))))
                      (begin
                        (write '(funapp 1393 56))
                        (display "\n")
                        (not x8106)))))
                   g8104)))
               (list-ref
                (lambda (l index)
                  (letrec*
                   ((g8107
                     (letrec*
                      ((x8111
                        (begin
                          (write '(funapp 1398 45))
                          (display "\n")
                          (list? l))))
                      (begin
                        (write '(funapp 1398 57))
                        (display "\n")
                        (assert x8111))))
                    (g8108
                     (letrec*
                      ((x8112
                        (begin
                          (write '(funapp 1399 45))
                          (display "\n")
                          (number? index))))
                      (begin
                        (write '(funapp 1399 63))
                        (display "\n")
                        (assert x8112))))
                    (g8109
                     (letrec*
                      ((x8113
                        (letrec*
                         ((x8114
                           (begin
                             (write '(funapp 1402 48))
                             (display "\n")
                             (length l))))
                         (begin
                           (write '(funapp 1402 61))
                           (display "\n")
                           (< index x8114)))))
                      (begin
                        (write '(funapp 1403 23))
                        (display "\n")
                        (assert x8113))))
                    (g8110
                     (letrec*
                      ((x-cnd8115
                        (begin
                          (write '(funapp 1406 35))
                          (display "\n")
                          (= index 0))))
                      (if x-cnd8115
                        (begin
                          (write '(funapp 1408 25))
                          (display "\n")
                          (car l))
                        (letrec*
                         ((x8117
                           (begin
                             (write '(funapp 1410 34))
                             (display "\n")
                             (cdr l)))
                          (x8116
                           (begin
                             (write '(funapp 1410 50))
                             (display "\n")
                             (- index 1))))
                         (begin
                           (write '(funapp 1411 26))
                           (display "\n")
                           (list-ref x8117 x8116)))))))
                   g8110)))
               (gcd
                (lambda (a b)
                  (letrec*
                   ((g8118
                     (letrec*
                      ((x-cnd8119
                        (begin
                          (write '(funapp 1418 35))
                          (display "\n")
                          (= b 0))))
                      (if x-cnd8119
                        a
                        (letrec*
                         ((x8120
                           (begin
                             (write '(funapp 1421 42))
                             (display "\n")
                             (modulo a b))))
                         (begin
                           (write '(funapp 1421 57))
                           (display "\n")
                           (gcd b x8120)))))))
                   g8118)))
               (block
                (lambda (x7575 y7576 color7577)
                  (letrec*
                   ((g8121
                     (letrec*
                      ((x8122
                        (letrec*
                         ((x8123
                           (letrec*
                            ((x8124
                              (begin
                                (write '(funapp 1432 37))
                                (display "\n")
                                (cons
                                 color7577
                                 (begin
                                   (write '(funapp 1432 52))
                                   (display "\n")
                                   '())))))
                            (begin
                              (write '(funapp 1433 29))
                              (display "\n")
                              (cons y7576 x8124)))))
                         (begin
                           (write '(funapp 1434 26))
                           (display "\n")
                           (cons x7575 x8123)))))
                      (begin
                        (write '(funapp 1435 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1435 28))
                           (display "\n")
                           'block)
                         x8122)))))
                   g8121)))
               (block?
                (lambda (block7574)
                  (letrec*
                   ((g8125
                     (letrec*
                      ((x8126
                        (begin
                          (write '(funapp 1441 39))
                          (display "\n")
                          (car block7574))))
                      (begin
                        (write '(funapp 1441 57))
                        (display "\n")
                        (eq?
                         x8126
                         (begin
                           (write '(funapp 1441 67))
                           (display "\n")
                           'block))))))
                   g8125)))
               (block-x
                (lambda (block)
                  (letrec*
                   ((g8127
                     (letrec*
                      ((x8128
                        (begin
                          (write '(funapp 1446 45))
                          (display "\n")
                          (cdr block))))
                      (begin
                        (write '(funapp 1446 59))
                        (display "\n")
                        (car x8128)))))
                   g8127)))
               (block-y
                (lambda (block)
                  (letrec*
                   ((g8129
                     (letrec*
                      ((x8130
                        (letrec*
                         ((x8131
                           (begin
                             (write '(funapp 1453 48))
                             (display "\n")
                             (cdr block))))
                         (begin
                           (write '(funapp 1453 62))
                           (display "\n")
                           (cdr x8131)))))
                      (begin
                        (write '(funapp 1454 23))
                        (display "\n")
                        (car x8130)))))
                   g8129)))
               (block-color
                (lambda (block)
                  (letrec*
                   ((g8132
                     (letrec*
                      ((x8133
                        (letrec*
                         ((x8134
                           (letrec*
                            ((x8135
                              (begin
                                (write '(funapp 1463 51))
                                (display "\n")
                                (cdr block))))
                            (begin
                              (write '(funapp 1463 65))
                              (display "\n")
                              (cdr x8135)))))
                         (begin
                           (write '(funapp 1464 26))
                           (display "\n")
                           (cdr x8134)))))
                      (begin
                        (write '(funapp 1465 23))
                        (display "\n")
                        (car x8133)))))
                   g8132)))
               (tetra
                (lambda (center7582 blocks7583)
                  (letrec*
                   ((g8136
                     (letrec*
                      ((x8137
                        (letrec*
                         ((x8138
                           (begin
                             (write '(funapp 1474 34))
                             (display "\n")
                             (cons
                              blocks7583
                              (begin
                                (write '(funapp 1474 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1475 26))
                           (display "\n")
                           (cons center7582 x8138)))))
                      (begin
                        (write '(funapp 1476 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1476 28))
                           (display "\n")
                           'tetra)
                         x8137)))))
                   g8136)))
               (tetra?
                (lambda (tetra7581)
                  (letrec*
                   ((g8139
                     (letrec*
                      ((x8140
                        (begin
                          (write '(funapp 1482 39))
                          (display "\n")
                          (car tetra7581))))
                      (begin
                        (write '(funapp 1482 57))
                        (display "\n")
                        (eq?
                         x8140
                         (begin
                           (write '(funapp 1482 67))
                           (display "\n")
                           'tetra))))))
                   g8139)))
               (tetra-center
                (lambda (tetra)
                  (letrec*
                   ((g8141
                     (letrec*
                      ((x8142
                        (begin
                          (write '(funapp 1487 45))
                          (display "\n")
                          (cdr tetra))))
                      (begin
                        (write '(funapp 1487 59))
                        (display "\n")
                        (car x8142)))))
                   g8141)))
               (tetra-blocks
                (lambda (tetra)
                  (letrec*
                   ((g8143
                     (letrec*
                      ((x8144
                        (letrec*
                         ((x8145
                           (begin
                             (write '(funapp 1494 48))
                             (display "\n")
                             (cdr tetra))))
                         (begin
                           (write '(funapp 1494 62))
                           (display "\n")
                           (cdr x8145)))))
                      (begin
                        (write '(funapp 1495 23))
                        (display "\n")
                        (car x8144)))))
                   g8143)))
               (world
                (lambda (tetra7587 blocks7588)
                  (letrec*
                   ((g8146
                     (letrec*
                      ((x8147
                        (letrec*
                         ((x8148
                           (begin
                             (write '(funapp 1504 34))
                             (display "\n")
                             (cons
                              blocks7588
                              (begin
                                (write '(funapp 1504 50))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1505 26))
                           (display "\n")
                           (cons tetra7587 x8148)))))
                      (begin
                        (write '(funapp 1506 23))
                        (display "\n")
                        (cons
                         (begin
                           (write '(funapp 1506 28))
                           (display "\n")
                           'world)
                         x8147)))))
                   g8146)))
               (world?
                (lambda (world7586)
                  (letrec*
                   ((g8149
                     (letrec*
                      ((x8150
                        (begin
                          (write '(funapp 1512 39))
                          (display "\n")
                          (car world7586))))
                      (begin
                        (write '(funapp 1512 57))
                        (display "\n")
                        (eq?
                         x8150
                         (begin
                           (write '(funapp 1512 67))
                           (display "\n")
                           'world))))))
                   g8149)))
               (world-tetra
                (lambda (world)
                  (letrec*
                   ((g8151
                     (letrec*
                      ((x8152
                        (begin
                          (write '(funapp 1517 45))
                          (display "\n")
                          (cdr world))))
                      (begin
                        (write '(funapp 1517 59))
                        (display "\n")
                        (car x8152)))))
                   g8151)))
               (world-blocks
                (lambda (world)
                  (letrec*
                   ((g8153
                     (letrec*
                      ((x8154
                        (letrec*
                         ((x8155
                           (begin
                             (write '(funapp 1524 48))
                             (display "\n")
                             (cdr world))))
                         (begin
                           (write '(funapp 1524 62))
                           (display "\n")
                           (cdr x8155)))))
                      (begin
                        (write '(funapp 1525 23))
                        (display "\n")
                        (car x8154)))))
                   g8153)))
               (posn
                (lambda (x7592 y7593)
                  (letrec*
                   ((g8156
                     (letrec*
                      ((x8157
                        (letrec*
                         ((x8158
                           (begin
                             (write '(funapp 1534 34))
                             (display "\n")
                             (cons
                              y7593
                              (begin
                                (write '(funapp 1534 45))
                                (display "\n")
                                '())))))
                         (begin
                           (write '(funapp 1535 26))
                           (display "\n")
                           (cons x7592 x8158)))))
                      (begin
                        (write '(funapp 1536 23))
                        (display "\n")
                        (cons
                         (begin (write '(funapp 1536 28)) (display "\n") 'posn)
                         x8157)))))
                   g8156)))
               (posn?
                (lambda (posn7591)
                  (letrec*
                   ((g8159
                     (letrec*
                      ((x8160
                        (begin
                          (write '(funapp 1542 39))
                          (display "\n")
                          (car posn7591))))
                      (begin
                        (write '(funapp 1542 56))
                        (display "\n")
                        (eq?
                         x8160
                         (begin
                           (write '(funapp 1542 66))
                           (display "\n")
                           'posn))))))
                   g8159)))
               (posn-x
                (lambda (posn)
                  (letrec*
                   ((g8161
                     (letrec*
                      ((x8162
                        (begin
                          (write '(funapp 1547 45))
                          (display "\n")
                          (cdr posn))))
                      (begin
                        (write '(funapp 1547 58))
                        (display "\n")
                        (car x8162)))))
                   g8161)))
               (posn-y
                (lambda (posn)
                  (letrec*
                   ((g8163
                     (letrec*
                      ((x8164
                        (letrec*
                         ((x8165
                           (begin
                             (write '(funapp 1554 48))
                             (display "\n")
                             (cdr posn))))
                         (begin
                           (write '(funapp 1554 61))
                           (display "\n")
                           (cdr x8165)))))
                      (begin
                        (write '(funapp 1555 23))
                        (display "\n")
                        (car x8164)))))
                   g8163)))
               (COLOR/C symbol?/c)
               (POSN/C
                (lambda (j7333 k7334 v7332)
                  (letrec*
                   ((g8166
                     (letrec*
                      ((checked7335
                        (letrec*
                         ((x8167
                           (letrec*
                            ((x8168
                              (begin
                                (write '(funapp 1565 51))
                                (display "\n")
                                (cdr v7332))))
                            (begin
                              (write '(funapp 1565 65))
                              (display "\n")
                              (car x8168)))))
                         (begin
                           (write '(funapp 1566 26))
                           (display "\n")
                           (real?/c j7333 k7334 x8167)))))
                      (letrec*
                       ((g8169
                         (letrec*
                          ((checked7336
                            (letrec*
                             ((x8170
                               (letrec*
                                ((x8171
                                  (letrec*
                                   ((x8172
                                     (begin
                                       (write '(funapp 1575 52))
                                       (display "\n")
                                       (cdr v7332))))
                                   (begin
                                     (write '(funapp 1575 66))
                                     (display "\n")
                                     (cdr x8172)))))
                                (begin
                                  (write '(funapp 1576 33))
                                  (display "\n")
                                  (car x8171)))))
                             (begin
                               (write '(funapp 1577 30))
                               (display "\n")
                               (real?/c j7333 k7334 x8170)))))
                          (letrec*
                           ((g8173
                             (letrec*
                              ((x8174
                                (letrec*
                                 ((x8175
                                   (begin
                                     (write '(funapp 1583 42))
                                     (display "\n")
                                     (cons
                                      checked7336
                                      (begin
                                        (write '(funapp 1583 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1584 34))
                                   (display "\n")
                                   (cons checked7335 x8175)))))
                              (begin
                                (write '(funapp 1585 31))
                                (display "\n")
                                (cons posn x8174)))))
                           g8173))))
                       g8169))))
                   g8166)))
               (BLOCK/C
                (lambda (j7339 k7340 v7338)
                  (letrec*
                   ((g8176
                     (letrec*
                      ((checked7341
                        (letrec*
                         ((x8177
                           (letrec*
                            ((x8178
                              (begin
                                (write '(funapp 1596 51))
                                (display "\n")
                                (cdr v7338))))
                            (begin
                              (write '(funapp 1596 65))
                              (display "\n")
                              (car x8178)))))
                         (begin
                           (write '(funapp 1597 26))
                           (display "\n")
                           (real?/c j7339 k7340 x8177)))))
                      (letrec*
                       ((g8179
                         (letrec*
                          ((checked7342
                            (letrec*
                             ((x8180
                               (letrec*
                                ((x8181
                                  (letrec*
                                   ((x8182
                                     (begin
                                       (write '(funapp 1606 52))
                                       (display "\n")
                                       (cdr v7338))))
                                   (begin
                                     (write '(funapp 1606 66))
                                     (display "\n")
                                     (cdr x8182)))))
                                (begin
                                  (write '(funapp 1607 33))
                                  (display "\n")
                                  (car x8181)))))
                             (begin
                               (write '(funapp 1608 30))
                               (display "\n")
                               (real?/c j7339 k7340 x8180)))))
                          (letrec*
                           ((g8183
                             (letrec*
                              ((checked7343
                                (letrec*
                                 ((x8184
                                   (letrec*
                                    ((x8185
                                      (letrec*
                                       ((x8186
                                         (letrec*
                                          ((x8187
                                            (begin
                                              (write '(funapp 1620 51))
                                              (display "\n")
                                              (cdr v7338))))
                                          (begin
                                            (write '(funapp 1621 43))
                                            (display "\n")
                                            (cdr x8187)))))
                                       (begin
                                         (write '(funapp 1622 40))
                                         (display "\n")
                                         (cdr x8186)))))
                                    (begin
                                      (write '(funapp 1623 37))
                                      (display "\n")
                                      (car x8185)))))
                                 (begin
                                   (write '(funapp 1624 34))
                                   (display "\n")
                                   (COLOR/C j7339 k7340 x8184)))))
                              (letrec*
                               ((g8188
                                 (letrec*
                                  ((x8189
                                    (letrec*
                                     ((x8190
                                       (letrec*
                                        ((x8191
                                          (begin
                                            (write '(funapp 1632 49))
                                            (display "\n")
                                            (cons
                                             checked7343
                                             (begin
                                               (write '(funapp 1632 66))
                                               (display "\n")
                                               '())))))
                                        (begin
                                          (write '(funapp 1633 41))
                                          (display "\n")
                                          (cons checked7342 x8191)))))
                                     (begin
                                       (write '(funapp 1634 38))
                                       (display "\n")
                                       (cons checked7341 x8190)))))
                                  (begin
                                    (write '(funapp 1635 35))
                                    (display "\n")
                                    (cons block x8189)))))
                               g8188))))
                           g8183))))
                       g8179))))
                   g8176)))
               (BSET/C
                (begin
                  (write '(funapp 1640 24))
                  (display "\n")
                  (listof BLOCK/C)))
               (TETRA/C
                (lambda (j7346 k7347 v7345)
                  (letrec*
                   ((g8192
                     (letrec*
                      ((checked7348
                        (letrec*
                         ((x8193
                           (letrec*
                            ((x8194
                              (begin
                                (write '(funapp 1648 51))
                                (display "\n")
                                (cdr v7345))))
                            (begin
                              (write '(funapp 1648 65))
                              (display "\n")
                              (car x8194)))))
                         (begin
                           (write '(funapp 1649 26))
                           (display "\n")
                           (POSN/C j7346 k7347 x8193)))))
                      (letrec*
                       ((g8195
                         (letrec*
                          ((checked7349
                            (letrec*
                             ((x8196
                               (letrec*
                                ((x8197
                                  (letrec*
                                   ((x8198
                                     (begin
                                       (write '(funapp 1658 52))
                                       (display "\n")
                                       (cdr v7345))))
                                   (begin
                                     (write '(funapp 1658 66))
                                     (display "\n")
                                     (cdr x8198)))))
                                (begin
                                  (write '(funapp 1659 33))
                                  (display "\n")
                                  (car x8197)))))
                             (begin
                               (write '(funapp 1660 30))
                               (display "\n")
                               (BSET/C j7346 k7347 x8196)))))
                          (letrec*
                           ((g8199
                             (letrec*
                              ((x8200
                                (letrec*
                                 ((x8201
                                   (begin
                                     (write '(funapp 1666 42))
                                     (display "\n")
                                     (cons
                                      checked7349
                                      (begin
                                        (write '(funapp 1666 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1667 34))
                                   (display "\n")
                                   (cons checked7348 x8201)))))
                              (begin
                                (write '(funapp 1668 31))
                                (display "\n")
                                (cons tetra x8200)))))
                           g8199))))
                       g8195))))
                   g8192)))
               (WORLD/C
                (lambda (j7352 k7353 v7351)
                  (letrec*
                   ((g8202
                     (letrec*
                      ((checked7354
                        (letrec*
                         ((x8203
                           (letrec*
                            ((x8204
                              (begin
                                (write '(funapp 1679 51))
                                (display "\n")
                                (cdr v7351))))
                            (begin
                              (write '(funapp 1679 65))
                              (display "\n")
                              (car x8204)))))
                         (begin
                           (write '(funapp 1680 26))
                           (display "\n")
                           (TETRA/C j7352 k7353 x8203)))))
                      (letrec*
                       ((g8205
                         (letrec*
                          ((checked7355
                            (letrec*
                             ((x8206
                               (letrec*
                                ((x8207
                                  (letrec*
                                   ((x8208
                                     (begin
                                       (write '(funapp 1689 52))
                                       (display "\n")
                                       (cdr v7351))))
                                   (begin
                                     (write '(funapp 1689 66))
                                     (display "\n")
                                     (cdr x8208)))))
                                (begin
                                  (write '(funapp 1690 33))
                                  (display "\n")
                                  (car x8207)))))
                             (begin
                               (write '(funapp 1691 30))
                               (display "\n")
                               (BSET/C j7352 k7353 x8206)))))
                          (letrec*
                           ((g8209
                             (letrec*
                              ((x8210
                                (letrec*
                                 ((x8211
                                   (begin
                                     (write '(funapp 1697 42))
                                     (display "\n")
                                     (cons
                                      checked7355
                                      (begin
                                        (write '(funapp 1697 59))
                                        (display "\n")
                                        '())))))
                                 (begin
                                   (write '(funapp 1698 34))
                                   (display "\n")
                                   (cons checked7354 x8211)))))
                              (begin
                                (write '(funapp 1699 31))
                                (display "\n")
                                (cons world x8210)))))
                           g8209))))
                       g8205))))
                   g8202)))
               (posn=?
                (lambda (p1 p2)
                  (letrec*
                   ((g8212
                     (letrec*
                      ((x-cnd8213
                        (letrec*
                         ((x8215
                           (begin
                             (write '(funapp 1710 34))
                             (display "\n")
                             (posn-x p1)))
                          (x8214
                           (begin
                             (write '(funapp 1710 54))
                             (display "\n")
                             (posn-x p2))))
                         (begin
                           (write '(funapp 1711 26))
                           (display "\n")
                           (= x8215 x8214)))))
                      (if x-cnd8213
                        (letrec*
                         ((x8217
                           (begin
                             (write '(funapp 1714 34))
                             (display "\n")
                             (posn-y p1)))
                          (x8216
                           (begin
                             (write '(funapp 1714 54))
                             (display "\n")
                             (posn-y p2))))
                         (begin
                           (write '(funapp 1715 26))
                           (display "\n")
                           (= x8217 x8216)))
                        #f))))
                   g8212)))
               (block-size 20)
               (board-height 20)
               (board-width 10)
               (block=?
                (lambda (b1 b2)
                  (letrec*
                   ((g8218
                     (letrec*
                      ((x-cnd8219
                        (letrec*
                         ((x8221
                           (begin
                             (write '(funapp 1728 34))
                             (display "\n")
                             (block-x b1)))
                          (x8220
                           (begin
                             (write '(funapp 1728 55))
                             (display "\n")
                             (block-x b2))))
                         (begin
                           (write '(funapp 1729 26))
                           (display "\n")
                           (= x8221 x8220)))))
                      (if x-cnd8219
                        (letrec*
                         ((x8223
                           (begin
                             (write '(funapp 1732 34))
                             (display "\n")
                             (block-y b1)))
                          (x8222
                           (begin
                             (write '(funapp 1732 55))
                             (display "\n")
                             (block-y b2))))
                         (begin
                           (write '(funapp 1733 26))
                           (display "\n")
                           (= x8223 x8222)))
                        #f))))
                   g8218)))
               (block-move
                (lambda (dx dy b)
                  (letrec*
                   ((g8224
                     (letrec*
                      ((x8228
                        (letrec*
                         ((x8229
                           (begin
                             (write '(funapp 1741 48))
                             (display "\n")
                             (block-x b))))
                         (begin
                           (write '(funapp 1741 62))
                           (display "\n")
                           (+ dx x8229))))
                       (x8226
                        (letrec*
                         ((x8227
                           (begin
                             (write '(funapp 1742 48))
                             (display "\n")
                             (block-y b))))
                         (begin
                           (write '(funapp 1742 62))
                           (display "\n")
                           (+ dy x8227))))
                       (x8225
                        (begin
                          (write '(funapp 1743 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1744 23))
                        (display "\n")
                        (block x8228 x8226 x8225)))))
                   g8224)))
               (block-rotate-ccw
                (lambda (c b)
                  (letrec*
                   ((g8230
                     (letrec*
                      ((x8237
                        (letrec*
                         ((x8241
                           (begin
                             (write '(funapp 1753 34))
                             (display "\n")
                             (posn-x c)))
                          (x8238
                           (letrec*
                            ((x8240
                              (begin
                                (write '(funapp 1756 37))
                                (display "\n")
                                (posn-y c)))
                             (x8239
                              (begin
                                (write '(funapp 1756 56))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1757 29))
                              (display "\n")
                              (- x8240 x8239)))))
                         (begin
                           (write '(funapp 1758 26))
                           (display "\n")
                           (+ x8241 x8238))))
                       (x8232
                        (letrec*
                         ((x8236
                           (begin
                             (write '(funapp 1761 34))
                             (display "\n")
                             (posn-y c)))
                          (x8233
                           (letrec*
                            ((x8235
                              (begin
                                (write '(funapp 1764 37))
                                (display "\n")
                                (block-x b)))
                             (x8234
                              (begin
                                (write '(funapp 1764 57))
                                (display "\n")
                                (posn-x c))))
                            (begin
                              (write '(funapp 1765 29))
                              (display "\n")
                              (- x8235 x8234)))))
                         (begin
                           (write '(funapp 1766 26))
                           (display "\n")
                           (+ x8236 x8233))))
                       (x8231
                        (begin
                          (write '(funapp 1767 31))
                          (display "\n")
                          (block-color b))))
                      (begin
                        (write '(funapp 1768 23))
                        (display "\n")
                        (block x8237 x8232 x8231)))))
                   g8230)))
               (block-rotate-cw
                (lambda (c b)
                  (letrec*
                   ((g8242
                     (letrec*
                      ((x8243
                        (letrec*
                         ((x8244
                           (begin
                             (write '(funapp 1777 34))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1778 26))
                           (display "\n")
                           (block-rotate-ccw c x8244)))))
                      (begin
                        (write '(funapp 1779 23))
                        (display "\n")
                        (block-rotate-ccw c x8243)))))
                   g8242)))
               (ormap
                (lambda (p? xs)
                  (letrec*
                   ((g8245
                     (letrec*
                      ((x-cnd8246
                        (begin
                          (write '(funapp 1786 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8246
                        (letrec* ((g8247 #f)) g8247)
                        (letrec*
                         ((g8248
                           (letrec*
                            ((x8251
                              (letrec*
                               ((x8252
                                 (begin
                                   (write '(funapp 1792 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1792 65))
                                 (display "\n")
                                 (p? x8252))))
                             (x8249
                              (letrec*
                               ((x8250
                                 (begin
                                   (write '(funapp 1794 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1794 59))
                                 (display "\n")
                                 (ormap p? x8250)))))
                            (begin
                              (write '(funapp 1795 29))
                              (display "\n")
                              (or x8251 x8249)))))
                         g8248)))))
                   g8245)))
               (andmap
                (lambda (p? xs)
                  (letrec*
                   ((g8253
                     (letrec*
                      ((x-cnd8254
                        (begin
                          (write '(funapp 1803 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8254
                        (letrec* ((g8255 #t)) g8255)
                        (letrec*
                         ((g8256
                           (letrec*
                            ((x8259
                              (letrec*
                               ((x8260
                                 (begin
                                   (write '(funapp 1809 54))
                                   (display "\n")
                                   (car xs))))
                               (begin
                                 (write '(funapp 1809 65))
                                 (display "\n")
                                 (p? x8260))))
                             (x8257
                              (letrec*
                               ((x8258
                                 (begin
                                   (write '(funapp 1811 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1811 59))
                                 (display "\n")
                                 (andmap p? x8258)))))
                            (begin
                              (write '(funapp 1812 29))
                              (display "\n")
                              (and x8259 x8257)))))
                         g8256)))))
                   g8253)))
               (filter
                (lambda (p? xs)
                  (letrec*
                   ((g8261
                     (letrec*
                      ((x-cnd8262
                        (begin
                          (write '(funapp 1820 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8262
                        (letrec* ((g8263 null)) g8263)
                        (letrec*
                         ((x-cnd8264
                           (letrec*
                            ((x8265
                              (begin
                                (write '(funapp 1824 55))
                                (display "\n")
                                (car xs))))
                            (begin
                              (write '(funapp 1824 66))
                              (display "\n")
                              (p? x8265)))))
                         (if x-cnd8264
                           (letrec*
                            ((g8266
                              (letrec*
                               ((x8269
                                 (begin
                                   (write '(funapp 1829 40))
                                   (display "\n")
                                   (car xs)))
                                (x8267
                                 (letrec*
                                  ((x8268
                                    (begin
                                      (write '(funapp 1832 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1833 35))
                                    (display "\n")
                                    (filter p? x8268)))))
                               (begin
                                 (write '(funapp 1834 32))
                                 (display "\n")
                                 (cons x8269 x8267)))))
                            g8266)
                           (letrec*
                            ((g8270
                              (letrec*
                               ((x8271
                                 (begin
                                   (write '(funapp 1838 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1838 59))
                                 (display "\n")
                                 (filter p? x8271)))))
                            g8270)))))))
                   g8261)))
               (append
                (lambda (l r)
                  (letrec*
                   ((g8272
                     (letrec*
                      ((x-cnd8273
                        (begin
                          (write '(funapp 1846 35))
                          (display "\n")
                          (null? l))))
                      (if x-cnd8273
                        (letrec* ((g8274 r)) g8274)
                        (letrec*
                         ((g8275
                           (letrec*
                            ((x8278
                              (begin
                                (write '(funapp 1852 37))
                                (display "\n")
                                (car l)))
                             (x8276
                              (letrec*
                               ((x8277
                                 (begin
                                   (write '(funapp 1854 48))
                                   (display "\n")
                                   (cdr l))))
                               (begin
                                 (write '(funapp 1854 58))
                                 (display "\n")
                                 (append x8277 r)))))
                            (begin
                              (write '(funapp 1855 29))
                              (display "\n")
                              (cons x8278 x8276)))))
                         g8275)))))
                   g8272)))
               (foldr
                (lambda (f a xs)
                  (letrec*
                   ((g8279
                     (letrec*
                      ((x-cnd8280
                        (begin
                          (write '(funapp 1863 35))
                          (display "\n")
                          (null? xs))))
                      (if x-cnd8280
                        (letrec* ((g8281 a)) g8281)
                        (letrec*
                         ((g8282
                           (letrec*
                            ((x8285
                              (begin
                                (write '(funapp 1869 37))
                                (display "\n")
                                (car xs)))
                             (x8283
                              (letrec*
                               ((x8284
                                 (begin
                                   (write '(funapp 1871 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1871 59))
                                 (display "\n")
                                 (foldr f a x8284)))))
                            (begin
                              (write '(funapp 1872 29))
                              (display "\n")
                              (f x8285 x8283)))))
                         g8282)))))
                   g8279)))
               (blocks-contains?
                (lambda (bs b)
                  (letrec*
                   ((g8286
                     (letrec*
                      ((x8287
                        (letrec*
                         ((x8289
                           (begin
                             (write '(funapp 1882 34))
                             (display "\n")
                             (c)))
                          (x8288
                           (begin
                             (write '(funapp 1882 46))
                             (display "\n")
                             (block=? b c))))
                         (begin
                           (write '(funapp 1883 26))
                           (display "\n")
                           (λ x8289 x8288)))))
                      (begin
                        (write '(funapp 1884 23))
                        (display "\n")
                        (ormap x8287 bs)))))
                   g8286)))
               (blocks-subset?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8290
                     (letrec*
                      ((x8291
                        (letrec*
                         ((x8293
                           (begin
                             (write '(funapp 1893 34))
                             (display "\n")
                             (b)))
                          (x8292
                           (begin
                             (write '(funapp 1893 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1894 26))
                           (display "\n")
                           (λ x8293 x8292)))))
                      (begin
                        (write '(funapp 1895 23))
                        (display "\n")
                        (andmap x8291 bs1)))))
                   g8290)))
               (blocks=?
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8294
                     (letrec*
                      ((x-cnd8295
                        (begin
                          (write '(funapp 1902 35))
                          (display "\n")
                          (blocks-subset? bs1 bs2))))
                      (if x-cnd8295
                        (begin
                          (write '(funapp 1903 37))
                          (display "\n")
                          (blocks-subset? bs2 bs1))
                        #f))))
                   g8294)))
               (blocks-intersect
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8296
                     (letrec*
                      ((x8297
                        (letrec*
                         ((x8299
                           (begin
                             (write '(funapp 1912 34))
                             (display "\n")
                             (b)))
                          (x8298
                           (begin
                             (write '(funapp 1912 46))
                             (display "\n")
                             (blocks-contains? bs2 b))))
                         (begin
                           (write '(funapp 1913 26))
                           (display "\n")
                           (λ x8299 x8298)))))
                      (begin
                        (write '(funapp 1914 23))
                        (display "\n")
                        (filter x8297 bs1)))))
                   g8296)))
               (blocks-count
                (lambda (bs)
                  (letrec*
                   ((g8300
                     (begin
                       (write '(funapp 1917 47))
                       (display "\n")
                       (length bs))))
                   g8300)))
               (blocks-move
                (lambda (dx dy bs)
                  (letrec*
                   ((g8301
                     (letrec*
                      ((x8302
                        (letrec*
                         ((x8304
                           (begin
                             (write '(funapp 1925 34))
                             (display "\n")
                             (b)))
                          (x8303
                           (begin
                             (write '(funapp 1925 46))
                             (display "\n")
                             (block-move dx dy b))))
                         (begin
                           (write '(funapp 1926 26))
                           (display "\n")
                           (λ x8304 x8303)))))
                      (begin
                        (write '(funapp 1927 23))
                        (display "\n")
                        (map x8302 bs)))))
                   g8301)))
               (blocks-rotate-ccw
                (lambda (c bs)
                  (letrec*
                   ((g8305
                     (letrec*
                      ((x8306
                        (letrec*
                         ((x8308
                           (begin
                             (write '(funapp 1936 34))
                             (display "\n")
                             (b)))
                          (x8307
                           (begin
                             (write '(funapp 1936 46))
                             (display "\n")
                             (block-rotate-ccw c b))))
                         (begin
                           (write '(funapp 1937 26))
                           (display "\n")
                           (λ x8308 x8307)))))
                      (begin
                        (write '(funapp 1938 23))
                        (display "\n")
                        (map x8306 bs)))))
                   g8305)))
               (blocks-rotate-cw
                (lambda (c bs)
                  (letrec*
                   ((g8309
                     (letrec*
                      ((x8310
                        (letrec*
                         ((x8312
                           (begin
                             (write '(funapp 1947 34))
                             (display "\n")
                             (b)))
                          (x8311
                           (begin
                             (write '(funapp 1947 46))
                             (display "\n")
                             (block-rotate-cw c b))))
                         (begin
                           (write '(funapp 1948 26))
                           (display "\n")
                           (λ x8312 x8311)))))
                      (begin
                        (write '(funapp 1949 23))
                        (display "\n")
                        (map x8310 bs)))))
                   g8309)))
               (blocks-change-color
                (lambda (bs c)
                  (letrec*
                   ((g8313
                     (letrec*
                      ((x8314
                        (letrec*
                         ((x8318
                           (begin
                             (write '(funapp 1958 34))
                             (display "\n")
                             (b)))
                          (x8315
                           (letrec*
                            ((x8317
                              (begin
                                (write '(funapp 1961 37))
                                (display "\n")
                                (block-x b)))
                             (x8316
                              (begin
                                (write '(funapp 1961 57))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1962 29))
                              (display "\n")
                              (block x8317 x8316 c)))))
                         (begin
                           (write '(funapp 1963 26))
                           (display "\n")
                           (λ x8318 x8315)))))
                      (begin
                        (write '(funapp 1964 23))
                        (display "\n")
                        (map x8314 bs)))))
                   g8313)))
               (blocks-row
                (lambda (bs i)
                  (letrec*
                   ((g8319
                     (letrec*
                      ((x8320
                        (letrec*
                         ((x8323
                           (begin
                             (write '(funapp 1973 34))
                             (display "\n")
                             (b)))
                          (x8321
                           (letrec*
                            ((x8322
                              (begin
                                (write '(funapp 1974 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1974 65))
                              (display "\n")
                              (= i x8322)))))
                         (begin
                           (write '(funapp 1975 26))
                           (display "\n")
                           (λ x8323 x8321)))))
                      (begin
                        (write '(funapp 1976 23))
                        (display "\n")
                        (filter x8320 bs)))))
                   g8319)))
               (full-row?
                (lambda (bs i)
                  (letrec*
                   ((g8324
                     (letrec*
                      ((x8325
                        (letrec*
                         ((x8326
                           (begin
                             (write '(funapp 1985 34))
                             (display "\n")
                             (blocks-row bs i))))
                         (begin
                           (write '(funapp 1986 26))
                           (display "\n")
                           (blocks-count x8326)))))
                      (begin
                        (write '(funapp 1987 23))
                        (display "\n")
                        (= board-width x8325)))))
                   g8324)))
               (blocks-overflow?
                (lambda (bs)
                  (letrec*
                   ((g8327
                     (letrec*
                      ((x8328
                        (letrec*
                         ((x8331
                           (begin
                             (write '(funapp 1996 34))
                             (display "\n")
                             (b)))
                          (x8329
                           (letrec*
                            ((x8330
                              (begin
                                (write '(funapp 1997 51))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 1997 65))
                              (display "\n")
                              (<= x8330 0)))))
                         (begin
                           (write '(funapp 1998 26))
                           (display "\n")
                           (λ x8331 x8329)))))
                      (begin
                        (write '(funapp 1999 23))
                        (display "\n")
                        (ormap x8328 bs)))))
                   g8327)))
               (blocks-union
                (lambda (bs1 bs2)
                  (letrec*
                   ((g8332
                     (letrec*
                      ((x8333
                        (letrec*
                         ((x8338
                           (begin
                             (write '(funapp 2008 34))
                             (display "\n")
                             (b bs)))
                          (x8334
                           (letrec*
                            ((x-cnd8335
                              (begin
                                (write '(funapp 2011 41))
                                (display "\n")
                                (blocks-contains? bs b))))
                            (if x-cnd8335
                              (letrec* ((g8336 bs)) g8336)
                              (letrec*
                               ((g8337
                                 (begin
                                   (write '(funapp 2014 48))
                                   (display "\n")
                                   (cons b bs))))
                               g8337)))))
                         (begin
                           (write '(funapp 2015 26))
                           (display "\n")
                           (λ x8338 x8334)))))
                      (begin
                        (write '(funapp 2016 23))
                        (display "\n")
                        (foldr x8333 bs2 bs1)))))
                   g8332)))
               (blocks-max-y
                (lambda (bs)
                  (letrec*
                   ((g8339
                     (letrec*
                      ((x8340
                        (letrec*
                         ((x8343
                           (begin
                             (write '(funapp 2025 34))
                             (display "\n")
                             (b n)))
                          (x8341
                           (letrec*
                            ((x8342
                              (begin
                                (write '(funapp 2027 45))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2027 59))
                              (display "\n")
                              (max x8342 n)))))
                         (begin
                           (write '(funapp 2028 26))
                           (display "\n")
                           (λ x8343 x8341)))))
                      (begin
                        (write '(funapp 2029 23))
                        (display "\n")
                        (foldr x8340 0 bs)))))
                   g8339)))
               (blocks-min-x
                (lambda (bs)
                  (letrec*
                   ((g8344
                     (letrec*
                      ((x8345
                        (letrec*
                         ((x8348
                           (begin
                             (write '(funapp 2038 34))
                             (display "\n")
                             (b n)))
                          (x8346
                           (letrec*
                            ((x8347
                              (begin
                                (write '(funapp 2040 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2040 59))
                              (display "\n")
                              (min x8347 n)))))
                         (begin
                           (write '(funapp 2041 26))
                           (display "\n")
                           (λ x8348 x8346)))))
                      (begin
                        (write '(funapp 2042 23))
                        (display "\n")
                        (foldr x8345 board-width bs)))))
                   g8344)))
               (blocks-max-x
                (lambda (bs)
                  (letrec*
                   ((g8349
                     (letrec*
                      ((x8350
                        (letrec*
                         ((x8353
                           (begin
                             (write '(funapp 2051 34))
                             (display "\n")
                             (b n)))
                          (x8351
                           (letrec*
                            ((x8352
                              (begin
                                (write '(funapp 2053 45))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2053 59))
                              (display "\n")
                              (max x8352 n)))))
                         (begin
                           (write '(funapp 2054 26))
                           (display "\n")
                           (λ x8353 x8351)))))
                      (begin
                        (write '(funapp 2055 23))
                        (display "\n")
                        (foldr x8350 0 bs)))))
                   g8349)))
               (eliminate-full-rows
                (lambda (bs)
                  (letrec*
                   ((g8354
                     (begin
                       (write '(funapp 2059 36))
                       (display "\n")
                       (elim-row bs board-height 0))))
                   g8354)))
               (elim-row
                (lambda (bs i offset)
                  (letrec*
                   ((g8355
                     (letrec*
                      ((x-cnd8356
                        (begin
                          (write '(funapp 2065 35))
                          (display "\n")
                          (< i 0))))
                      (if x-cnd8356
                        (letrec* ((g8357 empty)) g8357)
                        (letrec*
                         ((x-cnd8358
                           (begin
                             (write '(funapp 2069 38))
                             (display "\n")
                             (full-row? bs i))))
                         (if x-cnd8358
                           (letrec*
                            ((g8359
                              (letrec*
                               ((x8361
                                 (begin
                                   (write '(funapp 2074 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8360
                                 (begin
                                   (write '(funapp 2074 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 2075 32))
                                 (display "\n")
                                 (elim-row bs x8361 x8360)))))
                            g8359)
                           (letrec*
                            ((g8362
                              (letrec*
                               ((x8365
                                 (letrec*
                                  ((x8366
                                    (begin
                                      (write '(funapp 2082 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 2083 35))
                                    (display "\n")
                                    (elim-row bs x8366 offset))))
                                (x8363
                                 (letrec*
                                  ((x8364
                                    (begin
                                      (write '(funapp 2086 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 2087 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8364)))))
                               (begin
                                 (write '(funapp 2088 32))
                                 (display "\n")
                                 (blocks-union x8365 x8363)))))
                            g8362)))))))
                   g8355)))
               (tetra-move
                (lambda (dx dy t)
                  (letrec*
                   ((g8367
                     (letrec*
                      ((x8370
                        (letrec*
                         ((x8374
                           (letrec*
                            ((x8375
                              (letrec*
                               ((x8376
                                 (begin
                                   (write '(funapp 2102 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2103 32))
                                 (display "\n")
                                 (posn-x x8376)))))
                            (begin
                              (write '(funapp 2104 29))
                              (display "\n")
                              (+ dx x8375))))
                          (x8371
                           (letrec*
                            ((x8372
                              (letrec*
                               ((x8373
                                 (begin
                                   (write '(funapp 2109 40))
                                   (display "\n")
                                   (tetra-center t))))
                               (begin
                                 (write '(funapp 2110 32))
                                 (display "\n")
                                 (posn-y x8373)))))
                            (begin
                              (write '(funapp 2111 29))
                              (display "\n")
                              (+ dy x8372)))))
                         (begin
                           (write '(funapp 2112 26))
                           (display "\n")
                           (posn x8374 x8371))))
                       (x8368
                        (letrec*
                         ((x8369
                           (begin
                             (write '(funapp 2115 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2116 26))
                           (display "\n")
                           (blocks-move dx dy x8369)))))
                      (begin
                        (write '(funapp 2117 23))
                        (display "\n")
                        (tetra x8370 x8368)))))
                   g8367)))
               (tetra-rotate-ccw
                (lambda (t)
                  (letrec*
                   ((g8377
                     (letrec*
                      ((x8381
                        (begin
                          (write '(funapp 2124 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8378
                        (letrec*
                         ((x8380
                           (begin
                             (write '(funapp 2127 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8379
                           (begin
                             (write '(funapp 2127 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2128 26))
                           (display "\n")
                           (blocks-rotate-ccw x8380 x8379)))))
                      (begin
                        (write '(funapp 2129 23))
                        (display "\n")
                        (tetra x8381 x8378)))))
                   g8377)))
               (tetra-rotate-cw
                (lambda (t)
                  (letrec*
                   ((g8382
                     (letrec*
                      ((x8386
                        (begin
                          (write '(funapp 2136 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8383
                        (letrec*
                         ((x8385
                           (begin
                             (write '(funapp 2139 34))
                             (display "\n")
                             (tetra-center t)))
                          (x8384
                           (begin
                             (write '(funapp 2139 59))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2140 26))
                           (display "\n")
                           (blocks-rotate-cw x8385 x8384)))))
                      (begin
                        (write '(funapp 2141 23))
                        (display "\n")
                        (tetra x8386 x8383)))))
                   g8382)))
               (tetra-overlaps-blocks?
                (lambda (t bs)
                  (letrec*
                   ((g8387
                     (letrec*
                      ((x8388
                        (letrec*
                         ((x8389
                           (letrec*
                            ((x8390
                              (begin
                                (write '(funapp 2152 37))
                                (display "\n")
                                (tetra-blocks t))))
                            (begin
                              (write '(funapp 2153 29))
                              (display "\n")
                              (blocks-intersect x8390 bs)))))
                         (begin
                           (write '(funapp 2154 26))
                           (display "\n")
                           (false? x8389)))))
                      (begin
                        (write '(funapp 2155 23))
                        (display "\n")
                        (false? x8388)))))
                   g8387)))
               (tetra-change-color
                (lambda (t c)
                  (letrec*
                   ((g8391
                     (letrec*
                      ((x8394
                        (begin
                          (write '(funapp 2162 31))
                          (display "\n")
                          (tetra-center t)))
                       (x8392
                        (letrec*
                         ((x8393
                           (begin
                             (write '(funapp 2165 34))
                             (display "\n")
                             (tetra-blocks t))))
                         (begin
                           (write '(funapp 2166 26))
                           (display "\n")
                           (blocks-change-color x8393 c)))))
                      (begin
                        (write '(funapp 2167 23))
                        (display "\n")
                        (tetra x8394 x8392)))))
                   g8391)))
               (build-tetra-blocks
                (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                  (letrec*
                   ((g8395
                     (letrec*
                      ((x8396
                        (letrec*
                         ((x8402
                           (begin
                             (write '(funapp 2176 34))
                             (display "\n")
                             (posn xc yc)))
                          (x8397
                           (letrec*
                            ((x8401
                              (begin
                                (write '(funapp 2179 37))
                                (display "\n")
                                (block x1 y1 color)))
                             (x8400
                              (begin
                                (write '(funapp 2180 37))
                                (display "\n")
                                (block x2 y2 color)))
                             (x8399
                              (begin
                                (write '(funapp 2181 37))
                                (display "\n")
                                (block x3 y3 color)))
                             (x8398
                              (begin
                                (write '(funapp 2182 37))
                                (display "\n")
                                (block x4 y4 color))))
                            (begin
                              (write '(funapp 2183 29))
                              (display "\n")
                              (list x8401 x8400 x8399 x8398)))))
                         (begin
                           (write '(funapp 2184 26))
                           (display "\n")
                           (tetra x8402 x8397)))))
                      (begin
                        (write '(funapp 2185 23))
                        (display "\n")
                        (tetra-move 3 0 x8396)))))
                   g8395)))
               (touchdown
                (lambda (w tetras)
                  (letrec*
                   ((g8403
                     (letrec*
                      ((x8409
                        (begin
                          (write '(funapp 2192 31))
                          (display "\n")
                          (list-pick-random tetras)))
                       (x8404
                        (letrec*
                         ((x8405
                           (letrec*
                            ((x8407
                              (letrec*
                               ((x8408
                                 (begin
                                   (write '(funapp 2199 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2200 32))
                                 (display "\n")
                                 (tetra-blocks x8408))))
                             (x8406
                              (begin
                                (write '(funapp 2201 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2202 29))
                              (display "\n")
                              (blocks-union x8407 x8406)))))
                         (begin
                           (write '(funapp 2203 26))
                           (display "\n")
                           (eliminate-full-rows x8405)))))
                      (begin
                        (write '(funapp 2204 23))
                        (display "\n")
                        (world x8409 x8404)))))
                   g8403)))
               (world-jump-down
                (lambda (w)
                  (letrec*
                   ((g8410
                     (letrec*
                      ((x-cnd8411
                        (begin
                          (write '(funapp 2211 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8411
                        (letrec* ((g8412 w)) g8412)
                        (letrec*
                         ((g8413
                           (letrec*
                            ((x8414
                              (letrec*
                               ((x8416
                                 (letrec*
                                  ((x8417
                                    (begin
                                      (write '(funapp 2221 43))
                                      (display "\n")
                                      (world-tetra w))))
                                  (begin
                                    (write '(funapp 2222 35))
                                    (display "\n")
                                    (tetra-move 0 1 x8417))))
                                (x8415
                                 (begin
                                   (write '(funapp 2223 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2224 32))
                                 (display "\n")
                                 (world x8416 x8415)))))
                            (begin
                              (write '(funapp 2225 29))
                              (display "\n")
                              (world-jump-down x8414)))))
                         g8413)))))
                   g8410)))
               (landed-on-blocks?
                (lambda (w)
                  (letrec*
                   ((g8418
                     (letrec*
                      ((x8420
                        (letrec*
                         ((x8421
                           (begin
                             (write '(funapp 2235 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2236 26))
                           (display "\n")
                           (tetra-move 0 1 x8421))))
                       (x8419
                        (begin
                          (write '(funapp 2237 31))
                          (display "\n")
                          (world-blocks w))))
                      (begin
                        (write '(funapp 2238 23))
                        (display "\n")
                        (tetra-overlaps-blocks? x8420 x8419)))))
                   g8418)))
               (landed-on-floor?
                (lambda (w)
                  (letrec*
                   ((g8422
                     (letrec*
                      ((x8424
                        (letrec*
                         ((x8425
                           (letrec*
                            ((x8426
                              (begin
                                (write '(funapp 2249 37))
                                (display "\n")
                                (world-tetra w))))
                            (begin
                              (write '(funapp 2250 29))
                              (display "\n")
                              (tetra-blocks x8426)))))
                         (begin
                           (write '(funapp 2251 26))
                           (display "\n")
                           (blocks-max-y x8425))))
                       (x8423
                        (begin
                          (write '(funapp 2252 31))
                          (display "\n")
                          (sub1 board-height))))
                      (begin
                        (write '(funapp 2253 23))
                        (display "\n")
                        (= x8424 x8423)))))
                   g8422)))
               (landed?
                (lambda (w)
                  (letrec*
                   ((g8427
                     (letrec*
                      ((val7259
                        (begin
                          (write '(funapp 2260 33))
                          (display "\n")
                          (landed-on-blocks? w))))
                      (letrec*
                       ((g8428
                         (if val7259
                           val7259
                           (begin
                             (write '(funapp 2262 52))
                             (display "\n")
                             (landed-on-floor? w)))))
                       g8428))))
                   g8427)))
               (next-world
                (lambda (w tetras)
                  (letrec*
                   ((g8429
                     (letrec*
                      ((x-cnd8430
                        (begin
                          (write '(funapp 2270 35))
                          (display "\n")
                          (landed? w))))
                      (if x-cnd8430
                        (letrec*
                         ((g8431
                           (begin
                             (write '(funapp 2272 42))
                             (display "\n")
                             (touchdown w tetras))))
                         g8431)
                        (letrec*
                         ((g8432
                           (letrec*
                            ((x8434
                              (letrec*
                               ((x8435
                                 (begin
                                   (write '(funapp 2278 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2279 32))
                                 (display "\n")
                                 (tetra-move 0 1 x8435))))
                             (x8433
                              (begin
                                (write '(funapp 2280 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2281 29))
                              (display "\n")
                              (world x8434 x8433)))))
                         g8432)))))
                   g8429)))
               (try-new-tetra
                (lambda (w new-tetra)
                  (letrec*
                   ((g8436
                     (letrec*
                      ((x-cnd8437
                        (letrec*
                         ((x8443
                           (letrec*
                            ((x8444
                              (letrec*
                               ((x8445
                                 (begin
                                   (write '(funapp 2295 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2296 32))
                                 (display "\n")
                                 (blocks-min-x x8445)))))
                            (begin
                              (write '(funapp 2297 29))
                              (display "\n")
                              (< x8444 0))))
                          (x8440
                           (letrec*
                            ((x8441
                              (letrec*
                               ((x8442
                                 (begin
                                   (write '(funapp 2302 40))
                                   (display "\n")
                                   (tetra-blocks new-tetra))))
                               (begin
                                 (write '(funapp 2303 32))
                                 (display "\n")
                                 (blocks-max-x x8442)))))
                            (begin
                              (write '(funapp 2304 29))
                              (display "\n")
                              (>= x8441 board-width))))
                          (x8438
                           (letrec*
                            ((x8439
                              (begin
                                (write '(funapp 2307 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2308 29))
                              (display "\n")
                              (tetra-overlaps-blocks? new-tetra x8439)))))
                         (begin
                           (write '(funapp 2309 26))
                           (display "\n")
                           (or x8443 x8440 x8438)))))
                      (if x-cnd8437
                        (letrec* ((g8446 w)) g8446)
                        (letrec*
                         ((g8447
                           (letrec*
                            ((x8448
                              (begin
                                (write '(funapp 2315 37))
                                (display "\n")
                                (world-blocks w))))
                            (begin
                              (write '(funapp 2316 29))
                              (display "\n")
                              (world new-tetra x8448)))))
                         g8447)))))
                   g8436)))
               (world-move
                (lambda (dx dy w)
                  (letrec*
                   ((g8449
                     (letrec*
                      ((x8450
                        (letrec*
                         ((x8451
                           (begin
                             (write '(funapp 2326 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2327 26))
                           (display "\n")
                           (tetra-move dx dy x8451)))))
                      (begin
                        (write '(funapp 2328 23))
                        (display "\n")
                        (try-new-tetra w x8450)))))
                   g8449)))
               (world-rotate-ccw
                (lambda (w)
                  (letrec*
                   ((g8452
                     (letrec*
                      ((x8453
                        (letrec*
                         ((x8454
                           (begin
                             (write '(funapp 2337 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2338 26))
                           (display "\n")
                           (tetra-rotate-ccw x8454)))))
                      (begin
                        (write '(funapp 2339 23))
                        (display "\n")
                        (try-new-tetra w x8453)))))
                   g8452)))
               (world-rotate-cw
                (lambda (w)
                  (letrec*
                   ((g8455
                     (letrec*
                      ((x8456
                        (letrec*
                         ((x8457
                           (begin
                             (write '(funapp 2348 34))
                             (display "\n")
                             (world-tetra w))))
                         (begin
                           (write '(funapp 2349 26))
                           (display "\n")
                           (tetra-rotate-cw x8457)))))
                      (begin
                        (write '(funapp 2350 23))
                        (display "\n")
                        (try-new-tetra w x8456)))))
                   g8455)))
               (ghost-blocks
                (lambda (w)
                  (letrec*
                   ((g8458
                     (letrec*
                      ((x8459
                        (letrec*
                         ((x8460
                           (letrec*
                            ((x8461
                              (begin
                                (write '(funapp 2361 37))
                                (display "\n")
                                (world-jump-down w))))
                            (begin
                              (write '(funapp 2362 29))
                              (display "\n")
                              (world-tetra x8461)))))
                         (begin
                           (write '(funapp 2363 26))
                           (display "\n")
                           (tetra-change-color
                            x8460
                            (begin
                              (write '(funapp 2363 51))
                              (display "\n")
                              'gray))))))
                      (begin
                        (write '(funapp 2364 23))
                        (display "\n")
                        (tetra-blocks x8459)))))
                   g8458)))
               (world-key-move
                (lambda (w k)
                  (letrec*
                   ((g8462
                     (letrec*
                      ((x-cnd8463
                        (begin
                          (write '(funapp 2371 35))
                          (display "\n")
                          (equal? k "left"))))
                      (if x-cnd8463
                        (letrec*
                         ((g8464
                           (begin
                             (write '(funapp 2373 42))
                             (display "\n")
                             (world-move neg-1 0 w))))
                         g8464)
                        (letrec*
                         ((x-cnd8465
                           (begin
                             (write '(funapp 2375 38))
                             (display "\n")
                             (equal? k "right"))))
                         (if x-cnd8465
                           (letrec*
                            ((g8466
                              (begin
                                (write '(funapp 2377 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8466)
                           (letrec*
                            ((x-cnd8467
                              (begin
                                (write '(funapp 2379 41))
                                (display "\n")
                                (equal? k "down"))))
                            (if x-cnd8467
                              (letrec*
                               ((g8468
                                 (begin
                                   (write '(funapp 2381 48))
                                   (display "\n")
                                   (world-jump-down w))))
                               g8468)
                              (letrec*
                               ((x-cnd8469
                                 (begin
                                   (write '(funapp 2383 44))
                                   (display "\n")
                                   (equal? k "a"))))
                               (if x-cnd8469
                                 (letrec*
                                  ((g8470
                                    (begin
                                      (write '(funapp 2385 51))
                                      (display "\n")
                                      (world-rotate-ccw w))))
                                  g8470)
                                 (letrec*
                                  ((x-cnd8471
                                    (begin
                                      (write '(funapp 2387 47))
                                      (display "\n")
                                      (equal? k "s"))))
                                  (if x-cnd8471
                                    (letrec*
                                     ((g8472
                                       (begin
                                         (write '(funapp 2390 46))
                                         (display "\n")
                                         (world-rotate-cw w))))
                                     g8472)
                                    (letrec* ((g8473 w)) g8473)))))))))))))
                   g8462)))
               (image
                (lambda ()
                  (letrec*
                   ((g8474
                     (begin
                       (write '(funapp 2394 51))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2394 56)) (display "\n") 'image)
                        (begin
                          (write '(funapp 2394 63))
                          (display "\n")
                          '())))))
                   g8474)))
               (image?
                (lambda (image7596)
                  (letrec*
                   ((g8475
                     (letrec*
                      ((x8476
                        (begin
                          (write '(funapp 2399 39))
                          (display "\n")
                          (car image7596))))
                      (begin
                        (write '(funapp 2399 57))
                        (display "\n")
                        (eq?
                         x8476
                         (begin
                           (write '(funapp 2399 67))
                           (display "\n")
                           'image))))))
                   g8475)))
               (overlay
                (lambda (i₁ i₂)
                  (letrec*
                   ((g8477
                     (begin (write '(funapp 2401 58)) (display "\n") (image))))
                   g8477)))
               (circle
                (lambda (r m c)
                  (letrec*
                   ((g8478
                     (begin (write '(funapp 2402 57)) (display "\n") (image))))
                   g8478)))
               (rectangle
                (lambda (w h m c)
                  (letrec*
                   ((g8479
                     (begin (write '(funapp 2403 62)) (display "\n") (image))))
                   g8479)))
               (place-image
                (lambda (i₁ r c i₂)
                  (letrec*
                   ((g8480
                     (begin (write '(funapp 2405 54)) (display "\n") (image))))
                   g8480)))
               (empty-scene
                (lambda (w h)
                  (letrec*
                   ((g8481
                     (begin (write '(funapp 2406 60)) (display "\n") (image))))
                   g8481)))
               (list-pick-random
                (lambda (xs)
                  (letrec*
                   ((g8482
                     (letrec*
                      ((x-cnd8483
                        (letrec*
                         ((x8484
                           (begin
                             (write '(funapp 2412 52))
                             (display "\n")
                             (cdr xs))))
                         (begin
                           (write '(funapp 2412 63))
                           (display "\n")
                           (null? x8484)))))
                      (if x-cnd8483
                        (letrec*
                         ((g8485
                           (begin
                             (write '(funapp 2414 42))
                             (display "\n")
                             (car xs))))
                         g8485)
                        (letrec*
                         ((g8486
                           (letrec*
                            ((x8487
                              (begin
                                (write '(funapp 2418 37))
                                (display "\n")
                                (cdr xs))))
                            (begin
                              (write '(funapp 2419 29))
                              (display "\n")
                              (list-pick-random x8487)))))
                         g8486)))))
                   g8482)))
               (neg-1
                (begin (write '(funapp 2422 23)) (display "\n") (random 10)))
               (world->image
                (lambda (w)
                  (letrec*
                   ((g8488
                     (letrec*
                      ((x8492
                        (letrec*
                         ((x8493
                           (letrec*
                            ((x8497
                              (letrec*
                               ((x8498
                                 (begin
                                   (write '(funapp 2434 40))
                                   (display "\n")
                                   (world-tetra w))))
                               (begin
                                 (write '(funapp 2435 32))
                                 (display "\n")
                                 (tetra-blocks x8498))))
                             (x8494
                              (letrec*
                               ((x8496
                                 (begin
                                   (write '(funapp 2438 40))
                                   (display "\n")
                                   (ghost-blocks w)))
                                (x8495
                                 (begin
                                   (write '(funapp 2439 40))
                                   (display "\n")
                                   (world-blocks w))))
                               (begin
                                 (write '(funapp 2440 32))
                                 (display "\n")
                                 (append x8496 x8495)))))
                            (begin
                              (write '(funapp 2441 29))
                              (display "\n")
                              (append x8497 x8494)))))
                         (begin
                           (write '(funapp 2442 26))
                           (display "\n")
                           (blocks->image x8493))))
                       (x8489
                        (letrec*
                         ((x8491
                           (begin
                             (write '(funapp 2445 34))
                             (display "\n")
                             (* board-width block-size)))
                          (x8490
                           (begin
                             (write '(funapp 2446 34))
                             (display "\n")
                             (* board-height block-size))))
                         (begin
                           (write '(funapp 2447 26))
                           (display "\n")
                           (empty-scene x8491 x8490)))))
                      (begin
                        (write '(funapp 2448 23))
                        (display "\n")
                        (place-image x8492 0 0 x8489)))))
                   g8488)))
               (blocks->image
                (lambda (bs)
                  (letrec*
                   ((g8499
                     (letrec*
                      ((x8505
                        (letrec*
                         ((x8511
                           (begin
                             (write '(funapp 2457 34))
                             (display "\n")
                             (b img)))
                          (x8506
                           (letrec*
                            ((x-cnd8507
                              (letrec*
                               ((x8508
                                 (begin
                                   (write '(funapp 2461 48))
                                   (display "\n")
                                   (block-y b))))
                               (begin
                                 (write '(funapp 2461 62))
                                 (display "\n")
                                 (<= 0 x8508)))))
                            (if x-cnd8507
                              (letrec*
                               ((g8509
                                 (begin
                                   (write '(funapp 2463 48))
                                   (display "\n")
                                   (place-block b img))))
                               g8509)
                              (letrec* ((g8510 img)) g8510)))))
                         (begin
                           (write '(funapp 2465 26))
                           (display "\n")
                           (λ x8511 x8506))))
                       (x8500
                        (letrec*
                         ((x8503
                           (letrec*
                            ((x8504
                              (begin
                                (write '(funapp 2470 37))
                                (display "\n")
                                (* board-width block-size))))
                            (begin
                              (write '(funapp 2471 29))
                              (display "\n")
                              (add1 x8504))))
                          (x8501
                           (letrec*
                            ((x8502
                              (begin
                                (write '(funapp 2474 37))
                                (display "\n")
                                (* board-height block-size))))
                            (begin
                              (write '(funapp 2475 29))
                              (display "\n")
                              (add1 x8502)))))
                         (begin
                           (write '(funapp 2476 26))
                           (display "\n")
                           (empty-scene x8503 x8501)))))
                      (begin
                        (write '(funapp 2477 23))
                        (display "\n")
                        (foldr x8505 x8500 bs)))))
                   g8499)))
               (block->image
                (lambda (b)
                  (letrec*
                   ((g8512
                     (letrec*
                      ((x8516
                        (letrec*
                         ((x8519
                           (begin
                             (write '(funapp 2486 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8518
                           (begin
                             (write '(funapp 2487 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8517
                           (begin
                             (write '(funapp 2488 34))
                             (display "\n")
                             (block-color b))))
                         (begin
                           (write '(funapp 2489 26))
                           (display "\n")
                           (rectangle
                            x8519
                            x8518
                            (begin
                              (write '(funapp 2489 48))
                              (display "\n")
                              'solid)
                            x8517))))
                       (x8513
                        (letrec*
                         ((x8515
                           (begin
                             (write '(funapp 2492 34))
                             (display "\n")
                             (add1 block-size)))
                          (x8514
                           (begin
                             (write '(funapp 2492 60))
                             (display "\n")
                             (add1 block-size))))
                         (begin
                           (write '(funapp 2493 26))
                           (display "\n")
                           (rectangle
                            x8515
                            x8514
                            (begin
                              (write '(funapp 2493 48))
                              (display "\n")
                              'outline)
                            (begin
                              (write '(funapp 2493 57))
                              (display "\n")
                              'black))))))
                      (begin
                        (write '(funapp 2494 23))
                        (display "\n")
                        (overlay x8516 x8513)))))
                   g8512)))
               (place-block
                (lambda (b scene)
                  (letrec*
                   ((g8520
                     (letrec*
                      ((x8529
                        (begin
                          (write '(funapp 2501 31))
                          (display "\n")
                          (block->image b)))
                       (x8525
                        (letrec*
                         ((x8527
                           (letrec*
                            ((x8528
                              (begin
                                (write '(funapp 2506 37))
                                (display "\n")
                                (block-x b))))
                            (begin
                              (write '(funapp 2507 29))
                              (display "\n")
                              (* x8528 block-size))))
                          (x8526
                           (begin
                             (write '(funapp 2508 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2509 26))
                           (display "\n")
                           (+ x8527 x8526))))
                       (x8521
                        (letrec*
                         ((x8523
                           (letrec*
                            ((x8524
                              (begin
                                (write '(funapp 2514 37))
                                (display "\n")
                                (block-y b))))
                            (begin
                              (write '(funapp 2515 29))
                              (display "\n")
                              (* x8524 block-size))))
                          (x8522
                           (begin
                             (write '(funapp 2516 34))
                             (display "\n")
                             (/ block-size 2))))
                         (begin
                           (write '(funapp 2517 26))
                           (display "\n")
                           (+ x8523 x8522)))))
                      (begin
                        (write '(funapp 2518 23))
                        (display "\n")
                        (place-image x8529 x8525 x8521 scene)))))
                   g8520)))
               (world0
                (lambda (tetras)
                  (letrec*
                   ((g8530
                     (letrec*
                      ((x8531
                        (begin
                          (write '(funapp 2525 31))
                          (display "\n")
                          (list-pick-random tetras))))
                      (begin
                        (write '(funapp 2526 23))
                        (display "\n")
                        (world x8531 null)))))
                   g8530))))
              (letrec*
               ((g8532
                 (letrec*
                  ((x8595
                    (begin
                      (write '(funapp 2532 21))
                      (display "\n")
                      ((lambda (j7359 k7360 f7361)
                         (letrec*
                          ((g8596
                            (lambda (g7357 g7358)
                              (letrec*
                               ((g8597
                                 (letrec*
                                  ((x8598
                                    (letrec*
                                     ((x8600
                                       (begin
                                         (write '(funapp 2541 44))
                                         (display "\n")
                                         (POSN/C j7359 k7360 g7357)))
                                      (x8599
                                       (begin
                                         (write '(funapp 2542 44))
                                         (display "\n")
                                         (POSN/C j7359 k7360 g7358))))
                                     (begin
                                       (write '(funapp 2543 36))
                                       (display "\n")
                                       (f7361 x8600 x8599)))))
                                  (begin
                                    (write '(funapp 2544 33))
                                    (display "\n")
                                    (boolean?/c j7359 k7360 x8598)))))
                               g8597))))
                          g8596))
                       (begin (write '(funapp 2547 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2548 21))
                         (display "\n")
                         'importer)
                       posn=?)))
                   (x8590
                    (letrec*
                     ((x8591
                       (letrec*
                        ((x8594 (input))
                         (x8592
                          (letrec*
                           ((x8593 (input)))
                           (begin
                             (write '(funapp 2555 60))
                             (display "\n")
                             (cons
                              x8593
                              (begin
                                (write '(funapp 2555 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2556 25))
                          (display "\n")
                          (cons x8594 x8592)))))
                     (begin
                       (write '(funapp 2557 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2557 27)) (display "\n") 'posn)
                        x8591))))
                   (x8585
                    (letrec*
                     ((x8586
                       (letrec*
                        ((x8589 (input))
                         (x8587
                          (letrec*
                           ((x8588 (input)))
                           (begin
                             (write '(funapp 2563 60))
                             (display "\n")
                             (cons
                              x8588
                              (begin
                                (write '(funapp 2563 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2564 25))
                          (display "\n")
                          (cons x8589 x8587)))))
                     (begin
                       (write '(funapp 2565 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2565 27)) (display "\n") 'posn)
                        x8586)))))
                  (begin
                    (write '(funapp 2566 19))
                    (display "\n")
                    (x8595 x8590 x8585))))
                (g8533
                 (begin
                   (write '(funapp 2567 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2567 30)) (display "\n") 'module)
                    (begin (write '(funapp 2567 38)) (display "\n") 'importer)
                    COLOR/C)))
                (g8534
                 (begin
                   (write '(funapp 2568 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2568 30)) (display "\n") 'module)
                    (begin (write '(funapp 2568 38)) (display "\n") 'importer)
                    POSN/C)))
                (g8535
                 (begin
                   (write '(funapp 2569 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2569 30)) (display "\n") 'module)
                    (begin (write '(funapp 2569 38)) (display "\n") 'importer)
                    BLOCK/C)))
                (g8536
                 (begin
                   (write '(funapp 2570 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2570 30)) (display "\n") 'module)
                    (begin (write '(funapp 2570 38)) (display "\n") 'importer)
                    TETRA/C)))
                (g8537
                 (begin
                   (write '(funapp 2571 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2571 30)) (display "\n") 'module)
                    (begin (write '(funapp 2571 38)) (display "\n") 'importer)
                    WORLD/C)))
                (g8538
                 (begin
                   (write '(funapp 2572 24))
                   (display "\n")
                   (any/c
                    (begin (write '(funapp 2572 30)) (display "\n") 'module)
                    (begin (write '(funapp 2572 38)) (display "\n") 'importer)
                    BSET/C)))
                (g8539
                 (begin
                   (write '(funapp 2573 24))
                   (display "\n")
                   (integer?/c
                    (begin (write '(funapp 2573 35)) (display "\n") 'module)
                    (begin (write '(funapp 2573 43)) (display "\n") 'importer)
                    block-size)))
                (g8540
                 (begin
                   (write '(funapp 2574 24))
                   (display "\n")
                   (integer?/c
                    (begin (write '(funapp 2574 35)) (display "\n") 'module)
                    (begin (write '(funapp 2574 43)) (display "\n") 'importer)
                    board-width)))
                (g8541
                 (begin
                   (write '(funapp 2575 24))
                   (display "\n")
                   (integer?/c
                    (begin (write '(funapp 2575 35)) (display "\n") 'module)
                    (begin (write '(funapp 2575 43)) (display "\n") 'importer)
                    board-height)))
                (g8542
                 (letrec*
                  ((x8613
                    (begin
                      (write '(funapp 2579 21))
                      (display "\n")
                      ((lambda (j7364 k7365 f7366)
                         (letrec*
                          ((g8614
                            (lambda (g7362 g7363)
                              (letrec*
                               ((g8615
                                 (letrec*
                                  ((x8616
                                    (letrec*
                                     ((x8618
                                       (begin
                                         (write '(funapp 2588 44))
                                         (display "\n")
                                         (POSN/C j7364 k7365 g7362)))
                                      (x8617
                                       (begin
                                         (write '(funapp 2589 44))
                                         (display "\n")
                                         (BLOCK/C j7364 k7365 g7363))))
                                     (begin
                                       (write '(funapp 2590 36))
                                       (display "\n")
                                       (f7366 x8618 x8617)))))
                                  (begin
                                    (write '(funapp 2591 33))
                                    (display "\n")
                                    (BLOCK/C j7364 k7365 x8616)))))
                               g8615))))
                          g8614))
                       (begin (write '(funapp 2594 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2595 21))
                         (display "\n")
                         'importer)
                       block-rotate-ccw)))
                   (x8608
                    (letrec*
                     ((x8609
                       (letrec*
                        ((x8612 (input))
                         (x8610
                          (letrec*
                           ((x8611 (input)))
                           (begin
                             (write '(funapp 2602 60))
                             (display "\n")
                             (cons
                              x8611
                              (begin
                                (write '(funapp 2602 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2603 25))
                          (display "\n")
                          (cons x8612 x8610)))))
                     (begin
                       (write '(funapp 2604 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2604 27)) (display "\n") 'posn)
                        x8609))))
                   (x8601
                    (letrec*
                     ((x8602
                       (letrec*
                        ((x8607 (input))
                         (x8603
                          (letrec*
                           ((x8606 (input))
                            (x8604
                             (letrec*
                              ((x8605 (input)))
                              (begin
                                (write '(funapp 2614 57))
                                (display "\n")
                                (cons
                                 x8605
                                 (begin
                                   (write '(funapp 2614 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2615 28))
                             (display "\n")
                             (cons x8606 x8604)))))
                        (begin
                          (write '(funapp 2616 25))
                          (display "\n")
                          (cons x8607 x8603)))))
                     (begin
                       (write '(funapp 2617 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2617 27)) (display "\n") 'block)
                        x8602)))))
                  (begin
                    (write '(funapp 2618 19))
                    (display "\n")
                    (x8613 x8608 x8601))))
                (g8543
                 (letrec*
                  ((x8631
                    (begin
                      (write '(funapp 2622 21))
                      (display "\n")
                      ((lambda (j7369 k7370 f7371)
                         (letrec*
                          ((g8632
                            (lambda (g7367 g7368)
                              (letrec*
                               ((g8633
                                 (letrec*
                                  ((x8634
                                    (letrec*
                                     ((x8636
                                       (begin
                                         (write '(funapp 2631 44))
                                         (display "\n")
                                         (POSN/C j7369 k7370 g7367)))
                                      (x8635
                                       (begin
                                         (write '(funapp 2632 44))
                                         (display "\n")
                                         (BLOCK/C j7369 k7370 g7368))))
                                     (begin
                                       (write '(funapp 2633 36))
                                       (display "\n")
                                       (f7371 x8636 x8635)))))
                                  (begin
                                    (write '(funapp 2634 33))
                                    (display "\n")
                                    (BLOCK/C j7369 k7370 x8634)))))
                               g8633))))
                          g8632))
                       (begin (write '(funapp 2637 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2638 21))
                         (display "\n")
                         'importer)
                       block-rotate-cw)))
                   (x8626
                    (letrec*
                     ((x8627
                       (letrec*
                        ((x8630 (input))
                         (x8628
                          (letrec*
                           ((x8629 (input)))
                           (begin
                             (write '(funapp 2645 60))
                             (display "\n")
                             (cons
                              x8629
                              (begin
                                (write '(funapp 2645 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2646 25))
                          (display "\n")
                          (cons x8630 x8628)))))
                     (begin
                       (write '(funapp 2647 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2647 27)) (display "\n") 'posn)
                        x8627))))
                   (x8619
                    (letrec*
                     ((x8620
                       (letrec*
                        ((x8625 (input))
                         (x8621
                          (letrec*
                           ((x8624 (input))
                            (x8622
                             (letrec*
                              ((x8623 (input)))
                              (begin
                                (write '(funapp 2657 57))
                                (display "\n")
                                (cons
                                 x8623
                                 (begin
                                   (write '(funapp 2657 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2658 28))
                             (display "\n")
                             (cons x8624 x8622)))))
                        (begin
                          (write '(funapp 2659 25))
                          (display "\n")
                          (cons x8625 x8621)))))
                     (begin
                       (write '(funapp 2660 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2660 27)) (display "\n") 'block)
                        x8620)))))
                  (begin
                    (write '(funapp 2661 19))
                    (display "\n")
                    (x8631 x8626 x8619))))
                (g8544
                 (letrec*
                  ((x8651
                    (begin
                      (write '(funapp 2665 21))
                      (display "\n")
                      ((lambda (j7374 k7375 f7376)
                         (letrec*
                          ((g8652
                            (lambda (g7372 g7373)
                              (letrec*
                               ((g8653
                                 (letrec*
                                  ((x8654
                                    (letrec*
                                     ((x8656
                                       (begin
                                         (write '(funapp 2674 44))
                                         (display "\n")
                                         (BLOCK/C j7374 k7375 g7372)))
                                      (x8655
                                       (begin
                                         (write '(funapp 2675 44))
                                         (display "\n")
                                         (BLOCK/C j7374 k7375 g7373))))
                                     (begin
                                       (write '(funapp 2676 36))
                                       (display "\n")
                                       (f7376 x8656 x8655)))))
                                  (begin
                                    (write '(funapp 2677 33))
                                    (display "\n")
                                    (boolean?/c j7374 k7375 x8654)))))
                               g8653))))
                          g8652))
                       (begin (write '(funapp 2680 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2681 21))
                         (display "\n")
                         'importer)
                       block=?)))
                   (x8644
                    (letrec*
                     ((x8645
                       (letrec*
                        ((x8650 (input))
                         (x8646
                          (letrec*
                           ((x8649 (input))
                            (x8647
                             (letrec*
                              ((x8648 (input)))
                              (begin
                                (write '(funapp 2692 57))
                                (display "\n")
                                (cons
                                 x8648
                                 (begin
                                   (write '(funapp 2692 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2693 28))
                             (display "\n")
                             (cons x8649 x8647)))))
                        (begin
                          (write '(funapp 2694 25))
                          (display "\n")
                          (cons x8650 x8646)))))
                     (begin
                       (write '(funapp 2695 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2695 27)) (display "\n") 'block)
                        x8645))))
                   (x8637
                    (letrec*
                     ((x8638
                       (letrec*
                        ((x8643 (input))
                         (x8639
                          (letrec*
                           ((x8642 (input))
                            (x8640
                             (letrec*
                              ((x8641 (input)))
                              (begin
                                (write '(funapp 2705 57))
                                (display "\n")
                                (cons
                                 x8641
                                 (begin
                                   (write '(funapp 2705 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2706 28))
                             (display "\n")
                             (cons x8642 x8640)))))
                        (begin
                          (write '(funapp 2707 25))
                          (display "\n")
                          (cons x8643 x8639)))))
                     (begin
                       (write '(funapp 2708 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2708 27)) (display "\n") 'block)
                        x8638)))))
                  (begin
                    (write '(funapp 2709 19))
                    (display "\n")
                    (x8651 x8644 x8637))))
                (g8545
                 (letrec*
                  ((x8666
                    (begin
                      (write '(funapp 2713 21))
                      (display "\n")
                      ((lambda (j7380 k7381 f7382)
                         (letrec*
                          ((g8667
                            (lambda (g7377 g7378 g7379)
                              (letrec*
                               ((g8668
                                 (letrec*
                                  ((x8669
                                    (letrec*
                                     ((x8672
                                       (begin
                                         (write '(funapp 2722 44))
                                         (display "\n")
                                         (real?/c j7380 k7381 g7377)))
                                      (x8671
                                       (begin
                                         (write '(funapp 2723 44))
                                         (display "\n")
                                         (real?/c j7380 k7381 g7378)))
                                      (x8670
                                       (begin
                                         (write '(funapp 2724 44))
                                         (display "\n")
                                         (BLOCK/C j7380 k7381 g7379))))
                                     (begin
                                       (write '(funapp 2725 36))
                                       (display "\n")
                                       (f7382 x8672 x8671 x8670)))))
                                  (begin
                                    (write '(funapp 2726 33))
                                    (display "\n")
                                    (BLOCK/C j7380 k7381 x8669)))))
                               g8668))))
                          g8667))
                       (begin (write '(funapp 2729 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2730 21))
                         (display "\n")
                         'importer)
                       block-move)))
                   (x8665 (input))
                   (x8664 (input))
                   (x8657
                    (letrec*
                     ((x8658
                       (letrec*
                        ((x8663 (input))
                         (x8659
                          (letrec*
                           ((x8662 (input))
                            (x8660
                             (letrec*
                              ((x8661 (input)))
                              (begin
                                (write '(funapp 2743 57))
                                (display "\n")
                                (cons
                                 x8661
                                 (begin
                                   (write '(funapp 2743 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2744 28))
                             (display "\n")
                             (cons x8662 x8660)))))
                        (begin
                          (write '(funapp 2745 25))
                          (display "\n")
                          (cons x8663 x8659)))))
                     (begin
                       (write '(funapp 2746 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2746 27)) (display "\n") 'block)
                        x8658)))))
                  (begin
                    (write '(funapp 2747 19))
                    (display "\n")
                    (x8666 x8665 x8664 x8657))))
                (g8546
                 (letrec*
                  ((x8681
                    (begin
                      (write '(funapp 2751 21))
                      (display "\n")
                      ((lambda (j7385 k7386 f7387)
                         (letrec*
                          ((g8682
                            (lambda (g7383 g7384)
                              (letrec*
                               ((g8683
                                 (letrec*
                                  ((x8684
                                    (letrec*
                                     ((x8686
                                       (begin
                                         (write '(funapp 2760 44))
                                         (display "\n")
                                         (BSET/C j7385 k7386 g7383)))
                                      (x8685
                                       (begin
                                         (write '(funapp 2761 44))
                                         (display "\n")
                                         (BLOCK/C j7385 k7386 g7384))))
                                     (begin
                                       (write '(funapp 2762 36))
                                       (display "\n")
                                       (f7387 x8686 x8685)))))
                                  (begin
                                    (write '(funapp 2763 33))
                                    (display "\n")
                                    (boolean?/c j7385 k7386 x8684)))))
                               g8683))))
                          g8682))
                       (begin (write '(funapp 2766 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2767 21))
                         (display "\n")
                         'importer)
                       blocks-contains?)))
                   (x8680 (input))
                   (x8673
                    (letrec*
                     ((x8674
                       (letrec*
                        ((x8679 (input))
                         (x8675
                          (letrec*
                           ((x8678 (input))
                            (x8676
                             (letrec*
                              ((x8677 (input)))
                              (begin
                                (write '(funapp 2779 57))
                                (display "\n")
                                (cons
                                 x8677
                                 (begin
                                   (write '(funapp 2779 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 2780 28))
                             (display "\n")
                             (cons x8678 x8676)))))
                        (begin
                          (write '(funapp 2781 25))
                          (display "\n")
                          (cons x8679 x8675)))))
                     (begin
                       (write '(funapp 2782 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2782 27)) (display "\n") 'block)
                        x8674)))))
                  (begin
                    (write '(funapp 2783 19))
                    (display "\n")
                    (x8681 x8680 x8673))))
                (g8547
                 (letrec*
                  ((x8689
                    (begin
                      (write '(funapp 2787 21))
                      (display "\n")
                      ((lambda (j7390 k7391 f7392)
                         (letrec*
                          ((g8690
                            (lambda (g7388 g7389)
                              (letrec*
                               ((g8691
                                 (letrec*
                                  ((x8692
                                    (letrec*
                                     ((x8694
                                       (begin
                                         (write '(funapp 2796 44))
                                         (display "\n")
                                         (BSET/C j7390 k7391 g7388)))
                                      (x8693
                                       (begin
                                         (write '(funapp 2797 44))
                                         (display "\n")
                                         (BSET/C j7390 k7391 g7389))))
                                     (begin
                                       (write '(funapp 2798 36))
                                       (display "\n")
                                       (f7392 x8694 x8693)))))
                                  (begin
                                    (write '(funapp 2799 33))
                                    (display "\n")
                                    (boolean?/c j7390 k7391 x8692)))))
                               g8691))))
                          g8690))
                       (begin (write '(funapp 2802 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2803 21))
                         (display "\n")
                         'importer)
                       blocks=?)))
                   (x8688 (input))
                   (x8687 (input)))
                  (begin
                    (write '(funapp 2807 19))
                    (display "\n")
                    (x8689 x8688 x8687))))
                (g8548
                 (letrec*
                  ((x8697
                    (begin
                      (write '(funapp 2811 21))
                      (display "\n")
                      ((lambda (j7395 k7396 f7397)
                         (letrec*
                          ((g8698
                            (lambda (g7393 g7394)
                              (letrec*
                               ((g8699
                                 (letrec*
                                  ((x8700
                                    (letrec*
                                     ((x8702
                                       (begin
                                         (write '(funapp 2820 44))
                                         (display "\n")
                                         (BSET/C j7395 k7396 g7393)))
                                      (x8701
                                       (begin
                                         (write '(funapp 2821 44))
                                         (display "\n")
                                         (BSET/C j7395 k7396 g7394))))
                                     (begin
                                       (write '(funapp 2822 36))
                                       (display "\n")
                                       (f7397 x8702 x8701)))))
                                  (begin
                                    (write '(funapp 2823 33))
                                    (display "\n")
                                    (boolean?/c j7395 k7396 x8700)))))
                               g8699))))
                          g8698))
                       (begin (write '(funapp 2826 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2827 21))
                         (display "\n")
                         'importer)
                       blocks-subset?)))
                   (x8696 (input))
                   (x8695 (input)))
                  (begin
                    (write '(funapp 2831 19))
                    (display "\n")
                    (x8697 x8696 x8695))))
                (g8549
                 (letrec*
                  ((x8705
                    (begin
                      (write '(funapp 2835 21))
                      (display "\n")
                      ((lambda (j7400 k7401 f7402)
                         (letrec*
                          ((g8706
                            (lambda (g7398 g7399)
                              (letrec*
                               ((g8707
                                 (letrec*
                                  ((x8708
                                    (letrec*
                                     ((x8710
                                       (begin
                                         (write '(funapp 2844 44))
                                         (display "\n")
                                         (BSET/C j7400 k7401 g7398)))
                                      (x8709
                                       (begin
                                         (write '(funapp 2845 44))
                                         (display "\n")
                                         (BSET/C j7400 k7401 g7399))))
                                     (begin
                                       (write '(funapp 2846 36))
                                       (display "\n")
                                       (f7402 x8710 x8709)))))
                                  (begin
                                    (write '(funapp 2847 33))
                                    (display "\n")
                                    (BSET/C j7400 k7401 x8708)))))
                               g8707))))
                          g8706))
                       (begin (write '(funapp 2850 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2851 21))
                         (display "\n")
                         'importer)
                       blocks-intersect)))
                   (x8704 (input))
                   (x8703 (input)))
                  (begin
                    (write '(funapp 2855 19))
                    (display "\n")
                    (x8705 x8704 x8703))))
                (g8550
                 (letrec*
                  ((x8712
                    (begin
                      (write '(funapp 2859 21))
                      (display "\n")
                      ((lambda (j7404 k7405 f7406)
                         (letrec*
                          ((g8713
                            (lambda (g7403)
                              (letrec*
                               ((g8714
                                 (letrec*
                                  ((x8715
                                    (letrec*
                                     ((x8716
                                       (begin
                                         (write '(funapp 2868 44))
                                         (display "\n")
                                         (BSET/C j7404 k7405 g7403))))
                                     (begin
                                       (write '(funapp 2869 36))
                                       (display "\n")
                                       (f7406 x8716)))))
                                  (begin
                                    (write '(funapp 2870 33))
                                    (display "\n")
                                    (real?/c j7404 k7405 x8715)))))
                               g8714))))
                          g8713))
                       (begin (write '(funapp 2873 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2874 21))
                         (display "\n")
                         'importer)
                       blocks-count)))
                   (x8711 (input)))
                  (begin
                    (write '(funapp 2877 19))
                    (display "\n")
                    (x8712 x8711))))
                (g8551
                 (letrec*
                  ((x8718
                    (begin
                      (write '(funapp 2881 21))
                      (display "\n")
                      ((lambda (j7408 k7409 f7410)
                         (letrec*
                          ((g8719
                            (lambda (g7407)
                              (letrec*
                               ((g8720
                                 (letrec*
                                  ((x8721
                                    (letrec*
                                     ((x8722
                                       (begin
                                         (write '(funapp 2890 44))
                                         (display "\n")
                                         (BSET/C j7408 k7409 g7407))))
                                     (begin
                                       (write '(funapp 2891 36))
                                       (display "\n")
                                       (f7410 x8722)))))
                                  (begin
                                    (write '(funapp 2892 33))
                                    (display "\n")
                                    (boolean?/c j7408 k7409 x8721)))))
                               g8720))))
                          g8719))
                       (begin (write '(funapp 2895 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2896 21))
                         (display "\n")
                         'importer)
                       blocks-overflow?)))
                   (x8717 (input)))
                  (begin
                    (write '(funapp 2899 19))
                    (display "\n")
                    (x8718 x8717))))
                (g8552
                 (letrec*
                  ((x8726
                    (begin
                      (write '(funapp 2903 21))
                      (display "\n")
                      ((lambda (j7414 k7415 f7416)
                         (letrec*
                          ((g8727
                            (lambda (g7411 g7412 g7413)
                              (letrec*
                               ((g8728
                                 (letrec*
                                  ((x8729
                                    (letrec*
                                     ((x8732
                                       (begin
                                         (write '(funapp 2912 44))
                                         (display "\n")
                                         (real?/c j7414 k7415 g7411)))
                                      (x8731
                                       (begin
                                         (write '(funapp 2913 44))
                                         (display "\n")
                                         (real?/c j7414 k7415 g7412)))
                                      (x8730
                                       (begin
                                         (write '(funapp 2914 44))
                                         (display "\n")
                                         (BSET/C j7414 k7415 g7413))))
                                     (begin
                                       (write '(funapp 2915 36))
                                       (display "\n")
                                       (f7416 x8732 x8731 x8730)))))
                                  (begin
                                    (write '(funapp 2916 33))
                                    (display "\n")
                                    (BSET/C j7414 k7415 x8729)))))
                               g8728))))
                          g8727))
                       (begin (write '(funapp 2919 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2920 21))
                         (display "\n")
                         'importer)
                       blocks-move)))
                   (x8725 (input))
                   (x8724 (input))
                   (x8723 (input)))
                  (begin
                    (write '(funapp 2925 19))
                    (display "\n")
                    (x8726 x8725 x8724 x8723))))
                (g8553
                 (letrec*
                  ((x8739
                    (begin
                      (write '(funapp 2929 21))
                      (display "\n")
                      ((lambda (j7419 k7420 f7421)
                         (letrec*
                          ((g8740
                            (lambda (g7417 g7418)
                              (letrec*
                               ((g8741
                                 (letrec*
                                  ((x8742
                                    (letrec*
                                     ((x8744
                                       (begin
                                         (write '(funapp 2938 44))
                                         (display "\n")
                                         (POSN/C j7419 k7420 g7417)))
                                      (x8743
                                       (begin
                                         (write '(funapp 2939 44))
                                         (display "\n")
                                         (BSET/C j7419 k7420 g7418))))
                                     (begin
                                       (write '(funapp 2940 36))
                                       (display "\n")
                                       (f7421 x8744 x8743)))))
                                  (begin
                                    (write '(funapp 2941 33))
                                    (display "\n")
                                    (BSET/C j7419 k7420 x8742)))))
                               g8741))))
                          g8740))
                       (begin (write '(funapp 2944 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2945 21))
                         (display "\n")
                         'importer)
                       blocks-rotate-cw)))
                   (x8734
                    (letrec*
                     ((x8735
                       (letrec*
                        ((x8738 (input))
                         (x8736
                          (letrec*
                           ((x8737 (input)))
                           (begin
                             (write '(funapp 2952 60))
                             (display "\n")
                             (cons
                              x8737
                              (begin
                                (write '(funapp 2952 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2953 25))
                          (display "\n")
                          (cons x8738 x8736)))))
                     (begin
                       (write '(funapp 2954 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2954 27)) (display "\n") 'posn)
                        x8735))))
                   (x8733 (input)))
                  (begin
                    (write '(funapp 2956 19))
                    (display "\n")
                    (x8739 x8734 x8733))))
                (g8554
                 (letrec*
                  ((x8751
                    (begin
                      (write '(funapp 2960 21))
                      (display "\n")
                      ((lambda (j7424 k7425 f7426)
                         (letrec*
                          ((g8752
                            (lambda (g7422 g7423)
                              (letrec*
                               ((g8753
                                 (letrec*
                                  ((x8754
                                    (letrec*
                                     ((x8756
                                       (begin
                                         (write '(funapp 2969 44))
                                         (display "\n")
                                         (POSN/C j7424 k7425 g7422)))
                                      (x8755
                                       (begin
                                         (write '(funapp 2970 44))
                                         (display "\n")
                                         (BSET/C j7424 k7425 g7423))))
                                     (begin
                                       (write '(funapp 2971 36))
                                       (display "\n")
                                       (f7426 x8756 x8755)))))
                                  (begin
                                    (write '(funapp 2972 33))
                                    (display "\n")
                                    (BSET/C j7424 k7425 x8754)))))
                               g8753))))
                          g8752))
                       (begin (write '(funapp 2975 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 2976 21))
                         (display "\n")
                         'importer)
                       blocks-rotate-ccw)))
                   (x8746
                    (letrec*
                     ((x8747
                       (letrec*
                        ((x8750 (input))
                         (x8748
                          (letrec*
                           ((x8749 (input)))
                           (begin
                             (write '(funapp 2983 60))
                             (display "\n")
                             (cons
                              x8749
                              (begin
                                (write '(funapp 2983 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 2984 25))
                          (display "\n")
                          (cons x8750 x8748)))))
                     (begin
                       (write '(funapp 2985 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 2985 27)) (display "\n") 'posn)
                        x8747))))
                   (x8745 (input)))
                  (begin
                    (write '(funapp 2987 19))
                    (display "\n")
                    (x8751 x8746 x8745))))
                (g8555
                 (letrec*
                  ((x8759
                    (begin
                      (write '(funapp 2991 21))
                      (display "\n")
                      ((lambda (j7429 k7430 f7431)
                         (letrec*
                          ((g8760
                            (lambda (g7427 g7428)
                              (letrec*
                               ((g8761
                                 (letrec*
                                  ((x8762
                                    (letrec*
                                     ((x8764
                                       (begin
                                         (write '(funapp 3000 44))
                                         (display "\n")
                                         (BSET/C j7429 k7430 g7427)))
                                      (x8763
                                       (begin
                                         (write '(funapp 3001 44))
                                         (display "\n")
                                         (COLOR/C j7429 k7430 g7428))))
                                     (begin
                                       (write '(funapp 3002 36))
                                       (display "\n")
                                       (f7431 x8764 x8763)))))
                                  (begin
                                    (write '(funapp 3003 33))
                                    (display "\n")
                                    (BSET/C j7429 k7430 x8762)))))
                               g8761))))
                          g8760))
                       (begin (write '(funapp 3006 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3007 21))
                         (display "\n")
                         'importer)
                       blocks-change-color)))
                   (x8758 (input))
                   (x8757 (input)))
                  (begin
                    (write '(funapp 3011 19))
                    (display "\n")
                    (x8759 x8758 x8757))))
                (g8556
                 (letrec*
                  ((x8767
                    (begin
                      (write '(funapp 3015 21))
                      (display "\n")
                      ((lambda (j7434 k7435 f7436)
                         (letrec*
                          ((g8768
                            (lambda (g7432 g7433)
                              (letrec*
                               ((g8769
                                 (letrec*
                                  ((x8770
                                    (letrec*
                                     ((x8772
                                       (begin
                                         (write '(funapp 3024 44))
                                         (display "\n")
                                         (BSET/C j7434 k7435 g7432)))
                                      (x8771
                                       (begin
                                         (write '(funapp 3025 44))
                                         (display "\n")
                                         (real?/c j7434 k7435 g7433))))
                                     (begin
                                       (write '(funapp 3026 36))
                                       (display "\n")
                                       (f7436 x8772 x8771)))))
                                  (begin
                                    (write '(funapp 3027 33))
                                    (display "\n")
                                    (BSET/C j7434 k7435 x8770)))))
                               g8769))))
                          g8768))
                       (begin (write '(funapp 3030 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3031 21))
                         (display "\n")
                         'importer)
                       blocks-row)))
                   (x8766 (input))
                   (x8765 (input)))
                  (begin
                    (write '(funapp 3035 19))
                    (display "\n")
                    (x8767 x8766 x8765))))
                (g8557
                 (letrec*
                  ((x8775
                    (begin
                      (write '(funapp 3039 21))
                      (display "\n")
                      ((lambda (j7439 k7440 f7441)
                         (letrec*
                          ((g8776
                            (lambda (g7437 g7438)
                              (letrec*
                               ((g8777
                                 (letrec*
                                  ((x8778
                                    (letrec*
                                     ((x8780
                                       (begin
                                         (write '(funapp 3048 44))
                                         (display "\n")
                                         (BSET/C j7439 k7440 g7437)))
                                      (x8779
                                       (begin
                                         (write '(funapp 3049 44))
                                         (display "\n")
                                         (real?/c j7439 k7440 g7438))))
                                     (begin
                                       (write '(funapp 3050 36))
                                       (display "\n")
                                       (f7441 x8780 x8779)))))
                                  (begin
                                    (write '(funapp 3051 33))
                                    (display "\n")
                                    (boolean?/c j7439 k7440 x8778)))))
                               g8777))))
                          g8776))
                       (begin (write '(funapp 3054 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3055 21))
                         (display "\n")
                         'importer)
                       full-row?)))
                   (x8774 (input))
                   (x8773 (input)))
                  (begin
                    (write '(funapp 3059 19))
                    (display "\n")
                    (x8775 x8774 x8773))))
                (g8558
                 (letrec*
                  ((x8783
                    (begin
                      (write '(funapp 3063 21))
                      (display "\n")
                      ((lambda (j7444 k7445 f7446)
                         (letrec*
                          ((g8784
                            (lambda (g7442 g7443)
                              (letrec*
                               ((g8785
                                 (letrec*
                                  ((x8786
                                    (letrec*
                                     ((x8788
                                       (begin
                                         (write '(funapp 3072 44))
                                         (display "\n")
                                         (BSET/C j7444 k7445 g7442)))
                                      (x8787
                                       (begin
                                         (write '(funapp 3073 44))
                                         (display "\n")
                                         (BSET/C j7444 k7445 g7443))))
                                     (begin
                                       (write '(funapp 3074 36))
                                       (display "\n")
                                       (f7446 x8788 x8787)))))
                                  (begin
                                    (write '(funapp 3075 33))
                                    (display "\n")
                                    (BSET/C j7444 k7445 x8786)))))
                               g8785))))
                          g8784))
                       (begin (write '(funapp 3078 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3079 21))
                         (display "\n")
                         'importer)
                       blocks-union)))
                   (x8782 (input))
                   (x8781 (input)))
                  (begin
                    (write '(funapp 3083 19))
                    (display "\n")
                    (x8783 x8782 x8781))))
                (g8559
                 (letrec*
                  ((x8790
                    (begin
                      (write '(funapp 3087 21))
                      (display "\n")
                      ((lambda (j7448 k7449 f7450)
                         (letrec*
                          ((g8791
                            (lambda (g7447)
                              (letrec*
                               ((g8792
                                 (letrec*
                                  ((x8793
                                    (letrec*
                                     ((x8794
                                       (begin
                                         (write '(funapp 3096 44))
                                         (display "\n")
                                         (BSET/C j7448 k7449 g7447))))
                                     (begin
                                       (write '(funapp 3097 36))
                                       (display "\n")
                                       (f7450 x8794)))))
                                  (begin
                                    (write '(funapp 3098 33))
                                    (display "\n")
                                    (real?/c j7448 k7449 x8793)))))
                               g8792))))
                          g8791))
                       (begin (write '(funapp 3101 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3102 21))
                         (display "\n")
                         'importer)
                       blocks-max-x)))
                   (x8789 (input)))
                  (begin
                    (write '(funapp 3105 19))
                    (display "\n")
                    (x8790 x8789))))
                (g8560
                 (letrec*
                  ((x8796
                    (begin
                      (write '(funapp 3109 21))
                      (display "\n")
                      ((lambda (j7452 k7453 f7454)
                         (letrec*
                          ((g8797
                            (lambda (g7451)
                              (letrec*
                               ((g8798
                                 (letrec*
                                  ((x8799
                                    (letrec*
                                     ((x8800
                                       (begin
                                         (write '(funapp 3118 44))
                                         (display "\n")
                                         (BSET/C j7452 k7453 g7451))))
                                     (begin
                                       (write '(funapp 3119 36))
                                       (display "\n")
                                       (f7454 x8800)))))
                                  (begin
                                    (write '(funapp 3120 33))
                                    (display "\n")
                                    (real?/c j7452 k7453 x8799)))))
                               g8798))))
                          g8797))
                       (begin (write '(funapp 3123 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3124 21))
                         (display "\n")
                         'importer)
                       blocks-min-x)))
                   (x8795 (input)))
                  (begin
                    (write '(funapp 3127 19))
                    (display "\n")
                    (x8796 x8795))))
                (g8561
                 (letrec*
                  ((x8802
                    (begin
                      (write '(funapp 3131 21))
                      (display "\n")
                      ((lambda (j7456 k7457 f7458)
                         (letrec*
                          ((g8803
                            (lambda (g7455)
                              (letrec*
                               ((g8804
                                 (letrec*
                                  ((x8805
                                    (letrec*
                                     ((x8806
                                       (begin
                                         (write '(funapp 3140 44))
                                         (display "\n")
                                         (BSET/C j7456 k7457 g7455))))
                                     (begin
                                       (write '(funapp 3141 36))
                                       (display "\n")
                                       (f7458 x8806)))))
                                  (begin
                                    (write '(funapp 3142 33))
                                    (display "\n")
                                    (real?/c j7456 k7457 x8805)))))
                               g8804))))
                          g8803))
                       (begin (write '(funapp 3145 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3146 21))
                         (display "\n")
                         'importer)
                       blocks-max-y)))
                   (x8801 (input)))
                  (begin
                    (write '(funapp 3149 19))
                    (display "\n")
                    (x8802 x8801))))
                (g8562
                 (letrec*
                  ((x8808
                    (begin
                      (write '(funapp 3153 21))
                      (display "\n")
                      ((lambda (j7460 k7461 f7462)
                         (letrec*
                          ((g8809
                            (lambda (g7459)
                              (letrec*
                               ((g8810
                                 (letrec*
                                  ((x8811
                                    (letrec*
                                     ((x8812
                                       (begin
                                         (write '(funapp 3162 44))
                                         (display "\n")
                                         (BSET/C j7460 k7461 g7459))))
                                     (begin
                                       (write '(funapp 3163 36))
                                       (display "\n")
                                       (f7462 x8812)))))
                                  (begin
                                    (write '(funapp 3164 33))
                                    (display "\n")
                                    (BSET/C j7460 k7461 x8811)))))
                               g8810))))
                          g8809))
                       (begin (write '(funapp 3167 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3168 21))
                         (display "\n")
                         'importer)
                       eliminate-full-rows)))
                   (x8807 (input)))
                  (begin
                    (write '(funapp 3171 19))
                    (display "\n")
                    (x8808 x8807))))
                (g8563
                 (letrec*
                  ((x8824
                    (begin
                      (write '(funapp 3175 21))
                      (display "\n")
                      ((lambda (j7466 k7467 f7468)
                         (letrec*
                          ((g8825
                            (lambda (g7463 g7464 g7465)
                              (letrec*
                               ((g8826
                                 (letrec*
                                  ((x8827
                                    (letrec*
                                     ((x8830
                                       (begin
                                         (write '(funapp 3184 44))
                                         (display "\n")
                                         (integer?/c j7466 k7467 g7463)))
                                      (x8829
                                       (begin
                                         (write '(funapp 3185 44))
                                         (display "\n")
                                         (integer?/c j7466 k7467 g7464)))
                                      (x8828
                                       (begin
                                         (write '(funapp 3186 44))
                                         (display "\n")
                                         (TETRA/C j7466 k7467 g7465))))
                                     (begin
                                       (write '(funapp 3187 36))
                                       (display "\n")
                                       (f7468 x8830 x8829 x8828)))))
                                  (begin
                                    (write '(funapp 3188 33))
                                    (display "\n")
                                    (TETRA/C j7466 k7467 x8827)))))
                               g8826))))
                          g8825))
                       (begin (write '(funapp 3191 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3192 21))
                         (display "\n")
                         'importer)
                       tetra-move)))
                   (x8823 (input))
                   (x8822 (input))
                   (x8813
                    (letrec*
                     ((x8814
                       (letrec*
                        ((x8817
                          (letrec*
                           ((x8818
                             (letrec*
                              ((x8821 (input))
                               (x8819
                                (letrec*
                                 ((x8820 (input)))
                                 (begin
                                   (write '(funapp 3206 60))
                                   (display "\n")
                                   (cons
                                    x8820
                                    (begin
                                      (write '(funapp 3206 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3207 31))
                                (display "\n")
                                (cons x8821 x8819)))))
                           (begin
                             (write '(funapp 3208 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3208 33))
                                (display "\n")
                                'posn)
                              x8818))))
                         (x8815
                          (letrec*
                           ((x8816 (input)))
                           (begin
                             (write '(funapp 3209 60))
                             (display "\n")
                             (cons
                              x8816
                              (begin
                                (write '(funapp 3209 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3210 25))
                          (display "\n")
                          (cons x8817 x8815)))))
                     (begin
                       (write '(funapp 3211 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3211 27)) (display "\n") 'tetra)
                        x8814)))))
                  (begin
                    (write '(funapp 3212 19))
                    (display "\n")
                    (x8824 x8823 x8822 x8813))))
                (g8564
                 (letrec*
                  ((x8840
                    (begin
                      (write '(funapp 3216 21))
                      (display "\n")
                      ((lambda (j7470 k7471 f7472)
                         (letrec*
                          ((g8841
                            (lambda (g7469)
                              (letrec*
                               ((g8842
                                 (letrec*
                                  ((x8843
                                    (letrec*
                                     ((x8844
                                       (begin
                                         (write '(funapp 3225 44))
                                         (display "\n")
                                         (TETRA/C j7470 k7471 g7469))))
                                     (begin
                                       (write '(funapp 3226 36))
                                       (display "\n")
                                       (f7472 x8844)))))
                                  (begin
                                    (write '(funapp 3227 33))
                                    (display "\n")
                                    (TETRA/C j7470 k7471 x8843)))))
                               g8842))))
                          g8841))
                       (begin (write '(funapp 3230 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3231 21))
                         (display "\n")
                         'importer)
                       tetra-rotate-ccw)))
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
                                   (write '(funapp 3243 60))
                                   (display "\n")
                                   (cons
                                    x8838
                                    (begin
                                      (write '(funapp 3243 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3244 31))
                                (display "\n")
                                (cons x8839 x8837)))))
                           (begin
                             (write '(funapp 3245 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3245 33))
                                (display "\n")
                                'posn)
                              x8836))))
                         (x8833
                          (letrec*
                           ((x8834 (input)))
                           (begin
                             (write '(funapp 3246 60))
                             (display "\n")
                             (cons
                              x8834
                              (begin
                                (write '(funapp 3246 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3247 25))
                          (display "\n")
                          (cons x8835 x8833)))))
                     (begin
                       (write '(funapp 3248 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3248 27)) (display "\n") 'tetra)
                        x8832)))))
                  (begin
                    (write '(funapp 3249 19))
                    (display "\n")
                    (x8840 x8831))))
                (g8565
                 (letrec*
                  ((x8854
                    (begin
                      (write '(funapp 3253 21))
                      (display "\n")
                      ((lambda (j7474 k7475 f7476)
                         (letrec*
                          ((g8855
                            (lambda (g7473)
                              (letrec*
                               ((g8856
                                 (letrec*
                                  ((x8857
                                    (letrec*
                                     ((x8858
                                       (begin
                                         (write '(funapp 3262 44))
                                         (display "\n")
                                         (TETRA/C j7474 k7475 g7473))))
                                     (begin
                                       (write '(funapp 3263 36))
                                       (display "\n")
                                       (f7476 x8858)))))
                                  (begin
                                    (write '(funapp 3264 33))
                                    (display "\n")
                                    (TETRA/C j7474 k7475 x8857)))))
                               g8856))))
                          g8855))
                       (begin (write '(funapp 3267 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3268 21))
                         (display "\n")
                         'importer)
                       tetra-rotate-cw)))
                   (x8845
                    (letrec*
                     ((x8846
                       (letrec*
                        ((x8849
                          (letrec*
                           ((x8850
                             (letrec*
                              ((x8853 (input))
                               (x8851
                                (letrec*
                                 ((x8852 (input)))
                                 (begin
                                   (write '(funapp 3280 60))
                                   (display "\n")
                                   (cons
                                    x8852
                                    (begin
                                      (write '(funapp 3280 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3281 31))
                                (display "\n")
                                (cons x8853 x8851)))))
                           (begin
                             (write '(funapp 3282 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3282 33))
                                (display "\n")
                                'posn)
                              x8850))))
                         (x8847
                          (letrec*
                           ((x8848 (input)))
                           (begin
                             (write '(funapp 3283 60))
                             (display "\n")
                             (cons
                              x8848
                              (begin
                                (write '(funapp 3283 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3284 25))
                          (display "\n")
                          (cons x8849 x8847)))))
                     (begin
                       (write '(funapp 3285 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3285 27)) (display "\n") 'tetra)
                        x8846)))))
                  (begin
                    (write '(funapp 3286 19))
                    (display "\n")
                    (x8854 x8845))))
                (g8566
                 (letrec*
                  ((x8869
                    (begin
                      (write '(funapp 3290 21))
                      (display "\n")
                      ((lambda (j7479 k7480 f7481)
                         (letrec*
                          ((g8870
                            (lambda (g7477 g7478)
                              (letrec*
                               ((g8871
                                 (letrec*
                                  ((x8872
                                    (letrec*
                                     ((x8874
                                       (begin
                                         (write '(funapp 3299 44))
                                         (display "\n")
                                         (TETRA/C j7479 k7480 g7477)))
                                      (x8873
                                       (begin
                                         (write '(funapp 3300 44))
                                         (display "\n")
                                         (BSET/C j7479 k7480 g7478))))
                                     (begin
                                       (write '(funapp 3301 36))
                                       (display "\n")
                                       (f7481 x8874 x8873)))))
                                  (begin
                                    (write '(funapp 3302 33))
                                    (display "\n")
                                    (boolean?/c j7479 k7480 x8872)))))
                               g8871))))
                          g8870))
                       (begin (write '(funapp 3305 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3306 21))
                         (display "\n")
                         'importer)
                       tetra-overlaps-blocks?)))
                   (x8860
                    (letrec*
                     ((x8861
                       (letrec*
                        ((x8864
                          (letrec*
                           ((x8865
                             (letrec*
                              ((x8868 (input))
                               (x8866
                                (letrec*
                                 ((x8867 (input)))
                                 (begin
                                   (write '(funapp 3318 60))
                                   (display "\n")
                                   (cons
                                    x8867
                                    (begin
                                      (write '(funapp 3318 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3319 31))
                                (display "\n")
                                (cons x8868 x8866)))))
                           (begin
                             (write '(funapp 3320 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3320 33))
                                (display "\n")
                                'posn)
                              x8865))))
                         (x8862
                          (letrec*
                           ((x8863 (input)))
                           (begin
                             (write '(funapp 3321 60))
                             (display "\n")
                             (cons
                              x8863
                              (begin
                                (write '(funapp 3321 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3322 25))
                          (display "\n")
                          (cons x8864 x8862)))))
                     (begin
                       (write '(funapp 3323 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3323 27)) (display "\n") 'tetra)
                        x8861))))
                   (x8859 (input)))
                  (begin
                    (write '(funapp 3325 19))
                    (display "\n")
                    (x8869 x8860 x8859))))
                (g8567
                 (letrec*
                  ((x8886
                    (begin
                      (write '(funapp 3329 21))
                      (display "\n")
                      ((lambda (j7493 k7494 f7495)
                         (letrec*
                          ((g8887
                            (lambda (g7482
                                     g7483
                                     g7484
                                     g7485
                                     g7486
                                     g7487
                                     g7488
                                     g7489
                                     g7490
                                     g7491
                                     g7492)
                              (letrec*
                               ((g8888
                                 (letrec*
                                  ((x8889
                                    (letrec*
                                     ((x8900
                                       (begin
                                         (write '(funapp 3348 44))
                                         (display "\n")
                                         (COLOR/C j7493 k7494 g7482)))
                                      (x8899
                                       (begin
                                         (write '(funapp 3349 44))
                                         (display "\n")
                                         (real?/c j7493 k7494 g7483)))
                                      (x8898
                                       (begin
                                         (write '(funapp 3350 44))
                                         (display "\n")
                                         (real?/c j7493 k7494 g7484)))
                                      (x8897
                                       (begin
                                         (write '(funapp 3351 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7485)))
                                      (x8896
                                       (begin
                                         (write '(funapp 3352 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7486)))
                                      (x8895
                                       (begin
                                         (write '(funapp 3353 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7487)))
                                      (x8894
                                       (begin
                                         (write '(funapp 3354 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7488)))
                                      (x8893
                                       (begin
                                         (write '(funapp 3355 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7489)))
                                      (x8892
                                       (begin
                                         (write '(funapp 3356 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7490)))
                                      (x8891
                                       (begin
                                         (write '(funapp 3357 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7491)))
                                      (x8890
                                       (begin
                                         (write '(funapp 3358 44))
                                         (display "\n")
                                         (integer?/c j7493 k7494 g7492))))
                                     (begin
                                       (write '(funapp 3359 36))
                                       (display "\n")
                                       (f7495
                                        x8900
                                        x8899
                                        x8898
                                        x8897
                                        x8896
                                        x8895
                                        x8894
                                        x8893
                                        x8892
                                        x8891
                                        x8890)))))
                                  (begin
                                    (write '(funapp 3371 33))
                                    (display "\n")
                                    (TETRA/C j7493 k7494 x8889)))))
                               g8888))))
                          g8887))
                       (begin (write '(funapp 3374 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3375 21))
                         (display "\n")
                         'importer)
                       build-tetra-blocks)))
                   (x8885 (input))
                   (x8884 (input))
                   (x8883 (input))
                   (x8882 (input))
                   (x8881 (input))
                   (x8880 (input))
                   (x8879 (input))
                   (x8878 (input))
                   (x8877 (input))
                   (x8876 (input))
                   (x8875 (input)))
                  (begin
                    (write '(funapp 3388 19))
                    (display "\n")
                    (x8886
                     x8885
                     x8884
                     x8883
                     x8882
                     x8881
                     x8880
                     x8879
                     x8878
                     x8877
                     x8876
                     x8875))))
                (g8568
                 (letrec*
                  ((x8911
                    (begin
                      (write '(funapp 3403 21))
                      (display "\n")
                      ((lambda (j7498 k7499 f7500)
                         (letrec*
                          ((g8912
                            (lambda (g7496 g7497)
                              (letrec*
                               ((g8913
                                 (letrec*
                                  ((x8914
                                    (letrec*
                                     ((x8916
                                       (begin
                                         (write '(funapp 3412 44))
                                         (display "\n")
                                         (TETRA/C j7498 k7499 g7496)))
                                      (x8915
                                       (begin
                                         (write '(funapp 3413 44))
                                         (display "\n")
                                         (COLOR/C j7498 k7499 g7497))))
                                     (begin
                                       (write '(funapp 3414 36))
                                       (display "\n")
                                       (f7500 x8916 x8915)))))
                                  (begin
                                    (write '(funapp 3415 33))
                                    (display "\n")
                                    (TETRA/C j7498 k7499 x8914)))))
                               g8913))))
                          g8912))
                       (begin (write '(funapp 3418 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3419 21))
                         (display "\n")
                         'importer)
                       tetra-change-color)))
                   (x8902
                    (letrec*
                     ((x8903
                       (letrec*
                        ((x8906
                          (letrec*
                           ((x8907
                             (letrec*
                              ((x8910 (input))
                               (x8908
                                (letrec*
                                 ((x8909 (input)))
                                 (begin
                                   (write '(funapp 3431 60))
                                   (display "\n")
                                   (cons
                                    x8909
                                    (begin
                                      (write '(funapp 3431 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3432 31))
                                (display "\n")
                                (cons x8910 x8908)))))
                           (begin
                             (write '(funapp 3433 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3433 33))
                                (display "\n")
                                'posn)
                              x8907))))
                         (x8904
                          (letrec*
                           ((x8905 (input)))
                           (begin
                             (write '(funapp 3434 60))
                             (display "\n")
                             (cons
                              x8905
                              (begin
                                (write '(funapp 3434 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3435 25))
                          (display "\n")
                          (cons x8906 x8904)))))
                     (begin
                       (write '(funapp 3436 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3436 27)) (display "\n") 'tetra)
                        x8903))))
                   (x8901 (input)))
                  (begin
                    (write '(funapp 3438 19))
                    (display "\n")
                    (x8911 x8902 x8901))))
                (g8569
                 (letrec*
                  ((x8931
                    (begin
                      (write '(funapp 3442 21))
                      (display "\n")
                      ((lambda (j7503 k7504 f7505)
                         (letrec*
                          ((g8932
                            (lambda (g7501 g7502)
                              (letrec*
                               ((g8933
                                 (letrec*
                                  ((x8934
                                    (letrec*
                                     ((x8936
                                       (begin
                                         (write '(funapp 3451 44))
                                         (display "\n")
                                         (WORLD/C j7503 k7504 g7501)))
                                      (x8935
                                       (begin
                                         (write '(funapp 3452 44))
                                         (display "\n")
                                         (string?/c j7503 k7504 g7502))))
                                     (begin
                                       (write '(funapp 3453 36))
                                       (display "\n")
                                       (f7505 x8936 x8935)))))
                                  (begin
                                    (write '(funapp 3454 33))
                                    (display "\n")
                                    (WORLD/C j7503 k7504 x8934)))))
                               g8933))))
                          g8932))
                       (begin (write '(funapp 3457 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3458 21))
                         (display "\n")
                         'importer)
                       world-key-move)))
                   (x8918
                    (letrec*
                     ((x8919
                       (letrec*
                        ((x8922
                          (letrec*
                           ((x8923
                             (letrec*
                              ((x8926
                                (letrec*
                                 ((x8927
                                   (letrec*
                                    ((x8930 (input))
                                     (x8928
                                      (letrec*
                                       ((x8929 (input)))
                                       (begin
                                         (write '(funapp 3476 40))
                                         (display "\n")
                                         (cons
                                          x8929
                                          (begin
                                            (write '(funapp 3476 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3477 37))
                                      (display "\n")
                                      (cons x8930 x8928)))))
                                 (begin
                                   (write '(funapp 3478 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3478 39))
                                      (display "\n")
                                      'posn)
                                    x8927))))
                               (x8924
                                (letrec*
                                 ((x8925 (input)))
                                 (begin
                                   (write '(funapp 3480 60))
                                   (display "\n")
                                   (cons
                                    x8925
                                    (begin
                                      (write '(funapp 3480 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3481 31))
                                (display "\n")
                                (cons x8926 x8924)))))
                           (begin
                             (write '(funapp 3482 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3482 33))
                                (display "\n")
                                'tetra)
                              x8923))))
                         (x8920
                          (letrec*
                           ((x8921 (input)))
                           (begin
                             (write '(funapp 3483 60))
                             (display "\n")
                             (cons
                              x8921
                              (begin
                                (write '(funapp 3483 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3484 25))
                          (display "\n")
                          (cons x8922 x8920)))))
                     (begin
                       (write '(funapp 3485 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3485 27)) (display "\n") 'world)
                        x8919))))
                   (x8917 (input)))
                  (begin
                    (write '(funapp 3487 19))
                    (display "\n")
                    (x8931 x8918 x8917))))
                (g8570
                 (letrec*
                  ((x8951
                    (begin
                      (write '(funapp 3491 21))
                      (display "\n")
                      ((lambda (j7508 k7509 f7510)
                         (letrec*
                          ((g8952
                            (lambda (g7506 g7507)
                              (letrec*
                               ((g8953
                                 (letrec*
                                  ((x8954
                                    (letrec*
                                     ((x8958
                                       (begin
                                         (write '(funapp 3500 44))
                                         (display "\n")
                                         (WORLD/C j7508 k7509 g7506)))
                                      (x8955
                                       (letrec*
                                        ((x8956
                                          (letrec*
                                           ((x8957
                                             (begin
                                               (write '(funapp 3505 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3506 42))
                                             (display "\n")
                                             (and/c cons?/c x8957)))))
                                        (begin
                                          (write '(funapp 3507 39))
                                          (display "\n")
                                          (x8956 j7508 k7509 g7507)))))
                                     (begin
                                       (write '(funapp 3508 36))
                                       (display "\n")
                                       (f7510 x8958 x8955)))))
                                  (begin
                                    (write '(funapp 3509 33))
                                    (display "\n")
                                    (WORLD/C j7508 k7509 x8954)))))
                               g8953))))
                          g8952))
                       (begin (write '(funapp 3512 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3513 21))
                         (display "\n")
                         'importer)
                       next-world)))
                   (x8938
                    (letrec*
                     ((x8939
                       (letrec*
                        ((x8942
                          (letrec*
                           ((x8943
                             (letrec*
                              ((x8946
                                (letrec*
                                 ((x8947
                                   (letrec*
                                    ((x8950 (input))
                                     (x8948
                                      (letrec*
                                       ((x8949 (input)))
                                       (begin
                                         (write '(funapp 3531 40))
                                         (display "\n")
                                         (cons
                                          x8949
                                          (begin
                                            (write '(funapp 3531 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3532 37))
                                      (display "\n")
                                      (cons x8950 x8948)))))
                                 (begin
                                   (write '(funapp 3533 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3533 39))
                                      (display "\n")
                                      'posn)
                                    x8947))))
                               (x8944
                                (letrec*
                                 ((x8945 (input)))
                                 (begin
                                   (write '(funapp 3535 60))
                                   (display "\n")
                                   (cons
                                    x8945
                                    (begin
                                      (write '(funapp 3535 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3536 31))
                                (display "\n")
                                (cons x8946 x8944)))))
                           (begin
                             (write '(funapp 3537 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3537 33))
                                (display "\n")
                                'tetra)
                              x8943))))
                         (x8940
                          (letrec*
                           ((x8941 (input)))
                           (begin
                             (write '(funapp 3538 60))
                             (display "\n")
                             (cons
                              x8941
                              (begin
                                (write '(funapp 3538 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3539 25))
                          (display "\n")
                          (cons x8942 x8940)))))
                     (begin
                       (write '(funapp 3540 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3540 27)) (display "\n") 'world)
                        x8939))))
                   (x8937 (input)))
                  (begin
                    (write '(funapp 3542 19))
                    (display "\n")
                    (x8951 x8938 x8937))))
                (g8571
                 (letrec*
                  ((x8972
                    (begin
                      (write '(funapp 3546 21))
                      (display "\n")
                      ((lambda (j7512 k7513 f7514)
                         (letrec*
                          ((g8973
                            (lambda (g7511)
                              (letrec*
                               ((g8974
                                 (letrec*
                                  ((x8975
                                    (letrec*
                                     ((x8976
                                       (begin
                                         (write '(funapp 3555 44))
                                         (display "\n")
                                         (WORLD/C j7512 k7513 g7511))))
                                     (begin
                                       (write '(funapp 3556 36))
                                       (display "\n")
                                       (f7514 x8976)))))
                                  (begin
                                    (write '(funapp 3557 33))
                                    (display "\n")
                                    (BSET/C j7512 k7513 x8975)))))
                               g8974))))
                          g8973))
                       (begin (write '(funapp 3560 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3561 21))
                         (display "\n")
                         'importer)
                       ghost-blocks)))
                   (x8959
                    (letrec*
                     ((x8960
                       (letrec*
                        ((x8963
                          (letrec*
                           ((x8964
                             (letrec*
                              ((x8967
                                (letrec*
                                 ((x8968
                                   (letrec*
                                    ((x8971 (input))
                                     (x8969
                                      (letrec*
                                       ((x8970 (input)))
                                       (begin
                                         (write '(funapp 3579 40))
                                         (display "\n")
                                         (cons
                                          x8970
                                          (begin
                                            (write '(funapp 3579 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3580 37))
                                      (display "\n")
                                      (cons x8971 x8969)))))
                                 (begin
                                   (write '(funapp 3581 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3581 39))
                                      (display "\n")
                                      'posn)
                                    x8968))))
                               (x8965
                                (letrec*
                                 ((x8966 (input)))
                                 (begin
                                   (write '(funapp 3583 60))
                                   (display "\n")
                                   (cons
                                    x8966
                                    (begin
                                      (write '(funapp 3583 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3584 31))
                                (display "\n")
                                (cons x8967 x8965)))))
                           (begin
                             (write '(funapp 3585 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3585 33))
                                (display "\n")
                                'tetra)
                              x8964))))
                         (x8961
                          (letrec*
                           ((x8962 (input)))
                           (begin
                             (write '(funapp 3586 60))
                             (display "\n")
                             (cons
                              x8962
                              (begin
                                (write '(funapp 3586 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3587 25))
                          (display "\n")
                          (cons x8963 x8961)))))
                     (begin
                       (write '(funapp 3588 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3588 27)) (display "\n") 'world)
                        x8960)))))
                  (begin
                    (write '(funapp 3589 19))
                    (display "\n")
                    (x8972 x8959))))
                (g8572
                 (letrec*
                  ((x8978
                    (begin
                      (write '(funapp 3593 21))
                      (display "\n")
                      ((lambda (j7516 k7517 f7518)
                         (letrec*
                          ((g8979
                            (lambda (g7515)
                              (letrec*
                               ((g8980
                                 (letrec*
                                  ((x8981
                                    (letrec*
                                     ((x8982
                                       (begin
                                         (write '(funapp 3602 44))
                                         (display "\n")
                                         (any/c j7516 k7517 g7515))))
                                     (begin
                                       (write '(funapp 3603 36))
                                       (display "\n")
                                       (f7518 x8982)))))
                                  (begin
                                    (write '(funapp 3604 33))
                                    (display "\n")
                                    (boolean?/c j7516 k7517 x8981)))))
                               g8980))))
                          g8979))
                       (begin (write '(funapp 3607 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3608 21))
                         (display "\n")
                         'importer)
                       image?)))
                   (x8977 (input)))
                  (begin
                    (write '(funapp 3611 19))
                    (display "\n")
                    (x8978 x8977))))
                (g8573
                 (letrec*
                  ((x8985
                    (begin
                      (write '(funapp 3615 21))
                      (display "\n")
                      ((lambda (j7521 k7522 f7523)
                         (letrec*
                          ((g8986
                            (lambda (g7519 g7520)
                              (letrec*
                               ((g8987
                                 (letrec*
                                  ((x8988
                                    (letrec*
                                     ((x8990
                                       (begin
                                         (write '(funapp 3624 44))
                                         (display "\n")
                                         (image? j7521 k7522 g7519)))
                                      (x8989
                                       (begin
                                         (write '(funapp 3625 44))
                                         (display "\n")
                                         (image? j7521 k7522 g7520))))
                                     (begin
                                       (write '(funapp 3626 36))
                                       (display "\n")
                                       (f7523 x8990 x8989)))))
                                  (begin
                                    (write '(funapp 3627 33))
                                    (display "\n")
                                    (image? j7521 k7522 x8988)))))
                               g8987))))
                          g8986))
                       (begin (write '(funapp 3630 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3631 21))
                         (display "\n")
                         'importer)
                       overlay)))
                   (x8984 (input))
                   (x8983 (input)))
                  (begin
                    (write '(funapp 3635 19))
                    (display "\n")
                    (x8985 x8984 x8983))))
                (g8574
                 (letrec*
                  ((x8994
                    (begin
                      (write '(funapp 3639 21))
                      (display "\n")
                      ((lambda (j7527 k7528 f7529)
                         (letrec*
                          ((g8995
                            (lambda (g7524 g7525 g7526)
                              (letrec*
                               ((g8996
                                 (letrec*
                                  ((x8997
                                    (letrec*
                                     ((x9000
                                       (begin
                                         (write '(funapp 3648 44))
                                         (display "\n")
                                         (real?/c j7527 k7528 g7524)))
                                      (x8999
                                       (begin
                                         (write '(funapp 3649 44))
                                         (display "\n")
                                         (real?/c j7527 k7528 g7525)))
                                      (x8998
                                       (begin
                                         (write '(funapp 3650 44))
                                         (display "\n")
                                         (string?/c j7527 k7528 g7526))))
                                     (begin
                                       (write '(funapp 3651 36))
                                       (display "\n")
                                       (f7529 x9000 x8999 x8998)))))
                                  (begin
                                    (write '(funapp 3652 33))
                                    (display "\n")
                                    (image? j7527 k7528 x8997)))))
                               g8996))))
                          g8995))
                       (begin (write '(funapp 3655 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3656 21))
                         (display "\n")
                         'importer)
                       circle)))
                   (x8993 (input))
                   (x8992 (input))
                   (x8991 (input)))
                  (begin
                    (write '(funapp 3661 19))
                    (display "\n")
                    (x8994 x8993 x8992 x8991))))
                (g8575
                 (letrec*
                  ((x9005
                    (begin
                      (write '(funapp 3665 21))
                      (display "\n")
                      ((lambda (j7534 k7535 f7536)
                         (letrec*
                          ((g9006
                            (lambda (g7530 g7531 g7532 g7533)
                              (letrec*
                               ((g9007
                                 (letrec*
                                  ((x9008
                                    (letrec*
                                     ((x9012
                                       (begin
                                         (write '(funapp 3674 44))
                                         (display "\n")
                                         (real?/c j7534 k7535 g7530)))
                                      (x9011
                                       (begin
                                         (write '(funapp 3675 44))
                                         (display "\n")
                                         (real?/c j7534 k7535 g7531)))
                                      (x9010
                                       (begin
                                         (write '(funapp 3676 44))
                                         (display "\n")
                                         (COLOR/C j7534 k7535 g7532)))
                                      (x9009
                                       (begin
                                         (write '(funapp 3677 44))
                                         (display "\n")
                                         (COLOR/C j7534 k7535 g7533))))
                                     (begin
                                       (write '(funapp 3678 36))
                                       (display "\n")
                                       (f7536 x9012 x9011 x9010 x9009)))))
                                  (begin
                                    (write '(funapp 3679 33))
                                    (display "\n")
                                    (image? j7534 k7535 x9008)))))
                               g9007))))
                          g9006))
                       (begin (write '(funapp 3682 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3683 21))
                         (display "\n")
                         'importer)
                       rectangle)))
                   (x9004 (input))
                   (x9003 (input))
                   (x9002 (input))
                   (x9001 (input)))
                  (begin
                    (write '(funapp 3689 19))
                    (display "\n")
                    (x9005 x9004 x9003 x9002 x9001))))
                (g8576
                 (letrec*
                  ((x9017
                    (begin
                      (write '(funapp 3693 21))
                      (display "\n")
                      ((lambda (j7541 k7542 f7543)
                         (letrec*
                          ((g9018
                            (lambda (g7537 g7538 g7539 g7540)
                              (letrec*
                               ((g9019
                                 (letrec*
                                  ((x9020
                                    (letrec*
                                     ((x9024
                                       (begin
                                         (write '(funapp 3702 44))
                                         (display "\n")
                                         (image/c j7541 k7542 g7537)))
                                      (x9023
                                       (begin
                                         (write '(funapp 3703 44))
                                         (display "\n")
                                         (real?/c j7541 k7542 g7538)))
                                      (x9022
                                       (begin
                                         (write '(funapp 3704 44))
                                         (display "\n")
                                         (real?/c j7541 k7542 g7539)))
                                      (x9021
                                       (begin
                                         (write '(funapp 3705 44))
                                         (display "\n")
                                         (image/c j7541 k7542 g7540))))
                                     (begin
                                       (write '(funapp 3706 36))
                                       (display "\n")
                                       (f7543 x9024 x9023 x9022 x9021)))))
                                  (begin
                                    (write '(funapp 3707 33))
                                    (display "\n")
                                    (image/c j7541 k7542 x9020)))))
                               g9019))))
                          g9018))
                       (begin (write '(funapp 3710 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3711 21))
                         (display "\n")
                         'importer)
                       place-image)))
                   (x9016 (input))
                   (x9015 (input))
                   (x9014 (input))
                   (x9013 (input)))
                  (begin
                    (write '(funapp 3717 19))
                    (display "\n")
                    (x9017 x9016 x9015 x9014 x9013))))
                (g8577
                 (letrec*
                  ((x9027
                    (begin
                      (write '(funapp 3721 21))
                      (display "\n")
                      ((lambda (j7546 k7547 f7548)
                         (letrec*
                          ((g9028
                            (lambda (g7544 g7545)
                              (letrec*
                               ((g9029
                                 (letrec*
                                  ((x9030
                                    (letrec*
                                     ((x9032
                                       (begin
                                         (write '(funapp 3730 44))
                                         (display "\n")
                                         (real?/c j7546 k7547 g7544)))
                                      (x9031
                                       (begin
                                         (write '(funapp 3731 44))
                                         (display "\n")
                                         (real?/c j7546 k7547 g7545))))
                                     (begin
                                       (write '(funapp 3732 36))
                                       (display "\n")
                                       (f7548 x9032 x9031)))))
                                  (begin
                                    (write '(funapp 3733 33))
                                    (display "\n")
                                    (image? j7546 k7547 x9030)))))
                               g9029))))
                          g9028))
                       (begin (write '(funapp 3736 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3737 21))
                         (display "\n")
                         'importer)
                       empty-scene)))
                   (x9026 (input))
                   (x9025 (input)))
                  (begin
                    (write '(funapp 3741 19))
                    (display "\n")
                    (x9027 x9026 x9025))))
                (g8578
                 (letrec*
                  ((x9034
                    (begin
                      (write '(funapp 3745 21))
                      (display "\n")
                      ((lambda (j7550 k7551 f7552)
                         (letrec*
                          ((g9035
                            (lambda (g7549)
                              (letrec*
                               ((g9036
                                 (letrec*
                                  ((x9037
                                    (letrec*
                                     ((x9038
                                       (letrec*
                                        ((x9039
                                          (letrec*
                                           ((x9040
                                             (begin
                                               (write '(funapp 3758 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3759 42))
                                             (display "\n")
                                             (and/c cons?/c x9040)))))
                                        (begin
                                          (write '(funapp 3760 39))
                                          (display "\n")
                                          (x9039 j7550 k7551 g7549)))))
                                     (begin
                                       (write '(funapp 3761 36))
                                       (display "\n")
                                       (f7552 x9038)))))
                                  (begin
                                    (write '(funapp 3762 33))
                                    (display "\n")
                                    (TETRA/C j7550 k7551 x9037)))))
                               g9036))))
                          g9035))
                       (begin (write '(funapp 3765 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3766 21))
                         (display "\n")
                         'importer)
                       list-pick-random)))
                   (x9033 (input)))
                  (begin
                    (write '(funapp 3769 19))
                    (display "\n")
                    (x9034 x9033))))
                (g8579
                 (begin
                   (write '(funapp 3770 24))
                   (display "\n")
                   (integer?/c
                    (begin (write '(funapp 3770 35)) (display "\n") 'module)
                    (begin (write '(funapp 3770 43)) (display "\n") 'importer)
                    neg-1)))
                (g8580
                 (letrec*
                  ((x9054
                    (begin
                      (write '(funapp 3774 21))
                      (display "\n")
                      ((lambda (j7554 k7555 f7556)
                         (letrec*
                          ((g9055
                            (lambda (g7553)
                              (letrec*
                               ((g9056
                                 (letrec*
                                  ((x9057
                                    (letrec*
                                     ((x9058
                                       (begin
                                         (write '(funapp 3783 44))
                                         (display "\n")
                                         (WORLD/C j7554 k7555 g7553))))
                                     (begin
                                       (write '(funapp 3784 36))
                                       (display "\n")
                                       (f7556 x9058)))))
                                  (begin
                                    (write '(funapp 3785 33))
                                    (display "\n")
                                    (image/c j7554 k7555 x9057)))))
                               g9056))))
                          g9055))
                       (begin (write '(funapp 3788 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3789 21))
                         (display "\n")
                         'importer)
                       world->image)))
                   (x9041
                    (letrec*
                     ((x9042
                       (letrec*
                        ((x9045
                          (letrec*
                           ((x9046
                             (letrec*
                              ((x9049
                                (letrec*
                                 ((x9050
                                   (letrec*
                                    ((x9053 (input))
                                     (x9051
                                      (letrec*
                                       ((x9052 (input)))
                                       (begin
                                         (write '(funapp 3807 40))
                                         (display "\n")
                                         (cons
                                          x9052
                                          (begin
                                            (write '(funapp 3807 51))
                                            (display "\n")
                                            '()))))))
                                    (begin
                                      (write '(funapp 3808 37))
                                      (display "\n")
                                      (cons x9053 x9051)))))
                                 (begin
                                   (write '(funapp 3809 34))
                                   (display "\n")
                                   (cons
                                    (begin
                                      (write '(funapp 3809 39))
                                      (display "\n")
                                      'posn)
                                    x9050))))
                               (x9047
                                (letrec*
                                 ((x9048 (input)))
                                 (begin
                                   (write '(funapp 3811 60))
                                   (display "\n")
                                   (cons
                                    x9048
                                    (begin
                                      (write '(funapp 3811 71))
                                      (display "\n")
                                      '()))))))
                              (begin
                                (write '(funapp 3812 31))
                                (display "\n")
                                (cons x9049 x9047)))))
                           (begin
                             (write '(funapp 3813 28))
                             (display "\n")
                             (cons
                              (begin
                                (write '(funapp 3813 33))
                                (display "\n")
                                'tetra)
                              x9046))))
                         (x9043
                          (letrec*
                           ((x9044 (input)))
                           (begin
                             (write '(funapp 3814 60))
                             (display "\n")
                             (cons
                              x9044
                              (begin
                                (write '(funapp 3814 71))
                                (display "\n")
                                '()))))))
                        (begin
                          (write '(funapp 3815 25))
                          (display "\n")
                          (cons x9045 x9043)))))
                     (begin
                       (write '(funapp 3816 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3816 27)) (display "\n") 'world)
                        x9042)))))
                  (begin
                    (write '(funapp 3817 19))
                    (display "\n")
                    (x9054 x9041))))
                (g8581
                 (letrec*
                  ((x9060
                    (begin
                      (write '(funapp 3821 21))
                      (display "\n")
                      ((lambda (j7558 k7559 f7560)
                         (letrec*
                          ((g9061
                            (lambda (g7557)
                              (letrec*
                               ((g9062
                                 (letrec*
                                  ((x9063
                                    (letrec*
                                     ((x9064
                                       (begin
                                         (write '(funapp 3830 44))
                                         (display "\n")
                                         (BSET/C j7558 k7559 g7557))))
                                     (begin
                                       (write '(funapp 3831 36))
                                       (display "\n")
                                       (f7560 x9064)))))
                                  (begin
                                    (write '(funapp 3832 33))
                                    (display "\n")
                                    (image/c j7558 k7559 x9063)))))
                               g9062))))
                          g9061))
                       (begin (write '(funapp 3835 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3836 21))
                         (display "\n")
                         'importer)
                       blocks->image)))
                   (x9059 (input)))
                  (begin
                    (write '(funapp 3839 19))
                    (display "\n")
                    (x9060 x9059))))
                (g8582
                 (letrec*
                  ((x9072
                    (begin
                      (write '(funapp 3843 21))
                      (display "\n")
                      ((lambda (j7562 k7563 f7564)
                         (letrec*
                          ((g9073
                            (lambda (g7561)
                              (letrec*
                               ((g9074
                                 (letrec*
                                  ((x9075
                                    (letrec*
                                     ((x9076
                                       (begin
                                         (write '(funapp 3852 44))
                                         (display "\n")
                                         (BLOCK/C j7562 k7563 g7561))))
                                     (begin
                                       (write '(funapp 3853 36))
                                       (display "\n")
                                       (f7564 x9076)))))
                                  (begin
                                    (write '(funapp 3854 33))
                                    (display "\n")
                                    (image/c j7562 k7563 x9075)))))
                               g9074))))
                          g9073))
                       (begin (write '(funapp 3857 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3858 21))
                         (display "\n")
                         'importer)
                       block->image)))
                   (x9065
                    (letrec*
                     ((x9066
                       (letrec*
                        ((x9071 (input))
                         (x9067
                          (letrec*
                           ((x9070 (input))
                            (x9068
                             (letrec*
                              ((x9069 (input)))
                              (begin
                                (write '(funapp 3869 57))
                                (display "\n")
                                (cons
                                 x9069
                                 (begin
                                   (write '(funapp 3869 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 3870 28))
                             (display "\n")
                             (cons x9070 x9068)))))
                        (begin
                          (write '(funapp 3871 25))
                          (display "\n")
                          (cons x9071 x9067)))))
                     (begin
                       (write '(funapp 3872 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3872 27)) (display "\n") 'block)
                        x9066)))))
                  (begin
                    (write '(funapp 3873 19))
                    (display "\n")
                    (x9072 x9065))))
                (g8583
                 (letrec*
                  ((x9085
                    (begin
                      (write '(funapp 3877 21))
                      (display "\n")
                      ((lambda (j7567 k7568 f7569)
                         (letrec*
                          ((g9086
                            (lambda (g7565 g7566)
                              (letrec*
                               ((g9087
                                 (letrec*
                                  ((x9088
                                    (letrec*
                                     ((x9090
                                       (begin
                                         (write '(funapp 3886 44))
                                         (display "\n")
                                         (BLOCK/C j7567 k7568 g7565)))
                                      (x9089
                                       (begin
                                         (write '(funapp 3887 44))
                                         (display "\n")
                                         (image/c j7567 k7568 g7566))))
                                     (begin
                                       (write '(funapp 3888 36))
                                       (display "\n")
                                       (f7569 x9090 x9089)))))
                                  (begin
                                    (write '(funapp 3889 33))
                                    (display "\n")
                                    (image/c j7567 k7568 x9088)))))
                               g9087))))
                          g9086))
                       (begin (write '(funapp 3892 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3893 21))
                         (display "\n")
                         'importer)
                       place-block)))
                   (x9078
                    (letrec*
                     ((x9079
                       (letrec*
                        ((x9084 (input))
                         (x9080
                          (letrec*
                           ((x9083 (input))
                            (x9081
                             (letrec*
                              ((x9082 (input)))
                              (begin
                                (write '(funapp 3904 57))
                                (display "\n")
                                (cons
                                 x9082
                                 (begin
                                   (write '(funapp 3904 68))
                                   (display "\n")
                                   '()))))))
                           (begin
                             (write '(funapp 3905 28))
                             (display "\n")
                             (cons x9083 x9081)))))
                        (begin
                          (write '(funapp 3906 25))
                          (display "\n")
                          (cons x9084 x9080)))))
                     (begin
                       (write '(funapp 3907 22))
                       (display "\n")
                       (cons
                        (begin (write '(funapp 3907 27)) (display "\n") 'block)
                        x9079))))
                   (x9077 (input)))
                  (begin
                    (write '(funapp 3909 19))
                    (display "\n")
                    (x9085 x9078 x9077))))
                (g8584
                 (letrec*
                  ((x9092
                    (begin
                      (write '(funapp 3913 21))
                      (display "\n")
                      ((lambda (j7571 k7572 f7573)
                         (letrec*
                          ((g9093
                            (lambda (g7570)
                              (letrec*
                               ((g9094
                                 (letrec*
                                  ((x9095
                                    (letrec*
                                     ((x9096
                                       (letrec*
                                        ((x9097
                                          (letrec*
                                           ((x9098
                                             (begin
                                               (write '(funapp 3926 50))
                                               (display "\n")
                                               (listof TETRA/C))))
                                           (begin
                                             (write '(funapp 3927 42))
                                             (display "\n")
                                             (and/c cons?/c x9098)))))
                                        (begin
                                          (write '(funapp 3928 39))
                                          (display "\n")
                                          (x9097 j7571 k7572 g7570)))))
                                     (begin
                                       (write '(funapp 3929 36))
                                       (display "\n")
                                       (f7573 x9096)))))
                                  (begin
                                    (write '(funapp 3930 33))
                                    (display "\n")
                                    (WORLD/C j7571 k7572 x9095)))))
                               g9094))))
                          g9093))
                       (begin (write '(funapp 3933 21)) (display "\n") 'module)
                       (begin
                         (write '(funapp 3934 21))
                         (display "\n")
                         'importer)
                       world0)))
                   (x9091 (input)))
                  (begin
                    (write '(funapp 3937 19))
                    (display "\n")
                    (x9092 x9091)))))
               g8584))))
           g7610))))
       g7608)))
    g7607)))
