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
                 (listof
                  (lambda (contract)
                    (letrec*
                     ((g7607
                       (lambda (k j lst)
                         (letrec*
                          ((g7608
                            (begin
                              (write '(funapp 65 29))
                              (display "\n")
                              (map
                               (lambda (v)
                                 (letrec*
                                  ((g7609
                                    (begin
                                      (write '(funapp 67 49))
                                      (display "\n")
                                      (contract k j v))))
                                  g7609))
                               lst))))
                          g7608))))
                     g7607)))
                 (real?/c
                  (lambda (g7259 g7260 g7261)
                    (letrec*
                     ((g7610
                       (letrec*
                        ((x-cnd7611
                          (begin
                            (write '(funapp 76 37))
                            (display "\n")
                            (real? g7261))))
                        (if x-cnd7611
                          g7261
                          (begin
                            (write '(blame g7259 77 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7259)))))))
                     g7610)))
                 (boolean?/c
                  (lambda (g7262 g7263 g7264)
                    (letrec*
                     ((g7612
                       (letrec*
                        ((x-cnd7613
                          (begin
                            (write '(funapp 84 37))
                            (display "\n")
                            (boolean? g7264))))
                        (if x-cnd7613
                          g7264
                          (begin
                            (write '(blame g7262 85 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7262)))))))
                     g7612)))
                 (number?/c
                  (lambda (g7265 g7266 g7267)
                    (letrec*
                     ((g7614
                       (letrec*
                        ((x-cnd7615
                          (begin
                            (write '(funapp 92 37))
                            (display "\n")
                            (number? g7267))))
                        (if x-cnd7615
                          g7267
                          (begin
                            (write '(blame g7265 93 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7265)))))))
                     g7614)))
                 (any/c
                  (lambda (g7268 g7269 g7270)
                    (letrec*
                     ((g7616
                       (letrec*
                        ((x-cnd7617
                          (begin
                            (write '(funapp 101 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7618 #t)) g7618))
                             g7270))))
                        (if x-cnd7617
                          g7270
                          (begin
                            (write '(blame g7268 102 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7268)))))))
                     g7616)))
                 (any?/c
                  (lambda (g7271 g7272 g7273)
                    (letrec*
                     ((g7619
                       (letrec*
                        ((x-cnd7620
                          (begin
                            (write '(funapp 110 27))
                            (display "\n")
                            ((lambda (v) (letrec* ((g7621 #t)) g7621))
                             g7273))))
                        (if x-cnd7620
                          g7273
                          (begin
                            (write '(blame g7271 111 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7271)))))))
                     g7619)))
                 (cons?/c
                  (lambda (g7274 g7275 g7276)
                    (letrec*
                     ((g7622
                       (letrec*
                        ((x-cnd7623
                          (begin
                            (write '(funapp 118 37))
                            (display "\n")
                            (pair? g7276))))
                        (if x-cnd7623
                          g7276
                          (begin
                            (write '(blame g7274 119 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7274)))))))
                     g7622)))
                 (pair?/c
                  (lambda (g7277 g7278 g7279)
                    (letrec*
                     ((g7624
                       (letrec*
                        ((x-cnd7625
                          (begin
                            (write '(funapp 126 37))
                            (display "\n")
                            (pair? g7279))))
                        (if x-cnd7625
                          g7279
                          (begin
                            (write '(blame g7277 127 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7277)))))))
                     g7624)))
                 (integer?/c
                  (lambda (g7280 g7281 g7282)
                    (letrec*
                     ((g7626
                       (letrec*
                        ((x-cnd7627
                          (begin
                            (write '(funapp 134 37))
                            (display "\n")
                            (integer? g7282))))
                        (if x-cnd7627
                          g7282
                          (begin
                            (write '(blame g7280 135 44))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7280)))))))
                     g7626)))
                 (and/c
                  (lambda (c1 c2)
                    (letrec*
                     ((g7628
                       (lambda (k j v)
                         (letrec*
                          ((g7629
                            (letrec*
                             ((x-cnd7630
                               (begin
                                 (write '(funapp 145 42))
                                 (display "\n")
                                 (c1 k j v))))
                             (if x-cnd7630
                               (begin
                                 (write '(funapp 146 44))
                                 (display "\n")
                                 (c2 k j v))
                               #f))))
                          g7629))))
                     g7628)))
                 (list-of
                  (lambda (contract)
                    (letrec*
                     ((g7631
                       (lambda (k j v)
                         (letrec*
                          ((g7632
                            (letrec*
                             ((x-cnd7633
                               (begin
                                 (write '(funapp 157 42))
                                 (display "\n")
                                 (null? v))))
                             (if x-cnd7633
                               (begin
                                 (write '(funapp 159 31))
                                 (display "\n")
                                 '())
                               (letrec*
                                ((x7637
                                  (letrec*
                                   ((x7638
                                     (begin
                                       (write '(funapp 163 44))
                                       (display "\n")
                                       (car v))))
                                   (begin
                                     (write '(funapp 164 36))
                                     (display "\n")
                                     (contract k j x7638))))
                                 (x7634
                                  (letrec*
                                   ((x7636
                                     (begin
                                       (write '(funapp 167 44))
                                       (display "\n")
                                       (list-of contract)))
                                    (x7635
                                     (begin
                                       (write '(funapp 167 71))
                                       (display "\n")
                                       (cdr v))))
                                   (begin
                                     (write '(funapp 168 36))
                                     (display "\n")
                                     (x7636 k j x7635)))))
                                (begin
                                  (write '(funapp 169 33))
                                  (display "\n")
                                  (orig-cons x7637 x7634)))))))
                          g7632))))
                     g7631)))
                 (any? (lambda (v) (letrec* ((g7639 #t)) g7639)))
                 (nonzero?
                  (lambda (v)
                    (letrec*
                     ((g7640
                       (letrec*
                        ((x7641
                          (begin
                            (write '(funapp 176 47))
                            (display "\n")
                            (= v 0))))
                        (begin
                          (write '(funapp 176 57))
                          (display "\n")
                          (not x7641)))))
                     g7640)))
                 (nonzero?/c
                  (lambda (g7283 g7284 g7285)
                    (letrec*
                     ((g7642
                       (letrec*
                        ((x-cnd7643
                          (begin
                            (write '(funapp 184 27))
                            (display "\n")
                            ((lambda (v)
                               (letrec*
                                ((g7644
                                  (letrec*
                                   ((x7645
                                     (begin
                                       (write '(funapp 186 56))
                                       (display "\n")
                                       (= v 0))))
                                   (begin
                                     (write '(funapp 186 66))
                                     (display "\n")
                                     (not x7645)))))
                                g7644))
                             g7285))))
                        (if x-cnd7643
                          g7285
                          (begin
                            (write '(blame g7283 191 26))
                            (display "\n")
                            (error
                             (format
                              "contract violation, blaming ~a~%"
                              g7283)))))))
                     g7642)))
                 (meta (lambda (v) (letrec* ((g7646 v)) g7646)))
                 (+
                  (begin
                    (write '(funapp 195 19))
                    (display "\n")
                    ((lambda (j7288 k7289 f7290)
                       (letrec*
                        ((g7648
                          (lambda (g7286 g7287)
                            (letrec*
                             ((g7649
                               (letrec*
                                ((x7650
                                  (letrec*
                                   ((x7652
                                     (begin
                                       (write '(funapp 204 42))
                                       (display "\n")
                                       (number?/c j7288 k7289 g7286)))
                                    (x7651
                                     (begin
                                       (write '(funapp 205 42))
                                       (display "\n")
                                       (number?/c j7288 k7289 g7287))))
                                   (begin
                                     (write '(funapp 206 34))
                                     (display "\n")
                                     (f7290 x7652 x7651)))))
                                (begin
                                  (write '(funapp 207 31))
                                  (display "\n")
                                  (number?/c j7288 k7289 x7650)))))
                             g7649))))
                        g7648))
                     (begin (write '(funapp 210 19)) (display "\n") 'server)
                     (begin (write '(funapp 211 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7647
                          (begin
                            (write '(funapp 212 51))
                            (display "\n")
                            (orig-+ a b))))
                        g7647)))))
                 (-
                  (begin
                    (write '(funapp 214 19))
                    (display "\n")
                    ((lambda (j7293 k7294 f7295)
                       (letrec*
                        ((g7654
                          (lambda (g7291 g7292)
                            (letrec*
                             ((g7655
                               (letrec*
                                ((x7656
                                  (letrec*
                                   ((x7658
                                     (begin
                                       (write '(funapp 223 42))
                                       (display "\n")
                                       (number?/c j7293 k7294 g7291)))
                                    (x7657
                                     (begin
                                       (write '(funapp 224 42))
                                       (display "\n")
                                       (number?/c j7293 k7294 g7292))))
                                   (begin
                                     (write '(funapp 225 34))
                                     (display "\n")
                                     (f7295 x7658 x7657)))))
                                (begin
                                  (write '(funapp 226 31))
                                  (display "\n")
                                  (number?/c j7293 k7294 x7656)))))
                             g7655))))
                        g7654))
                     (begin (write '(funapp 229 19)) (display "\n") 'server)
                     (begin (write '(funapp 230 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7653
                          (begin
                            (write '(funapp 231 51))
                            (display "\n")
                            (orig-- a b))))
                        g7653)))))
                 (*
                  (begin
                    (write '(funapp 233 19))
                    (display "\n")
                    ((lambda (j7298 k7299 f7300)
                       (letrec*
                        ((g7660
                          (lambda (g7296 g7297)
                            (letrec*
                             ((g7661
                               (letrec*
                                ((x7662
                                  (letrec*
                                   ((x7664
                                     (begin
                                       (write '(funapp 242 42))
                                       (display "\n")
                                       (number?/c j7298 k7299 g7296)))
                                    (x7663
                                     (begin
                                       (write '(funapp 243 42))
                                       (display "\n")
                                       (number?/c j7298 k7299 g7297))))
                                   (begin
                                     (write '(funapp 244 34))
                                     (display "\n")
                                     (f7300 x7664 x7663)))))
                                (begin
                                  (write '(funapp 245 31))
                                  (display "\n")
                                  (number?/c j7298 k7299 x7662)))))
                             g7661))))
                        g7660))
                     (begin (write '(funapp 248 19)) (display "\n") 'server)
                     (begin (write '(funapp 249 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7659
                          (begin
                            (write '(funapp 250 51))
                            (display "\n")
                            (orig-* a b))))
                        g7659)))))
                 (/
                  (begin
                    (write '(funapp 252 19))
                    (display "\n")
                    ((lambda (j7303 k7304 f7305)
                       (letrec*
                        ((g7666
                          (lambda (g7301 g7302)
                            (letrec*
                             ((g7667
                               (letrec*
                                ((x7668
                                  (letrec*
                                   ((x7670
                                     (begin
                                       (write '(funapp 261 42))
                                       (display "\n")
                                       (number?/c j7303 k7304 g7301)))
                                    (x7669
                                     (begin
                                       (write '(funapp 262 42))
                                       (display "\n")
                                       (number?/c j7303 k7304 g7302))))
                                   (begin
                                     (write '(funapp 263 34))
                                     (display "\n")
                                     (f7305 x7670 x7669)))))
                                (begin
                                  (write '(funapp 264 31))
                                  (display "\n")
                                  (number?/c j7303 k7304 x7668)))))
                             g7667))))
                        g7666))
                     (begin (write '(funapp 267 19)) (display "\n") 'server)
                     (begin (write '(funapp 268 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7665
                          (begin
                            (write '(funapp 269 51))
                            (display "\n")
                            (orig-/ a b))))
                        g7665)))))
                 (car
                  (begin
                    (write '(funapp 271 19))
                    (display "\n")
                    ((lambda (j7307 k7308 f7309)
                       (letrec*
                        ((g7672
                          (lambda (g7306)
                            (letrec*
                             ((g7673
                               (letrec*
                                ((x7674
                                  (letrec*
                                   ((x7675
                                     (begin
                                       (write '(funapp 280 42))
                                       (display "\n")
                                       (pair?/c j7307 k7308 g7306))))
                                   (begin
                                     (write '(funapp 281 34))
                                     (display "\n")
                                     (f7309 x7675)))))
                                (begin
                                  (write '(funapp 282 31))
                                  (display "\n")
                                  (any/c j7307 k7308 x7674)))))
                             g7673))))
                        g7672))
                     (begin (write '(funapp 285 19)) (display "\n") 'server)
                     (begin (write '(funapp 286 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7671
                          (begin
                            (write '(funapp 287 49))
                            (display "\n")
                            (orig-car p))))
                        g7671)))))
                 (cdr
                  (begin
                    (write '(funapp 289 19))
                    (display "\n")
                    ((lambda (j7311 k7312 f7313)
                       (letrec*
                        ((g7677
                          (lambda (g7310)
                            (letrec*
                             ((g7678
                               (letrec*
                                ((x7679
                                  (letrec*
                                   ((x7680
                                     (begin
                                       (write '(funapp 298 42))
                                       (display "\n")
                                       (pair?/c j7311 k7312 g7310))))
                                   (begin
                                     (write '(funapp 299 34))
                                     (display "\n")
                                     (f7313 x7680)))))
                                (begin
                                  (write '(funapp 300 31))
                                  (display "\n")
                                  (any/c j7311 k7312 x7679)))))
                             g7678))))
                        g7677))
                     (begin (write '(funapp 303 19)) (display "\n") 'server)
                     (begin (write '(funapp 304 19)) (display "\n") 'client)
                     (lambda (p)
                       (letrec*
                        ((g7676
                          (begin
                            (write '(funapp 305 49))
                            (display "\n")
                            (orig-cdr p))))
                        g7676)))))
                 (cons
                  (begin
                    (write '(funapp 307 19))
                    (display "\n")
                    ((lambda (j7316 k7317 f7318)
                       (letrec*
                        ((g7682
                          (lambda (g7314 g7315)
                            (letrec*
                             ((g7683
                               (letrec*
                                ((x7684
                                  (letrec*
                                   ((x7686
                                     (begin
                                       (write '(funapp 316 42))
                                       (display "\n")
                                       (any/c j7316 k7317 g7314)))
                                    (x7685
                                     (begin
                                       (write '(funapp 317 42))
                                       (display "\n")
                                       (any/c j7316 k7317 g7315))))
                                   (begin
                                     (write '(funapp 318 34))
                                     (display "\n")
                                     (f7318 x7686 x7685)))))
                                (begin
                                  (write '(funapp 319 31))
                                  (display "\n")
                                  (pair?/c j7316 k7317 x7684)))))
                             g7683))))
                        g7682))
                     (begin (write '(funapp 322 19)) (display "\n") 'server)
                     (begin (write '(funapp 323 19)) (display "\n") 'client)
                     (lambda (a b)
                       (letrec*
                        ((g7681
                          (begin
                            (write '(funapp 324 51))
                            (display "\n")
                            (orig-cons a b))))
                        g7681)))))
                 (vector-ref
                  (begin
                    (write '(funapp 326 19))
                    (display "\n")
                    ((lambda (j7320 k7321 f7322)
                       (letrec*
                        ((g7688
                          (lambda (g7319)
                            (letrec*
                             ((g7689
                               (letrec*
                                ((x7690
                                  (letrec*
                                   ((x7691
                                     (begin
                                       (write '(funapp 335 42))
                                       (display "\n")
                                       (vector?/c j7320 k7321 g7319))))
                                   (begin
                                     (write '(funapp 336 34))
                                     (display "\n")
                                     (f7322 x7691)))))
                                (begin
                                  (write '(funapp 337 31))
                                  (display "\n")
                                  (integer?/c j7320 k7321 x7690)))))
                             g7689))))
                        g7688))
                     (begin (write '(funapp 340 19)) (display "\n") 'server)
                     (begin (write '(funapp 341 19)) (display "\n") 'client)
                     (lambda (v i)
                       (letrec*
                        ((g7687
                          (begin
                            (write '(funapp 343 39))
                            (display "\n")
                            (orig-vector-ref v i))))
                        g7687)))))
                 (vector-set!
                  (begin
                    (write '(funapp 345 19))
                    (display "\n")
                    ((lambda (j7325 k7326 f7327)
                       (letrec*
                        ((g7693
                          (lambda (g7323 g7324)
                            (letrec*
                             ((g7694
                               (letrec*
                                ((x7695
                                  (letrec*
                                   ((x7697
                                     (begin
                                       (write '(funapp 354 42))
                                       (display "\n")
                                       (vector?/c j7325 k7326 g7323)))
                                    (x7696
                                     (begin
                                       (write '(funapp 355 42))
                                       (display "\n")
                                       (integer?/c j7325 k7326 g7324))))
                                   (begin
                                     (write '(funapp 356 34))
                                     (display "\n")
                                     (f7327 x7697 x7696)))))
                                (begin
                                  (write '(funapp 357 31))
                                  (display "\n")
                                  (any/c j7325 k7326 x7695)))))
                             g7694))))
                        g7693))
                     (begin (write '(funapp 360 19)) (display "\n") 'server)
                     (begin (write '(funapp 361 19)) (display "\n") 'client)
                     (lambda (vec i v)
                       (letrec*
                        ((g7692
                          (begin
                            (write '(funapp 363 39))
                            (display "\n")
                            (orig-vector-set! vec i v))))
                        g7692)))))
                 (assert
                  (lambda (cnd)
                    (letrec*
                     ((g7698
                       (if cnd
                         (begin (write '(funapp 367 37)) (display "\n") '())
                         (begin
                           (write '(funapp 367 42))
                           (display "\n")
                           (error "assertion failed")))))
                     g7698)))
                 (cdddr
                  (lambda (x)
                    (letrec*
                     ((g7699
                       (letrec*
                        ((x7700
                          (letrec*
                           ((x7701
                             (begin
                               (write '(funapp 374 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 374 60))
                             (display "\n")
                             (cdr x7701)))))
                        (begin
                          (write '(funapp 375 25))
                          (display "\n")
                          (cdr x7700)))))
                     g7699)))
                 (__toplevel_set-car! set-car!)
                 (map
                  (lambda (f l)
                    (letrec*
                     ((g7702
                       (letrec*
                        ((x7705
                          (begin
                            (write '(funapp 381 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 381 64))
                          (display "\n")
                          (assert x7705))))
                      (g7703
                       (letrec*
                        ((x7706
                          (begin
                            (write '(funapp 382 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 382 59))
                          (display "\n")
                          (assert x7706))))
                      (g7704
                       (letrec*
                        ((x-cnd7707
                          (begin
                            (write '(funapp 385 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7707
                          (begin (write '(funapp 387 26)) (display "\n") '())
                          (letrec*
                           ((x7710
                             (letrec*
                              ((x7711
                                (begin
                                  (write '(funapp 389 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 389 63))
                                (display "\n")
                                (f x7711))))
                            (x7708
                             (letrec*
                              ((x7709
                                (begin
                                  (write '(funapp 390 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 390 63))
                                (display "\n")
                                (map f x7709)))))
                           (begin
                             (write '(funapp 391 28))
                             (display "\n")
                             (cons x7710 x7708)))))))
                     g7704)))
                 (cdar
                  (lambda (x)
                    (letrec*
                     ((g7712
                       (letrec*
                        ((x7713
                          (begin
                            (write '(funapp 396 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 396 57))
                          (display "\n")
                          (cdr x7713)))))
                     g7712)))
                 (cadadr
                  (lambda (x)
                    (letrec*
                     ((g7714
                       (letrec*
                        ((x7715
                          (letrec*
                           ((x7716
                             (letrec*
                              ((x7717
                                (begin
                                  (write '(funapp 405 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 405 63))
                                (display "\n")
                                (car x7717)))))
                           (begin
                             (write '(funapp 406 28))
                             (display "\n")
                             (cdr x7716)))))
                        (begin
                          (write '(funapp 407 25))
                          (display "\n")
                          (car x7715)))))
                     g7714)))
                 (cdadar
                  (lambda (x)
                    (letrec*
                     ((g7718
                       (letrec*
                        ((x7719
                          (letrec*
                           ((x7720
                             (letrec*
                              ((x7721
                                (begin
                                  (write '(funapp 416 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 416 63))
                                (display "\n")
                                (cdr x7721)))))
                           (begin
                             (write '(funapp 417 28))
                             (display "\n")
                             (car x7720)))))
                        (begin
                          (write '(funapp 418 25))
                          (display "\n")
                          (cdr x7719)))))
                     g7718)))
                 (call-with-output-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7722
                       (letrec*
                        ((x7725
                          (begin
                            (write '(funapp 424 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 424 62))
                          (display "\n")
                          (assert x7725))))
                      (g7723
                       (letrec*
                        ((x7726
                          (begin
                            (write '(funapp 426 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 426 61))
                          (display "\n")
                          (assert x7726))))
                      (g7724
                       (letrec*
                        ((output-port
                          (begin
                            (write '(funapp 429 39))
                            (display "\n")
                            (open-output-file filename)))
                         (res
                          (begin
                            (write '(funapp 430 31))
                            (display "\n")
                            (proc output-port))))
                        (letrec*
                         ((g7727
                           (begin
                             (write '(funapp 432 34))
                             (display "\n")
                             (close-output-port output-port)))
                          (g7728 res))
                         g7728))))
                     g7724)))
                 (caddr
                  (lambda (x)
                    (letrec*
                     ((g7729
                       (letrec*
                        ((x7730
                          (letrec*
                           ((x7731
                             (begin
                               (write '(funapp 440 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 440 60))
                             (display "\n")
                             (cdr x7731)))))
                        (begin
                          (write '(funapp 441 25))
                          (display "\n")
                          (car x7730)))))
                     g7729)))
                 (cdaadr
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
                                  (write '(funapp 450 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 450 63))
                                (display "\n")
                                (car x7735)))))
                           (begin
                             (write '(funapp 451 28))
                             (display "\n")
                             (car x7734)))))
                        (begin
                          (write '(funapp 452 25))
                          (display "\n")
                          (cdr x7733)))))
                     g7732)))
                 (assq
                  (lambda (k l)
                    (letrec*
                     ((g7736
                       (letrec*
                        ((x7738
                          (begin
                            (write '(funapp 457 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 457 59))
                          (display "\n")
                          (assert x7738))))
                      (g7737
                       (letrec*
                        ((x-cnd7739
                          (begin
                            (write '(funapp 460 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7739
                          #f
                          (letrec*
                           ((x-cnd7740
                             (letrec*
                              ((x7741
                                (begin
                                  (write '(funapp 465 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 465 58))
                                (display "\n")
                                (eq? x7741 k)))))
                           (if x-cnd7740
                             (begin
                               (write '(funapp 467 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x7742
                                (begin
                                  (write '(funapp 468 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 468 57))
                                (display "\n")
                                (assq k x7742)))))))))
                     g7737)))
                 (even?
                  (lambda (x)
                    (letrec*
                     ((g7743
                       (letrec*
                        ((x7744
                          (begin
                            (write '(funapp 473 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 473 62))
                          (display "\n")
                          (= 0 x7744)))))
                     g7743)))
                 (list->string
                  (lambda (l)
                    (letrec*
                     ((g7745
                       (letrec*
                        ((x7747
                          (begin
                            (write '(funapp 478 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 478 59))
                          (display "\n")
                          (assert x7747))))
                      (g7746
                       (letrec*
                        ((x-cnd7748
                          (begin
                            (write '(funapp 481 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7748
                          ""
                          (letrec*
                           ((x7751
                             (letrec*
                              ((x7752
                                (begin
                                  (write '(funapp 486 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 486 57))
                                (display "\n")
                                (char->string x7752))))
                            (x7749
                             (letrec*
                              ((x7750
                                (begin
                                  (write '(funapp 488 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 488 57))
                                (display "\n")
                                (list->string x7750)))))
                           (begin
                             (write '(funapp 489 28))
                             (display "\n")
                             (string-append x7751 x7749)))))))
                     g7746)))
                 (char<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7753
                       (letrec*
                        ((x7756
                          (begin
                            (write '(funapp 494 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 494 60))
                          (display "\n")
                          (assert x7756))))
                      (g7754
                       (letrec*
                        ((x7757
                          (begin
                            (write '(funapp 495 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 495 60))
                          (display "\n")
                          (assert x7757))))
                      (g7755
                       (letrec*
                        ((val7241
                          (begin
                            (write '(funapp 498 35))
                            (display "\n")
                            (char<? c1 c2))))
                        (letrec*
                         ((g7758
                           (if val7241
                             val7241
                             (begin
                               (write '(funapp 500 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7758))))
                     g7755)))
                 (cdddar
                  (lambda (x)
                    (letrec*
                     ((g7759
                       (letrec*
                        ((x7760
                          (letrec*
                           ((x7761
                             (letrec*
                              ((x7762
                                (begin
                                  (write '(funapp 510 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 510 63))
                                (display "\n")
                                (cdr x7762)))))
                           (begin
                             (write '(funapp 511 28))
                             (display "\n")
                             (cdr x7761)))))
                        (begin
                          (write '(funapp 512 25))
                          (display "\n")
                          (cdr x7760)))))
                     g7759)))
                 (list-tail
                  (lambda (x k)
                    (letrec*
                     ((g7763
                       (letrec*
                        ((x7766
                          (begin
                            (write '(funapp 517 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 517 59))
                          (display "\n")
                          (assert x7766))))
                      (g7764
                       (letrec*
                        ((x7767
                          (begin
                            (write '(funapp 518 47))
                            (display "\n")
                            (number?))))
                        (begin
                          (write '(funapp 518 59))
                          (display "\n")
                          (assert x7767))))
                      (g7765
                       (letrec*
                        ((x-cnd7768
                          (begin
                            (write '(funapp 521 37))
                            (display "\n")
                            (zero? k))))
                        (if x-cnd7768
                          x
                          (letrec*
                           ((x7770
                             (begin
                               (write '(funapp 525 36))
                               (display "\n")
                               (cdr x)))
                            (x7769
                             (begin
                               (write '(funapp 525 52))
                               (display "\n")
                               (- k 1))))
                           (begin
                             (write '(funapp 526 28))
                             (display "\n")
                             (list-tail x7770 x7769)))))))
                     g7765)))
                 (halt
                  (lambda ()
                    (letrec*
                     ((g7771
                       (begin (write '(funapp 528 51)) (display "\n") '())))
                     g7771)))
                 (char-alphabetic?
                  (lambda (c)
                    (letrec*
                     ((g7772
                       (letrec*
                        ((x-cnd7773
                          (letrec*
                           ((x7774 #\a))
                           (begin
                             (write '(funapp 535 50))
                             (display "\n")
                             (char-ci>=? c x7774)))))
                        (if x-cnd7773
                          (letrec*
                           ((x7775 #\z))
                           (begin
                             (write '(funapp 537 50))
                             (display "\n")
                             (char-ci<=? c x7775)))
                          #f))))
                     g7772)))
                 (<=
                  (lambda (x y)
                    (letrec*
                     ((g7776
                       (letrec*
                        ((x7778
                          (begin
                            (write '(funapp 543 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 543 61))
                          (display "\n")
                          (assert x7778))))
                      (g7777
                       (letrec*
                        ((val7242
                          (begin
                            (write '(funapp 546 35))
                            (display "\n")
                            (< x y))))
                        (letrec*
                         ((g7779
                           (if val7242
                             val7242
                             (letrec*
                              ((val7243
                                (begin
                                  (write '(funapp 552 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7780 (if val7243 val7243 #f)))
                               g7780)))))
                         g7779))))
                     g7777)))
                 (char-whitespace?
                  (lambda (c)
                    (letrec*
                     ((g7781
                       (letrec*
                        ((val7244
                          (letrec*
                           ((x7782
                             (begin
                               (write '(funapp 564 44))
                               (display "\n")
                               (char->integer c))))
                           (begin
                             (write '(funapp 564 64))
                             (display "\n")
                             (= x7782 9)))))
                        (letrec*
                         ((g7783
                           (if val7244
                             val7244
                             (letrec*
                              ((val7245
                                (letrec*
                                 ((x7784
                                   (begin
                                     (write '(funapp 572 42))
                                     (display "\n")
                                     (char->integer c))))
                                 (begin
                                   (write '(funapp 573 34))
                                   (display "\n")
                                   (= x7784 10)))))
                              (letrec*
                               ((g7785
                                 (if val7245
                                   val7245
                                   (letrec*
                                    ((x7786
                                      (begin
                                        (write '(funapp 579 45))
                                        (display "\n")
                                        (char->integer c))))
                                    (begin
                                      (write '(funapp 580 37))
                                      (display "\n")
                                      (= x7786 32))))))
                               g7785)))))
                         g7783))))
                     g7781)))
                 (cddar
                  (lambda (x)
                    (letrec*
                     ((g7787
                       (letrec*
                        ((x7788
                          (letrec*
                           ((x7789
                             (begin
                               (write '(funapp 589 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 589 60))
                             (display "\n")
                             (cdr x7789)))))
                        (begin
                          (write '(funapp 590 25))
                          (display "\n")
                          (cdr x7788)))))
                     g7787)))
                 (positive?
                  (lambda (x)
                    (letrec*
                     ((g7790
                       (letrec*
                        ((x7792
                          (begin
                            (write '(funapp 595 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 595 61))
                          (display "\n")
                          (assert x7792))))
                      (g7791
                       (begin
                         (write '(funapp 596 30))
                         (display "\n")
                         (> x 0))))
                     g7791)))
                 ($pc (begin (write '(funapp 598 22)) (display "\n") '()))
                 (ref-set set-car!)
                 (void (lambda () (letrec* ((g7793 #f)) g7793)))
                 (cddr
                  (lambda (x)
                    (letrec*
                     ((g7794
                       (letrec*
                        ((x7795
                          (begin
                            (write '(funapp 604 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 604 57))
                          (display "\n")
                          (cdr x7795)))))
                     g7794)))
                 (truncate
                  (lambda (x)
                    (letrec*
                     ((g7796
                       (letrec*
                        ((x7798
                          (begin
                            (write '(funapp 609 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 609 61))
                          (display "\n")
                          (assert x7798))))
                      (g7797
                       (letrec*
                        ((x-cnd7799
                          (begin
                            (write '(funapp 612 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd7799
                          (begin
                            (write '(funapp 613 39))
                            (display "\n")
                            (ceiling x))
                          (begin
                            (write '(funapp 613 51))
                            (display "\n")
                            (floor x))))))
                     g7797)))
                 ($cmp (begin (write '(funapp 615 23)) (display "\n") '()))
                 (equal?
                  (lambda (a b)
                    (letrec*
                     ((g7800
                       (letrec*
                        ((val7246
                          (begin
                            (write '(funapp 621 35))
                            (display "\n")
                            (eq? a b))))
                        (letrec*
                         ((g7801
                           (if val7246
                             val7246
                             (letrec*
                              ((val7247
                                (letrec*
                                 ((x7803
                                   (begin
                                     (write '(funapp 629 42))
                                     (display "\n")
                                     (null? a)))
                                  (x7802
                                   (begin
                                     (write '(funapp 629 60))
                                     (display "\n")
                                     (null? b))))
                                 (begin
                                   (write '(funapp 630 34))
                                   (display "\n")
                                   (and x7803 x7802)))))
                              (letrec*
                               ((g7804
                                 (if val7247
                                   val7247
                                   (letrec*
                                    ((val7248
                                      (letrec*
                                       ((x7807
                                         (begin
                                           (write '(funapp 638 48))
                                           (display "\n")
                                           (string? a)))
                                        (x7806
                                         (begin
                                           (write '(funapp 639 48))
                                           (display "\n")
                                           (string? b)))
                                        (x7805
                                         (begin
                                           (write '(funapp 640 48))
                                           (display "\n")
                                           (string=? a b))))
                                       (begin
                                         (write '(funapp 641 40))
                                         (display "\n")
                                         (and x7807 x7806 x7805)))))
                                    (letrec*
                                     ((g7808
                                       (if val7248
                                         val7248
                                         (letrec*
                                          ((val7249
                                            (letrec*
                                             ((x7816
                                               (begin
                                                 (write '(funapp 649 54))
                                                 (display "\n")
                                                 (pair? a)))
                                              (x7815
                                               (begin
                                                 (write '(funapp 650 54))
                                                 (display "\n")
                                                 (pair? b)))
                                              (x7812
                                               (letrec*
                                                ((x7814
                                                  (begin
                                                    (write '(funapp 653 57))
                                                    (display "\n")
                                                    (car a)))
                                                 (x7813
                                                  (begin
                                                    (write '(funapp 654 57))
                                                    (display "\n")
                                                    (car b))))
                                                (begin
                                                  (write '(funapp 655 49))
                                                  (display "\n")
                                                  (equal? x7814 x7813))))
                                              (x7809
                                               (letrec*
                                                ((x7811
                                                  (begin
                                                    (write '(funapp 658 57))
                                                    (display "\n")
                                                    (cdr a)))
                                                 (x7810
                                                  (begin
                                                    (write '(funapp 659 57))
                                                    (display "\n")
                                                    (cdr b))))
                                                (begin
                                                  (write '(funapp 660 49))
                                                  (display "\n")
                                                  (equal? x7811 x7810)))))
                                             (begin
                                               (write '(funapp 661 46))
                                               (display "\n")
                                               (and x7816
                                                    x7815
                                                    x7812
                                                    x7809)))))
                                          (letrec*
                                           ((g7817
                                             (if val7249
                                               val7249
                                               (letrec*
                                                ((x7833
                                                  (begin
                                                    (write '(funapp 667 57))
                                                    (display "\n")
                                                    (vector? a)))
                                                 (x7832
                                                  (begin
                                                    (write '(funapp 668 57))
                                                    (display "\n")
                                                    (vector? b)))
                                                 (x7818
                                                  (letrec*
                                                   ((n
                                                     (begin
                                                       (write '(funapp 671 56))
                                                       (display "\n")
                                                       (vector-length a))))
                                                   (letrec*
                                                    ((g7819
                                                      (letrec*
                                                       ((x7830
                                                         (letrec*
                                                          ((x7831
                                                            (begin
                                                              (write
                                                               '(funapp
                                                                 678
                                                                 61))
                                                              (display "\n")
                                                              (vector-length
                                                               b))))
                                                          (begin
                                                            (write
                                                             '(funapp 679 59))
                                                            (display "\n")
                                                            (= x7831 n))))
                                                        (x7820
                                                         (letrec*
                                                          ((loop
                                                            (lambda (i)
                                                              (letrec*
                                                               ((g7821
                                                                 (letrec*
                                                                  ((x7828
                                                                    (begin
                                                                      (write
                                                                       '(funapp
                                                                         688
                                                                         69))
                                                                      (display
                                                                       "\n")
                                                                      (= i n)))
                                                                   (x7822
                                                                    (letrec*
                                                                     ((x7825
                                                                       (letrec*
                                                                        ((x7827
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               694
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             a
                                                                             i)))
                                                                         (x7826
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               698
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (vector-ref
                                                                             b
                                                                             i))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             701
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (equal?
                                                                           x7827
                                                                           x7826))))
                                                                      (x7823
                                                                       (letrec*
                                                                        ((x7824
                                                                          (begin
                                                                            (write
                                                                             '(funapp
                                                                               707
                                                                               75))
                                                                            (display
                                                                             "\n")
                                                                            (+
                                                                             i
                                                                             1))))
                                                                        (begin
                                                                          (write
                                                                           '(funapp
                                                                             710
                                                                             73))
                                                                          (display
                                                                           "\n")
                                                                          (loop
                                                                           x7824)))))
                                                                     (begin
                                                                       (write
                                                                        '(funapp
                                                                          712
                                                                          70))
                                                                       (display
                                                                        "\n")
                                                                       (and x7825
                                                                            x7823)))))
                                                                  (begin
                                                                    (write
                                                                     '(funapp
                                                                       714
                                                                       67))
                                                                    (display
                                                                     "\n")
                                                                    (or x7828
                                                                        x7822)))))
                                                               g7821))))
                                                          (letrec*
                                                           ((g7829
                                                             (begin
                                                               (write
                                                                '(funapp
                                                                  718
                                                                  68))
                                                               (display "\n")
                                                               (loop 0))))
                                                           g7829))))
                                                       (begin
                                                         (write
                                                          '(funapp 720 56))
                                                         (display "\n")
                                                         (and x7830 x7820)))))
                                                    g7819))))
                                                (begin
                                                  (write '(funapp 722 49))
                                                  (display "\n")
                                                  (and x7833 x7832 x7818))))))
                                           g7817)))))
                                     g7808)))))
                               g7804)))))
                         g7801))))
                     g7800)))
                 (cdaaar
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
                                  (write '(funapp 735 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 735 63))
                                (display "\n")
                                (car x7837)))))
                           (begin
                             (write '(funapp 736 28))
                             (display "\n")
                             (car x7836)))))
                        (begin
                          (write '(funapp 737 25))
                          (display "\n")
                          (cdr x7835)))))
                     g7834)))
                 (caaddr
                  (lambda (x)
                    (letrec*
                     ((g7838
                       (letrec*
                        ((x7839
                          (letrec*
                           ((x7840
                             (letrec*
                              ((x7841
                                (begin
                                  (write '(funapp 746 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 746 63))
                                (display "\n")
                                (cdr x7841)))))
                           (begin
                             (write '(funapp 747 28))
                             (display "\n")
                             (car x7840)))))
                        (begin
                          (write '(funapp 748 25))
                          (display "\n")
                          (car x7839)))))
                     g7838)))
                 (eqv?
                  (lambda (x y)
                    (letrec*
                     ((g7842
                       (begin
                         (write '(funapp 750 55))
                         (display "\n")
                         (eq? x y))))
                     g7842)))
                 (>=
                  (lambda (x y)
                    (letrec*
                     ((g7843
                       (letrec*
                        ((x7845
                          (begin
                            (write '(funapp 754 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 754 61))
                          (display "\n")
                          (assert x7845))))
                      (g7844
                       (letrec*
                        ((val7250
                          (begin
                            (write '(funapp 757 35))
                            (display "\n")
                            (> x y))))
                        (letrec*
                         ((g7846
                           (if val7250
                             val7250
                             (letrec*
                              ((val7251
                                (begin
                                  (write '(funapp 763 41))
                                  (display "\n")
                                  (= x y))))
                              (letrec*
                               ((g7847 (if val7251 val7251 #f)))
                               g7847)))))
                         g7846))))
                     g7844)))
                 (call-with-input-file
                  (lambda (filename proc)
                    (letrec*
                     ((g7848
                       (letrec*
                        ((x7851
                          (begin
                            (write '(funapp 773 41))
                            (display "\n")
                            (string? filename))))
                        (begin
                          (write '(funapp 773 62))
                          (display "\n")
                          (assert x7851))))
                      (g7849
                       (letrec*
                        ((x7852
                          (begin
                            (write '(funapp 775 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 775 61))
                          (display "\n")
                          (assert x7852))))
                      (g7850
                       (letrec*
                        ((input-port
                          (begin
                            (write '(funapp 778 38))
                            (display "\n")
                            (open-input-file filename)))
                         (res
                          (begin
                            (write '(funapp 779 31))
                            (display "\n")
                            (proc input-port))))
                        (letrec*
                         ((g7853
                           (begin
                             (write '(funapp 781 34))
                             (display "\n")
                             (close-input-port input-port)))
                          (g7854 res))
                         g7854))))
                     g7850)))
                 (ref
                  (lambda (x)
                    (letrec*
                     ((g7855
                       (begin
                         (write '(funapp 784 52))
                         (display "\n")
                         (cons
                          x
                          (begin
                            (write '(funapp 784 59))
                            (display "\n")
                            '())))))
                     g7855)))
                 (char>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7856
                       (letrec*
                        ((x7859
                          (begin
                            (write '(funapp 788 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 788 60))
                          (display "\n")
                          (assert x7859))))
                      (g7857
                       (letrec*
                        ((x7860
                          (begin
                            (write '(funapp 789 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 789 60))
                          (display "\n")
                          (assert x7860))))
                      (g7858
                       (letrec*
                        ((val7252
                          (begin
                            (write '(funapp 792 35))
                            (display "\n")
                            (char>? c1 c2))))
                        (letrec*
                         ((g7861
                           (if val7252
                             val7252
                             (begin
                               (write '(funapp 794 54))
                               (display "\n")
                               (char=? c1 c2)))))
                         g7861))))
                     g7858)))
                 (cdaar
                  (lambda (x)
                    (letrec*
                     ((g7862
                       (letrec*
                        ((x7863
                          (letrec*
                           ((x7864
                             (begin
                               (write '(funapp 802 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 802 60))
                             (display "\n")
                             (car x7864)))))
                        (begin
                          (write '(funapp 803 25))
                          (display "\n")
                          (cdr x7863)))))
                     g7862)))
                 (cdaddr
                  (lambda (x)
                    (letrec*
                     ((g7865
                       (letrec*
                        ((x7866
                          (letrec*
                           ((x7867
                             (letrec*
                              ((x7868
                                (begin
                                  (write '(funapp 812 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 812 63))
                                (display "\n")
                                (cdr x7868)))))
                           (begin
                             (write '(funapp 813 28))
                             (display "\n")
                             (car x7867)))))
                        (begin
                          (write '(funapp 814 25))
                          (display "\n")
                          (cdr x7866)))))
                     g7865)))
                 (__toplevel_cdr cdr)
                 (cadar
                  (lambda (x)
                    (letrec*
                     ((g7869
                       (letrec*
                        ((x7870
                          (letrec*
                           ((x7871
                             (begin
                               (write '(funapp 822 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 822 60))
                             (display "\n")
                             (cdr x7871)))))
                        (begin
                          (write '(funapp 823 25))
                          (display "\n")
                          (car x7870)))))
                     g7869)))
                 (caadr
                  (lambda (x)
                    (letrec*
                     ((g7872
                       (letrec*
                        ((x7873
                          (letrec*
                           ((x7874
                             (begin
                               (write '(funapp 830 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 830 60))
                             (display "\n")
                             (car x7874)))))
                        (begin
                          (write '(funapp 831 25))
                          (display "\n")
                          (car x7873)))))
                     g7872)))
                 (char-ci>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g7875
                       (letrec*
                        ((x7878
                          (begin
                            (write '(funapp 836 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 836 60))
                          (display "\n")
                          (assert x7878))))
                      (g7876
                       (letrec*
                        ((x7879
                          (begin
                            (write '(funapp 837 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 837 60))
                          (display "\n")
                          (assert x7879))))
                      (g7877
                       (letrec*
                        ((x7880
                          (begin
                            (write '(funapp 839 41))
                            (display "\n")
                            (char-ci<=? c1 c2))))
                        (begin
                          (write '(funapp 839 62))
                          (display "\n")
                          (not x7880)))))
                     g7877)))
                 (__toplevel_set-cdr! set-cdr!)
                 (caaaar
                  (lambda (x)
                    (letrec*
                     ((g7881
                       (letrec*
                        ((x7882
                          (letrec*
                           ((x7883
                             (letrec*
                              ((x7884
                                (begin
                                  (write '(funapp 849 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 849 63))
                                (display "\n")
                                (car x7884)))))
                           (begin
                             (write '(funapp 850 28))
                             (display "\n")
                             (car x7883)))))
                        (begin
                          (write '(funapp 851 25))
                          (display "\n")
                          (car x7882)))))
                     g7881)))
                 (negative?
                  (lambda (x)
                    (letrec*
                     ((g7885
                       (letrec*
                        ((x7887
                          (begin
                            (write '(funapp 856 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 856 61))
                          (display "\n")
                          (assert x7887))))
                      (g7886
                       (begin
                         (write '(funapp 857 30))
                         (display "\n")
                         (< x 0))))
                     g7886)))
                 (memv
                  (lambda (e l)
                    (letrec*
                     ((g7888
                       (begin
                         (write '(funapp 859 55))
                         (display "\n")
                         (memq e l))))
                     g7888)))
                 (caaar
                  (lambda (x)
                    (letrec*
                     ((g7889
                       (letrec*
                        ((x7890
                          (letrec*
                           ((x7891
                             (begin
                               (write '(funapp 865 50))
                               (display "\n")
                               (car x))))
                           (begin
                             (write '(funapp 865 60))
                             (display "\n")
                             (car x7891)))))
                        (begin
                          (write '(funapp 866 25))
                          (display "\n")
                          (car x7890)))))
                     g7889)))
                 (debug
                  (lambda (e)
                    (letrec*
                     ((g7892
                       (begin (write '(funapp 868 53)) (display "\n") '())))
                     g7892)))
                 (reverse
                  (lambda (l)
                    (letrec*
                     ((g7893
                       (letrec*
                        ((x7895
                          (begin
                            (write '(funapp 872 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 872 59))
                          (display "\n")
                          (assert x7895))))
                      (g7894
                       (letrec*
                        ((x-cnd7896
                          (begin
                            (write '(funapp 875 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7896
                          (begin (write '(funapp 877 26)) (display "\n") '())
                          (letrec*
                           ((x7899
                             (letrec*
                              ((x7900
                                (begin
                                  (write '(funapp 879 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 879 63))
                                (display "\n")
                                (reverse x7900))))
                            (x7897
                             (letrec*
                              ((x7898
                                (begin
                                  (write '(funapp 880 53))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 880 63))
                                (display "\n")
                                (list x7898)))))
                           (begin
                             (write '(funapp 881 28))
                             (display "\n")
                             (append x7899 x7897)))))))
                     g7894)))
                 (caaadr
                  (lambda (x)
                    (letrec*
                     ((g7901
                       (letrec*
                        ((x7902
                          (letrec*
                           ((x7903
                             (letrec*
                              ((x7904
                                (begin
                                  (write '(funapp 890 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 890 63))
                                (display "\n")
                                (car x7904)))))
                           (begin
                             (write '(funapp 891 28))
                             (display "\n")
                             (car x7903)))))
                        (begin
                          (write '(funapp 892 25))
                          (display "\n")
                          (car x7902)))))
                     g7901)))
                 (cddadr
                  (lambda (x)
                    (letrec*
                     ((g7905
                       (letrec*
                        ((x7906
                          (letrec*
                           ((x7907
                             (letrec*
                              ((x7908
                                (begin
                                  (write '(funapp 901 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 901 63))
                                (display "\n")
                                (car x7908)))))
                           (begin
                             (write '(funapp 902 28))
                             (display "\n")
                             (cdr x7907)))))
                        (begin
                          (write '(funapp 903 25))
                          (display "\n")
                          (cdr x7906)))))
                     g7905)))
                 (odd?
                  (lambda (x)
                    (letrec*
                     ((g7909
                       (letrec*
                        ((x7911
                          (begin
                            (write '(funapp 908 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 908 61))
                          (display "\n")
                          (assert x7911))))
                      (g7910
                       (letrec*
                        ((x7912
                          (begin
                            (write '(funapp 909 47))
                            (display "\n")
                            (modulo x 2))))
                        (begin
                          (write '(funapp 909 62))
                          (display "\n")
                          (= 1 x7912)))))
                     g7910)))
                 (caadar
                  (lambda (x)
                    (letrec*
                     ((g7913
                       (letrec*
                        ((x7914
                          (letrec*
                           ((x7915
                             (letrec*
                              ((x7916
                                (begin
                                  (write '(funapp 918 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 918 63))
                                (display "\n")
                                (cdr x7916)))))
                           (begin
                             (write '(funapp 919 28))
                             (display "\n")
                             (car x7915)))))
                        (begin
                          (write '(funapp 920 25))
                          (display "\n")
                          (car x7914)))))
                     g7913)))
                 (apply
                  (lambda (proc args)
                    (letrec*
                     ((g7917
                       (letrec*
                        ((x7920
                          (begin
                            (write '(funapp 926 41))
                            (display "\n")
                            (procedure? proc))))
                        (begin
                          (write '(funapp 926 61))
                          (display "\n")
                          (assert x7920))))
                      (g7918
                       (letrec*
                        ((x7921
                          (begin
                            (write '(funapp 927 47))
                            (display "\n")
                            (list? args))))
                        (begin
                          (write '(funapp 927 62))
                          (display "\n")
                          (assert x7921))))
                      (g7919
                       (letrec*
                        ((x-cnd7922
                          (begin
                            (write '(funapp 930 37))
                            (display "\n")
                            (null? args))))
                        (if x-cnd7922
                          (letrec*
                           ((g7923
                             (begin
                               (write '(funapp 932 44))
                               (display "\n")
                               (proc))))
                           g7923)
                          (letrec*
                           ((x-cnd7924
                             (letrec*
                              ((x7925
                                (begin
                                  (write '(funapp 935 47))
                                  (display "\n")
                                  (cdr args))))
                              (begin
                                (write '(funapp 935 60))
                                (display "\n")
                                (null? x7925)))))
                           (if x-cnd7924
                             (letrec*
                              ((g7926
                                (letrec*
                                 ((x7927
                                   (begin
                                     (write '(funapp 939 50))
                                     (display "\n")
                                     (car args))))
                                 (begin
                                   (write '(funapp 939 63))
                                   (display "\n")
                                   (proc x7927)))))
                              g7926)
                             (letrec*
                              ((x-cnd7928
                                (letrec*
                                 ((x7929
                                   (begin
                                     (write '(funapp 943 50))
                                     (display "\n")
                                     (cddr args))))
                                 (begin
                                   (write '(funapp 943 64))
                                   (display "\n")
                                   (null? x7929)))))
                              (if x-cnd7928
                                (letrec*
                                 ((g7930
                                   (letrec*
                                    ((x7932
                                      (begin
                                        (write '(funapp 948 45))
                                        (display "\n")
                                        (car args)))
                                     (x7931
                                      (begin
                                        (write '(funapp 948 64))
                                        (display "\n")
                                        (cadr args))))
                                    (begin
                                      (write '(funapp 949 37))
                                      (display "\n")
                                      (proc x7932 x7931)))))
                                 g7930)
                                (letrec*
                                 ((x-cnd7933
                                   (letrec*
                                    ((x7934
                                      (begin
                                        (write '(funapp 954 45))
                                        (display "\n")
                                        (cdddr args))))
                                    (begin
                                      (write '(funapp 955 37))
                                      (display "\n")
                                      (null? x7934)))))
                                 (if x-cnd7933
                                   (letrec*
                                    ((g7935
                                      (letrec*
                                       ((x7938
                                         (begin
                                           (write '(funapp 960 48))
                                           (display "\n")
                                           (car args)))
                                        (x7937
                                         (begin
                                           (write '(funapp 961 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7936
                                         (begin
                                           (write '(funapp 962 48))
                                           (display "\n")
                                           (caddr args))))
                                       (begin
                                         (write '(funapp 963 40))
                                         (display "\n")
                                         (proc x7938 x7937 x7936)))))
                                    g7935)
                                   (letrec*
                                    ((x-cnd7939
                                      (letrec*
                                       ((x7940
                                         (begin
                                           (write '(funapp 968 48))
                                           (display "\n")
                                           (cddddr args))))
                                       (begin
                                         (write '(funapp 969 40))
                                         (display "\n")
                                         (null? x7940)))))
                                    (if x-cnd7939
                                      (letrec*
                                       ((g7941
                                         (letrec*
                                          ((x7945
                                            (begin
                                              (write '(funapp 974 51))
                                              (display "\n")
                                              (car args)))
                                           (x7944
                                            (begin
                                              (write '(funapp 975 51))
                                              (display "\n")
                                              (cadr args)))
                                           (x7943
                                            (begin
                                              (write '(funapp 976 51))
                                              (display "\n")
                                              (caddr args)))
                                           (x7942
                                            (begin
                                              (write '(funapp 977 51))
                                              (display "\n")
                                              (cadddr args))))
                                          (begin
                                            (write '(funapp 978 43))
                                            (display "\n")
                                            (proc x7945 x7944 x7943 x7942)))))
                                       g7941)
                                      (letrec*
                                       ((x-cnd7946
                                         (letrec*
                                          ((x7947
                                            (letrec*
                                             ((x7948
                                               (begin
                                                 (write '(funapp 985 54))
                                                 (display "\n")
                                                 (cddddr args))))
                                             (begin
                                               (write '(funapp 986 46))
                                               (display "\n")
                                               (cdr x7948)))))
                                          (begin
                                            (write '(funapp 987 43))
                                            (display "\n")
                                            (null? x7947)))))
                                       (if x-cnd7946
                                         (letrec*
                                          ((g7949
                                            (letrec*
                                             ((x7955
                                               (begin
                                                 (write '(funapp 992 54))
                                                 (display "\n")
                                                 (car args)))
                                              (x7954
                                               (begin
                                                 (write '(funapp 993 54))
                                                 (display "\n")
                                                 (cadr args)))
                                              (x7953
                                               (begin
                                                 (write '(funapp 994 54))
                                                 (display "\n")
                                                 (caddr args)))
                                              (x7952
                                               (begin
                                                 (write '(funapp 995 54))
                                                 (display "\n")
                                                 (cadddr args)))
                                              (x7950
                                               (letrec*
                                                ((x7951
                                                  (begin
                                                    (write '(funapp 998 57))
                                                    (display "\n")
                                                    (cddddr args))))
                                                (begin
                                                  (write '(funapp 999 49))
                                                  (display "\n")
                                                  (car x7951)))))
                                             (begin
                                               (write '(funapp 1000 46))
                                               (display "\n")
                                               (proc
                                                x7955
                                                x7954
                                                x7953
                                                x7952
                                                x7950)))))
                                          g7949)
                                         (letrec*
                                          ((x-cnd7956
                                            (letrec*
                                             ((x7957
                                               (letrec*
                                                ((x7958
                                                  (begin
                                                    (write '(funapp 1012 57))
                                                    (display "\n")
                                                    (cddddr args))))
                                                (begin
                                                  (write '(funapp 1013 49))
                                                  (display "\n")
                                                  (cddr x7958)))))
                                             (begin
                                               (write '(funapp 1014 46))
                                               (display "\n")
                                               (null? x7957)))))
                                          (if x-cnd7956
                                            (letrec*
                                             ((g7959
                                               (letrec*
                                                ((x7967
                                                  (begin
                                                    (write '(funapp 1019 57))
                                                    (display "\n")
                                                    (car args)))
                                                 (x7966
                                                  (begin
                                                    (write '(funapp 1020 57))
                                                    (display "\n")
                                                    (cadr args)))
                                                 (x7965
                                                  (begin
                                                    (write '(funapp 1021 57))
                                                    (display "\n")
                                                    (caddr args)))
                                                 (x7964
                                                  (begin
                                                    (write '(funapp 1022 57))
                                                    (display "\n")
                                                    (cadddr args)))
                                                 (x7962
                                                  (letrec*
                                                   ((x7963
                                                     (begin
                                                       (write
                                                        '(funapp 1025 60))
                                                       (display "\n")
                                                       (cddddr args))))
                                                   (begin
                                                     (write '(funapp 1026 52))
                                                     (display "\n")
                                                     (car x7963))))
                                                 (x7960
                                                  (letrec*
                                                   ((x7961
                                                     (begin
                                                       (write
                                                        '(funapp 1029 60))
                                                       (display "\n")
                                                       (cddddr args))))
                                                   (begin
                                                     (write '(funapp 1030 52))
                                                     (display "\n")
                                                     (cadr x7961)))))
                                                (begin
                                                  (write '(funapp 1031 49))
                                                  (display "\n")
                                                  (proc
                                                   x7967
                                                   x7966
                                                   x7965
                                                   x7964
                                                   x7962
                                                   x7960)))))
                                             g7959)
                                            (letrec*
                                             ((x-cnd7968
                                               (letrec*
                                                ((x7969
                                                  (letrec*
                                                   ((x7970
                                                     (begin
                                                       (write
                                                        '(funapp 1044 60))
                                                       (display "\n")
                                                       (cddddr args))))
                                                   (begin
                                                     (write '(funapp 1045 52))
                                                     (display "\n")
                                                     (cdddr x7970)))))
                                                (begin
                                                  (write '(funapp 1046 49))
                                                  (display "\n")
                                                  (null? x7969)))))
                                             (if x-cnd7968
                                               (letrec*
                                                ((g7971
                                                  (letrec*
                                                   ((x7981
                                                     (begin
                                                       (write
                                                        '(funapp 1051 60))
                                                       (display "\n")
                                                       (car args)))
                                                    (x7980
                                                     (begin
                                                       (write
                                                        '(funapp 1052 60))
                                                       (display "\n")
                                                       (cadr args)))
                                                    (x7979
                                                     (begin
                                                       (write
                                                        '(funapp 1053 60))
                                                       (display "\n")
                                                       (caddr args)))
                                                    (x7978
                                                     (begin
                                                       (write
                                                        '(funapp 1054 60))
                                                       (display "\n")
                                                       (cadddr args)))
                                                    (x7976
                                                     (letrec*
                                                      ((x7977
                                                        (begin
                                                          (write
                                                           '(funapp 1057 63))
                                                          (display "\n")
                                                          (cddddr args))))
                                                      (begin
                                                        (write
                                                         '(funapp 1058 55))
                                                        (display "\n")
                                                        (car x7977))))
                                                    (x7974
                                                     (letrec*
                                                      ((x7975
                                                        (begin
                                                          (write
                                                           '(funapp 1061 63))
                                                          (display "\n")
                                                          (cddddr args))))
                                                      (begin
                                                        (write
                                                         '(funapp 1062 55))
                                                        (display "\n")
                                                        (cadr x7975))))
                                                    (x7972
                                                     (letrec*
                                                      ((x7973
                                                        (begin
                                                          (write
                                                           '(funapp 1065 63))
                                                          (display "\n")
                                                          (cddddr args))))
                                                      (begin
                                                        (write
                                                         '(funapp 1066 55))
                                                        (display "\n")
                                                        (caddr x7973)))))
                                                   (begin
                                                     (write '(funapp 1067 52))
                                                     (display "\n")
                                                     (proc
                                                      x7981
                                                      x7980
                                                      x7979
                                                      x7978
                                                      x7976
                                                      x7974
                                                      x7972)))))
                                                g7971)
                                               (letrec*
                                                ((g7982
                                                  (begin
                                                    (write '(funapp 1078 51))
                                                    (display "\n")
                                                    (error
                                                     "Unsupported call."))))
                                                g7982)))))))))))))))))))
                     g7919)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7983
                       (letrec*
                        ((x7985
                          (begin
                            (write '(funapp 1084 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1084 59))
                          (display "\n")
                          (assert x7985))))
                      (g7984
                       (letrec*
                        ((x-cnd7986
                          (begin
                            (write '(funapp 1087 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7986
                          #f
                          (letrec*
                           ((x-cnd7987
                             (letrec*
                              ((x7988
                                (begin
                                  (write '(funapp 1092 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1092 57))
                                (display "\n")
                                (equal? x7988 e)))))
                           (if x-cnd7987
                             l
                             (letrec*
                              ((x7989
                                (begin
                                  (write '(funapp 1095 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1095 57))
                                (display "\n")
                                (member e x7989)))))))))
                     g7984)))
                 (cddddr
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
                                  (write '(funapp 1104 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1104 63))
                                (display "\n")
                                (cdr x7993)))))
                           (begin
                             (write '(funapp 1105 28))
                             (display "\n")
                             (cdr x7992)))))
                        (begin
                          (write '(funapp 1106 25))
                          (display "\n")
                          (cdr x7991)))))
                     g7990)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7994
                       (letrec*
                        ((x7995
                          (letrec*
                           ((x7996
                             (letrec*
                              ((x7997
                                (begin
                                  (write '(funapp 1115 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1115 63))
                                (display "\n")
                                (cdr x7997)))))
                           (begin
                             (write '(funapp 1116 28))
                             (display "\n")
                             (cdr x7996)))))
                        (begin
                          (write '(funapp 1117 25))
                          (display "\n")
                          (car x7995)))))
                     g7994)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7998
                       (begin
                         (write '(funapp 1119 55))
                         (display "\n")
                         (random 42))))
                     g7998)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7999
                       (letrec*
                        ((x8001
                          (begin
                            (write '(funapp 1123 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1123 61))
                          (display "\n")
                          (assert x8001))))
                      (g8000
                       (begin
                         (write '(funapp 1124 30))
                         (display "\n")
                         (= x 0))))
                     g8000)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g8002
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1131 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g8003
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1133 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g8003))))
                     g8002)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g8004
                       (letrec*
                        ((x8005
                          (begin
                            (write '(funapp 1139 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1139 57))
                          (display "\n")
                          (car x8005)))))
                     g8004)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g8006
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x8009
                             (begin
                               (write '(funapp 1149 36))
                               (display "\n")
                               (pair? l)))
                            (x8007
                             (letrec*
                              ((x8008
                                (begin
                                  (write '(funapp 1150 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1150 63))
                                (display "\n")
                                (list? x8008)))))
                           (begin
                             (write '(funapp 1151 28))
                             (display "\n")
                             (and x8009 x8007)))))
                        (letrec*
                         ((g8010
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1153 54))
                               (display "\n")
                               (null? l)))))
                         g8010))))
                     g8006)))
                 (cddaar
                  (lambda (x)
                    (letrec*
                     ((g8011
                       (letrec*
                        ((x8012
                          (letrec*
                           ((x8013
                             (letrec*
                              ((x8014
                                (begin
                                  (write '(funapp 1163 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1163 63))
                                (display "\n")
                                (car x8014)))))
                           (begin
                             (write '(funapp 1164 28))
                             (display "\n")
                             (cdr x8013)))))
                        (begin
                          (write '(funapp 1165 25))
                          (display "\n")
                          (cdr x8012)))))
                     g8011)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g8015
                       (letrec*
                        ((x-cnd8016
                          (letrec*
                           ((x8017 #\0))
                           (begin
                             (write '(funapp 1172 60))
                             (display "\n")
                             (char<=? x8017 c)))))
                        (if x-cnd8016
                          (letrec*
                           ((x8018 #\9))
                           (begin
                             (write '(funapp 1174 50))
                             (display "\n")
                             (char<=? c x8018)))
                          #f))))
                     g8015)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g8019
                       (letrec*
                        ((x8021
                          (begin
                            (write '(funapp 1181 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1181 59))
                          (display "\n")
                          (assert x8021))))
                      (g8020
                       (letrec*
                        ((x-cnd8022
                          (begin
                            (write '(funapp 1184 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8022
                          #f
                          (letrec*
                           ((x-cnd8023
                             (letrec*
                              ((x8024
                                (begin
                                  (write '(funapp 1189 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1189 58))
                                (display "\n")
                                (eqv? x8024 k)))))
                           (if x-cnd8023
                             (begin
                               (write '(funapp 1191 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x8025
                                (begin
                                  (write '(funapp 1192 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1192 57))
                                (display "\n")
                                (assq k x8025)))))))))
                     g8020)))
                 (not (lambda (x) (letrec* ((g8026 (if x #f #t))) g8026)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g8027
                       (begin
                         (write '(funapp 1196 52))
                         (display "\n")
                         (append l1 l2))))
                     g8027)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g8028
                       (letrec*
                        ((x8030
                          (begin
                            (write '(funapp 1200 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1200 59))
                          (display "\n")
                          (assert x8030))))
                      (g8029
                       (letrec*
                        ((x-cnd8031
                          (begin
                            (write '(funapp 1203 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8031
                          #f
                          (letrec*
                           ((x-cnd8032
                             (letrec*
                              ((x8033
                                (begin
                                  (write '(funapp 1208 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1208 57))
                                (display "\n")
                                (eq? x8033 e)))))
                           (if x-cnd8032
                             l
                             (letrec*
                              ((x8034
                                (begin
                                  (write '(funapp 1211 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1211 57))
                                (display "\n")
                                (memq e x8034)))))))))
                     g8029)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g8035
                       (letrec*
                        ((x8036
                          (letrec*
                           ((x8037
                             (letrec*
                              ((x8038
                                (begin
                                  (write '(funapp 1220 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1220 63))
                                (display "\n")
                                (car x8038)))))
                           (begin
                             (write '(funapp 1221 28))
                             (display "\n")
                             (cdr x8037)))))
                        (begin
                          (write '(funapp 1222 25))
                          (display "\n")
                          (car x8036)))))
                     g8035)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g8039
                       (letrec*
                        ((x8041
                          (begin
                            (write '(funapp 1227 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1227 59))
                          (display "\n")
                          (assert x8041))))
                      (g8040
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g8042
                               (letrec*
                                ((x-cnd8043
                                  (begin
                                    (write '(funapp 1235 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd8043
                                  0
                                  (letrec*
                                   ((x8044
                                     (letrec*
                                      ((x8045
                                        (begin
                                          (write '(funapp 1240 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1240 65))
                                        (display "\n")
                                        (rec x8045)))))
                                   (begin
                                     (write '(funapp 1241 36))
                                     (display "\n")
                                     (+ 1 x8044)))))))
                             g8042))))
                        (letrec*
                         ((g8046
                           (begin
                             (write '(funapp 1243 42))
                             (display "\n")
                             (rec l))))
                         g8046))))
                     g8040)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8047
                       (letrec*
                        ((x8050
                          (begin
                            (write '(funapp 1248 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1248 60))
                          (display "\n")
                          (assert x8050))))
                      (g8048
                       (letrec*
                        ((x8051
                          (begin
                            (write '(funapp 1249 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1249 60))
                          (display "\n")
                          (assert x8051))))
                      (g8049
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1252 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g8052
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1254 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g8052))))
                     g8049)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g8053
                       (letrec*
                        ((x8054
                          (begin
                            (write '(funapp 1261 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1261 61))
                          (display "\n")
                          (not x8054)))))
                     g8053)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g8055
                       (letrec*
                        ((x8056
                          (letrec*
                           ((x8057
                             (begin
                               (write '(funapp 1268 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1268 60))
                             (display "\n")
                             (car x8057)))))
                        (begin
                          (write '(funapp 1269 25))
                          (display "\n")
                          (cdr x8056)))))
                     g8055)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g8058
                       (letrec*
                        ((x8060
                          (begin
                            (write '(funapp 1274 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1274 59))
                          (display "\n")
                          (assert x8060))))
                      (g8059
                       (letrec*
                        ((x-cnd8061
                          (begin
                            (write '(funapp 1277 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8061
                          #f
                          (letrec*
                           ((x-cnd8062
                             (letrec*
                              ((x8063
                                (begin
                                  (write '(funapp 1282 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1282 58))
                                (display "\n")
                                (equal? x8063 k)))))
                           (if x-cnd8062
                             (begin
                               (write '(funapp 1284 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x8064
                                (begin
                                  (write '(funapp 1285 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1285 57))
                                (display "\n")
                                (assoc k x8064)))))))))
                     g8059)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g8065
                       (letrec*
                        ((x8066
                          (begin
                            (write '(funapp 1290 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1290 57))
                          (display "\n")
                          (car x8066)))))
                     g8065)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8067
                       (letrec*
                        ((x8070
                          (begin
                            (write '(funapp 1295 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1295 60))
                          (display "\n")
                          (assert x8070))))
                      (g8068
                       (letrec*
                        ((x8071
                          (begin
                            (write '(funapp 1296 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1296 60))
                          (display "\n")
                          (assert x8071))))
                      (g8069
                       (letrec*
                        ((x8072
                          (begin
                            (write '(funapp 1297 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1297 65))
                          (display "\n")
                          (not x8072)))))
                     g8069)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g8073
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1304 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g8074
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1306 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g8074))))
                     g8073)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g8075
                       (letrec*
                        ((x8078
                          (begin
                            (write '(funapp 1312 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1312 64))
                          (display "\n")
                          (assert x8078))))
                      (g8076
                       (letrec*
                        ((x8079
                          (begin
                            (write '(funapp 1313 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1313 59))
                          (display "\n")
                          (assert x8079))))
                      (g8077
                       (letrec*
                        ((x-cnd8080
                          (begin
                            (write '(funapp 1316 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8080
                          #t
                          (letrec*
                           ((x-cnd8081
                             (begin
                               (write '(funapp 1320 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd8081
                             (letrec*
                              ((g8082
                                (letrec*
                                 ((x8084
                                   (begin
                                     (write '(funapp 1323 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1323 66))
                                   (display "\n")
                                   (f x8084))))
                               (g8083
                                (letrec*
                                 ((x8085
                                   (begin
                                     (write '(funapp 1326 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1327 34))
                                   (display "\n")
                                   (for-each f x8085)))))
                              g8083)
                             (begin
                               (write '(funapp 1329 29))
                               (display "\n")
                               '())))))))
                     g8077)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g8086
                       (letrec*
                        ((x8088
                          (begin
                            (write '(funapp 1334 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1334 61))
                          (display "\n")
                          (assert x8088))))
                      (g8087
                       (letrec*
                        ((x-cnd8089
                          (begin
                            (write '(funapp 1337 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd8089
                          (begin
                            (write '(funapp 1338 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g8087)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8090
                       (letrec*
                        ((x8093
                          (begin
                            (write '(funapp 1343 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1343 60))
                          (display "\n")
                          (assert x8093))))
                      (g8091
                       (letrec*
                        ((x8094
                          (begin
                            (write '(funapp 1344 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1344 60))
                          (display "\n")
                          (assert x8094))))
                      (g8092
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1347 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g8095
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1349 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g8095))))
                     g8092)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g8096
                       (letrec*
                        ((x8097
                          (letrec*
                           ((x8098
                             (letrec*
                              ((x8099
                                (begin
                                  (write '(funapp 1359 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1359 63))
                                (display "\n")
                                (cdr x8099)))))
                           (begin
                             (write '(funapp 1360 28))
                             (display "\n")
                             (cdr x8098)))))
                        (begin
                          (write '(funapp 1361 25))
                          (display "\n")
                          (car x8097)))))
                     g8096)))
                 (newline (lambda () (letrec* ((g8100 #f)) g8100)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g8101
                       (letrec*
                        ((x8103
                          (letrec*
                           ((x8104
                             (begin
                               (write '(funapp 1369 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1369 60))
                             (display "\n")
                             (abs x8104))))
                         (x8102
                          (begin
                            (write '(funapp 1370 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1371 25))
                          (display "\n")
                          (/ x8103 x8102)))))
                     g8101)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g8105
                       (letrec*
                        ((x8107
                          (begin
                            (write '(funapp 1377 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1377 61))
                          (display "\n")
                          (assert x8107))))
                      (g8106
                       (letrec*
                        ((x8108
                          (begin
                            (write '(funapp 1378 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1378 58))
                          (display "\n")
                          (not x8108)))))
                     g8106)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g8109
                       (letrec*
                        ((x8113
                          (begin
                            (write '(funapp 1383 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1383 59))
                          (display "\n")
                          (assert x8113))))
                      (g8110
                       (letrec*
                        ((x8114
                          (begin
                            (write '(funapp 1385 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1385 59))
                          (display "\n")
                          (assert x8114))))
                      (g8111
                       (letrec*
                        ((x8115
                          (letrec*
                           ((x8116
                             (begin
                               (write '(funapp 1389 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1389 57))
                             (display "\n")
                             (< index x8116)))))
                        (begin
                          (write '(funapp 1390 25))
                          (display "\n")
                          (assert x8115))))
                      (g8112
                       (letrec*
                        ((x-cnd8117
                          (begin
                            (write '(funapp 1393 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd8117
                          (begin
                            (write '(funapp 1395 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x8119
                             (begin
                               (write '(funapp 1397 36))
                               (display "\n")
                               (cdr l)))
                            (x8118
                             (begin
                               (write '(funapp 1397 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1398 28))
                             (display "\n")
                             (list-ref x8119 x8118)))))))
                     g8112)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g8120
                       (letrec*
                        ((x-cnd8121
                          (begin
                            (write '(funapp 1405 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd8121
                          a
                          (letrec*
                           ((x8122
                             (begin
                               (write '(funapp 1408 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1408 59))
                             (display "\n")
                             (gcd b x8122)))))))
                     g8120)))
                 (block
                  (lambda (x7571 y7572 color7573)
                    (letrec*
                     ((g8123
                       (letrec*
                        ((x8124
                          (letrec*
                           ((x8125
                             (letrec*
                              ((x8126
                                (begin
                                  (write '(funapp 1419 39))
                                  (display "\n")
                                  (cons
                                   color7573
                                   (begin
                                     (write '(funapp 1419 54))
                                     (display "\n")
                                     '())))))
                              (begin
                                (write '(funapp 1420 31))
                                (display "\n")
                                (cons y7572 x8126)))))
                           (begin
                             (write '(funapp 1421 28))
                             (display "\n")
                             (cons x7571 x8125)))))
                        (begin
                          (write '(funapp 1422 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1422 30))
                             (display "\n")
                             'block)
                           x8124)))))
                     g8123)))
                 (block?
                  (lambda (block7570)
                    (letrec*
                     ((g8127
                       (letrec*
                        ((x8128
                          (begin
                            (write '(funapp 1428 41))
                            (display "\n")
                            (car block7570))))
                        (begin
                          (write '(funapp 1428 59))
                          (display "\n")
                          (eq?
                           x8128
                           (begin
                             (write '(funapp 1428 69))
                             (display "\n")
                             'block))))))
                     g8127)))
                 (block-x
                  (lambda (block)
                    (letrec*
                     ((g8129
                       (letrec*
                        ((x8130
                          (begin
                            (write '(funapp 1433 47))
                            (display "\n")
                            (cdr block))))
                        (begin
                          (write '(funapp 1433 61))
                          (display "\n")
                          (car x8130)))))
                     g8129)))
                 (block-y
                  (lambda (block)
                    (letrec*
                     ((g8131
                       (letrec*
                        ((x8132
                          (letrec*
                           ((x8133
                             (begin
                               (write '(funapp 1440 50))
                               (display "\n")
                               (cdr block))))
                           (begin
                             (write '(funapp 1440 64))
                             (display "\n")
                             (cdr x8133)))))
                        (begin
                          (write '(funapp 1441 25))
                          (display "\n")
                          (car x8132)))))
                     g8131)))
                 (block-color
                  (lambda (block)
                    (letrec*
                     ((g8134
                       (letrec*
                        ((x8135
                          (letrec*
                           ((x8136
                             (letrec*
                              ((x8137
                                (begin
                                  (write '(funapp 1451 47))
                                  (display "\n")
                                  (cdr block))))
                              (begin
                                (write '(funapp 1451 61))
                                (display "\n")
                                (cdr x8137)))))
                           (begin
                             (write '(funapp 1452 28))
                             (display "\n")
                             (cdr x8136)))))
                        (begin
                          (write '(funapp 1453 25))
                          (display "\n")
                          (car x8135)))))
                     g8134)))
                 (tetra
                  (lambda (center7578 blocks7579)
                    (letrec*
                     ((g8138
                       (letrec*
                        ((x8139
                          (letrec*
                           ((x8140
                             (begin
                               (write '(funapp 1462 36))
                               (display "\n")
                               (cons
                                blocks7579
                                (begin
                                  (write '(funapp 1462 52))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1463 28))
                             (display "\n")
                             (cons center7578 x8140)))))
                        (begin
                          (write '(funapp 1464 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1464 30))
                             (display "\n")
                             'tetra)
                           x8139)))))
                     g8138)))
                 (tetra?
                  (lambda (tetra7577)
                    (letrec*
                     ((g8141
                       (letrec*
                        ((x8142
                          (begin
                            (write '(funapp 1470 41))
                            (display "\n")
                            (car tetra7577))))
                        (begin
                          (write '(funapp 1470 59))
                          (display "\n")
                          (eq?
                           x8142
                           (begin
                             (write '(funapp 1470 69))
                             (display "\n")
                             'tetra))))))
                     g8141)))
                 (tetra-center
                  (lambda (tetra)
                    (letrec*
                     ((g8143
                       (letrec*
                        ((x8144
                          (begin
                            (write '(funapp 1475 47))
                            (display "\n")
                            (cdr tetra))))
                        (begin
                          (write '(funapp 1475 61))
                          (display "\n")
                          (car x8144)))))
                     g8143)))
                 (tetra-blocks
                  (lambda (tetra)
                    (letrec*
                     ((g8145
                       (letrec*
                        ((x8146
                          (letrec*
                           ((x8147
                             (begin
                               (write '(funapp 1482 50))
                               (display "\n")
                               (cdr tetra))))
                           (begin
                             (write '(funapp 1482 64))
                             (display "\n")
                             (cdr x8147)))))
                        (begin
                          (write '(funapp 1483 25))
                          (display "\n")
                          (car x8146)))))
                     g8145)))
                 (world
                  (lambda (tetra7583 blocks7584)
                    (letrec*
                     ((g8148
                       (letrec*
                        ((x8149
                          (letrec*
                           ((x8150
                             (begin
                               (write '(funapp 1492 36))
                               (display "\n")
                               (cons
                                blocks7584
                                (begin
                                  (write '(funapp 1492 52))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1493 28))
                             (display "\n")
                             (cons tetra7583 x8150)))))
                        (begin
                          (write '(funapp 1494 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1494 30))
                             (display "\n")
                             'world)
                           x8149)))))
                     g8148)))
                 (world?
                  (lambda (world7582)
                    (letrec*
                     ((g8151
                       (letrec*
                        ((x8152
                          (begin
                            (write '(funapp 1500 41))
                            (display "\n")
                            (car world7582))))
                        (begin
                          (write '(funapp 1500 59))
                          (display "\n")
                          (eq?
                           x8152
                           (begin
                             (write '(funapp 1500 69))
                             (display "\n")
                             'world))))))
                     g8151)))
                 (world-tetra
                  (lambda (world)
                    (letrec*
                     ((g8153
                       (letrec*
                        ((x8154
                          (begin
                            (write '(funapp 1505 47))
                            (display "\n")
                            (cdr world))))
                        (begin
                          (write '(funapp 1505 61))
                          (display "\n")
                          (car x8154)))))
                     g8153)))
                 (world-blocks
                  (lambda (world)
                    (letrec*
                     ((g8155
                       (letrec*
                        ((x8156
                          (letrec*
                           ((x8157
                             (begin
                               (write '(funapp 1512 50))
                               (display "\n")
                               (cdr world))))
                           (begin
                             (write '(funapp 1512 64))
                             (display "\n")
                             (cdr x8157)))))
                        (begin
                          (write '(funapp 1513 25))
                          (display "\n")
                          (car x8156)))))
                     g8155)))
                 (posn
                  (lambda (x7588 y7589)
                    (letrec*
                     ((g8158
                       (letrec*
                        ((x8159
                          (letrec*
                           ((x8160
                             (begin
                               (write '(funapp 1522 36))
                               (display "\n")
                               (cons
                                y7589
                                (begin
                                  (write '(funapp 1522 47))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1523 28))
                             (display "\n")
                             (cons x7588 x8160)))))
                        (begin
                          (write '(funapp 1524 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1524 30))
                             (display "\n")
                             'posn)
                           x8159)))))
                     g8158)))
                 (posn?
                  (lambda (posn7587)
                    (letrec*
                     ((g8161
                       (letrec*
                        ((x8162
                          (begin
                            (write '(funapp 1530 41))
                            (display "\n")
                            (car posn7587))))
                        (begin
                          (write '(funapp 1530 58))
                          (display "\n")
                          (eq?
                           x8162
                           (begin
                             (write '(funapp 1530 68))
                             (display "\n")
                             'posn))))))
                     g8161)))
                 (posn-x
                  (lambda (posn)
                    (letrec*
                     ((g8163
                       (letrec*
                        ((x8164
                          (begin
                            (write '(funapp 1535 47))
                            (display "\n")
                            (cdr posn))))
                        (begin
                          (write '(funapp 1535 60))
                          (display "\n")
                          (car x8164)))))
                     g8163)))
                 (posn-y
                  (lambda (posn)
                    (letrec*
                     ((g8165
                       (letrec*
                        ((x8166
                          (letrec*
                           ((x8167
                             (begin
                               (write '(funapp 1542 50))
                               (display "\n")
                               (cdr posn))))
                           (begin
                             (write '(funapp 1542 63))
                             (display "\n")
                             (cdr x8167)))))
                        (begin
                          (write '(funapp 1543 25))
                          (display "\n")
                          (car x8166)))))
                     g8165)))
                 (COLOR/C symbol?)
                 (POSN/C
                  (lambda (j7329 k7330 v7328)
                    (letrec*
                     ((g8168
                       (letrec*
                        ((checked7331
                          (letrec*
                           ((x8169
                             (begin
                               (write '(funapp 1553 36))
                               (display "\n")
                               (car v7328))))
                           (begin
                             (write '(funapp 1554 28))
                             (display "\n")
                             (real?/c j7329 k7330 x8169)))))
                        (letrec*
                         ((g8170
                           (letrec*
                            ((checked7332
                              (letrec*
                               ((x8171
                                 (letrec*
                                  ((x8172
                                    (begin
                                      (write '(funapp 1561 51))
                                      (display "\n")
                                      (cdr v7328))))
                                  (begin
                                    (write '(funapp 1561 65))
                                    (display "\n")
                                    (car x8172)))))
                               (begin
                                 (write '(funapp 1562 32))
                                 (display "\n")
                                 (real?/c j7329 k7330 x8171)))))
                            (letrec*
                             ((g8173
                               (letrec*
                                ((x8174
                                  (letrec*
                                   ((x8175
                                     (begin
                                       (write '(funapp 1568 44))
                                       (display "\n")
                                       (cons
                                        checked7332
                                        (begin
                                          (write '(funapp 1568 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1569 36))
                                     (display "\n")
                                     (cons checked7331 x8175)))))
                                (begin
                                  (write '(funapp 1570 33))
                                  (display "\n")
                                  (cons posn x8174)))))
                             g8173))))
                         g8170))))
                     g8168)))
                 (BLOCK/C
                  (lambda (j7335 k7336 v7334)
                    (letrec*
                     ((g8176
                       (letrec*
                        ((checked7337
                          (letrec*
                           ((x8177
                             (begin
                               (write '(funapp 1581 36))
                               (display "\n")
                               (car v7334))))
                           (begin
                             (write '(funapp 1582 28))
                             (display "\n")
                             (real?/c j7335 k7336 x8177)))))
                        (letrec*
                         ((g8178
                           (letrec*
                            ((checked7338
                              (letrec*
                               ((x8179
                                 (letrec*
                                  ((x8180
                                    (begin
                                      (write '(funapp 1589 51))
                                      (display "\n")
                                      (cdr v7334))))
                                  (begin
                                    (write '(funapp 1589 65))
                                    (display "\n")
                                    (car x8180)))))
                               (begin
                                 (write '(funapp 1590 32))
                                 (display "\n")
                                 (real?/c j7335 k7336 x8179)))))
                            (letrec*
                             ((g8181
                               (letrec*
                                ((checked7339
                                  (letrec*
                                   ((x8182
                                     (letrec*
                                      ((x8183
                                        (letrec*
                                         ((x8184
                                           (begin
                                             (write '(funapp 1600 50))
                                             (display "\n")
                                             (cdr v7334))))
                                         (begin
                                           (write '(funapp 1601 42))
                                           (display "\n")
                                           (cdr x8184)))))
                                      (begin
                                        (write '(funapp 1602 39))
                                        (display "\n")
                                        (car x8183)))))
                                   (begin
                                     (write '(funapp 1603 36))
                                     (display "\n")
                                     (COLOR/C j7335 k7336 x8182)))))
                                (letrec*
                                 ((g8185
                                   (letrec*
                                    ((x8186
                                      (letrec*
                                       ((x8187
                                         (letrec*
                                          ((x8188
                                            (begin
                                              (write '(funapp 1611 51))
                                              (display "\n")
                                              (cons
                                               checked7339
                                               (begin
                                                 (write '(funapp 1611 68))
                                                 (display "\n")
                                                 '())))))
                                          (begin
                                            (write '(funapp 1612 43))
                                            (display "\n")
                                            (cons checked7338 x8188)))))
                                       (begin
                                         (write '(funapp 1613 40))
                                         (display "\n")
                                         (cons checked7337 x8187)))))
                                    (begin
                                      (write '(funapp 1614 37))
                                      (display "\n")
                                      (cons block x8186)))))
                                 g8185))))
                             g8181))))
                         g8178))))
                     g8176)))
                 (BSET/C
                  (begin
                    (write '(funapp 1619 26))
                    (display "\n")
                    (listof BLOCK/C)))
                 (TETRA/C
                  (lambda (j7342 k7343 v7341)
                    (letrec*
                     ((g8189
                       (letrec*
                        ((checked7344
                          (letrec*
                           ((x8190
                             (begin
                               (write '(funapp 1627 36))
                               (display "\n")
                               (car v7341))))
                           (begin
                             (write '(funapp 1628 28))
                             (display "\n")
                             (POSN/C j7342 k7343 x8190)))))
                        (letrec*
                         ((g8191
                           (letrec*
                            ((checked7345
                              (letrec*
                               ((x8192
                                 (letrec*
                                  ((x8193
                                    (begin
                                      (write '(funapp 1635 51))
                                      (display "\n")
                                      (cdr v7341))))
                                  (begin
                                    (write '(funapp 1635 65))
                                    (display "\n")
                                    (car x8193)))))
                               (begin
                                 (write '(funapp 1636 32))
                                 (display "\n")
                                 (BSET/C j7342 k7343 x8192)))))
                            (letrec*
                             ((g8194
                               (letrec*
                                ((x8195
                                  (letrec*
                                   ((x8196
                                     (begin
                                       (write '(funapp 1642 44))
                                       (display "\n")
                                       (cons
                                        checked7345
                                        (begin
                                          (write '(funapp 1642 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1643 36))
                                     (display "\n")
                                     (cons checked7344 x8196)))))
                                (begin
                                  (write '(funapp 1644 33))
                                  (display "\n")
                                  (cons tetra x8195)))))
                             g8194))))
                         g8191))))
                     g8189)))
                 (WORLD/C
                  (lambda (j7348 k7349 v7347)
                    (letrec*
                     ((g8197
                       (letrec*
                        ((checked7350
                          (letrec*
                           ((x8198
                             (begin
                               (write '(funapp 1655 36))
                               (display "\n")
                               (car v7347))))
                           (begin
                             (write '(funapp 1656 28))
                             (display "\n")
                             (TETRA/C j7348 k7349 x8198)))))
                        (letrec*
                         ((g8199
                           (letrec*
                            ((checked7351
                              (letrec*
                               ((x8200
                                 (letrec*
                                  ((x8201
                                    (begin
                                      (write '(funapp 1663 51))
                                      (display "\n")
                                      (cdr v7347))))
                                  (begin
                                    (write '(funapp 1663 65))
                                    (display "\n")
                                    (car x8201)))))
                               (begin
                                 (write '(funapp 1664 32))
                                 (display "\n")
                                 (BSET/C j7348 k7349 x8200)))))
                            (letrec*
                             ((g8202
                               (letrec*
                                ((x8203
                                  (letrec*
                                   ((x8204
                                     (begin
                                       (write '(funapp 1670 44))
                                       (display "\n")
                                       (cons
                                        checked7351
                                        (begin
                                          (write '(funapp 1670 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1671 36))
                                     (display "\n")
                                     (cons checked7350 x8204)))))
                                (begin
                                  (write '(funapp 1672 33))
                                  (display "\n")
                                  (cons world x8203)))))
                             g8202))))
                         g8199))))
                     g8197)))
                 (posn=?
                  (lambda (p1 p2)
                    (letrec*
                     ((g8205
                       (letrec*
                        ((x-cnd8206
                          (letrec*
                           ((x8208
                             (begin
                               (write '(funapp 1683 36))
                               (display "\n")
                               (posn-x p1)))
                            (x8207
                             (begin
                               (write '(funapp 1683 56))
                               (display "\n")
                               (posn-x p2))))
                           (begin
                             (write '(funapp 1684 28))
                             (display "\n")
                             (= x8208 x8207)))))
                        (if x-cnd8206
                          (letrec*
                           ((x8210
                             (begin
                               (write '(funapp 1687 36))
                               (display "\n")
                               (posn-y p1)))
                            (x8209
                             (begin
                               (write '(funapp 1687 56))
                               (display "\n")
                               (posn-y p2))))
                           (begin
                             (write '(funapp 1688 28))
                             (display "\n")
                             (= x8210 x8209)))
                          #f))))
                     g8205)))
                 (block-size 20)
                 (board-height 20)
                 (board-width 10)
                 (block=?
                  (lambda (b1 b2)
                    (letrec*
                     ((g8211
                       (letrec*
                        ((x-cnd8212
                          (letrec*
                           ((x8214
                             (begin
                               (write '(funapp 1701 36))
                               (display "\n")
                               (block-x b1)))
                            (x8213
                             (begin
                               (write '(funapp 1701 57))
                               (display "\n")
                               (block-x b2))))
                           (begin
                             (write '(funapp 1702 28))
                             (display "\n")
                             (= x8214 x8213)))))
                        (if x-cnd8212
                          (letrec*
                           ((x8216
                             (begin
                               (write '(funapp 1705 36))
                               (display "\n")
                               (block-y b1)))
                            (x8215
                             (begin
                               (write '(funapp 1705 57))
                               (display "\n")
                               (block-y b2))))
                           (begin
                             (write '(funapp 1706 28))
                             (display "\n")
                             (= x8216 x8215)))
                          #f))))
                     g8211)))
                 (block-move
                  (lambda (dx dy b)
                    (letrec*
                     ((g8217
                       (letrec*
                        ((x8221
                          (letrec*
                           ((x8222
                             (begin
                               (write '(funapp 1714 50))
                               (display "\n")
                               (block-x b))))
                           (begin
                             (write '(funapp 1714 64))
                             (display "\n")
                             (+ dx x8222))))
                         (x8219
                          (letrec*
                           ((x8220
                             (begin
                               (write '(funapp 1715 50))
                               (display "\n")
                               (block-y b))))
                           (begin
                             (write '(funapp 1715 64))
                             (display "\n")
                             (+ dy x8220))))
                         (x8218
                          (begin
                            (write '(funapp 1716 33))
                            (display "\n")
                            (block-color b))))
                        (begin
                          (write '(funapp 1717 25))
                          (display "\n")
                          (block x8221 x8219 x8218)))))
                     g8217)))
                 (block-rotate-ccw
                  (lambda (c b)
                    (letrec*
                     ((g8223
                       (letrec*
                        ((x8230
                          (letrec*
                           ((x8234
                             (begin
                               (write '(funapp 1726 36))
                               (display "\n")
                               (posn-x c)))
                            (x8231
                             (letrec*
                              ((x8233
                                (begin
                                  (write '(funapp 1729 39))
                                  (display "\n")
                                  (posn-y c)))
                               (x8232
                                (begin
                                  (write '(funapp 1729 58))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1730 31))
                                (display "\n")
                                (- x8233 x8232)))))
                           (begin
                             (write '(funapp 1731 28))
                             (display "\n")
                             (+ x8234 x8231))))
                         (x8225
                          (letrec*
                           ((x8229
                             (begin
                               (write '(funapp 1734 36))
                               (display "\n")
                               (posn-y c)))
                            (x8226
                             (letrec*
                              ((x8228
                                (begin
                                  (write '(funapp 1737 39))
                                  (display "\n")
                                  (block-x b)))
                               (x8227
                                (begin
                                  (write '(funapp 1737 59))
                                  (display "\n")
                                  (posn-x c))))
                              (begin
                                (write '(funapp 1738 31))
                                (display "\n")
                                (- x8228 x8227)))))
                           (begin
                             (write '(funapp 1739 28))
                             (display "\n")
                             (+ x8229 x8226))))
                         (x8224
                          (begin
                            (write '(funapp 1740 33))
                            (display "\n")
                            (block-color b))))
                        (begin
                          (write '(funapp 1741 25))
                          (display "\n")
                          (block x8230 x8225 x8224)))))
                     g8223)))
                 (block-rotate-cw
                  (lambda (c b)
                    (letrec*
                     ((g8235
                       (letrec*
                        ((x8236
                          (letrec*
                           ((x8237
                             (begin
                               (write '(funapp 1750 36))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           (begin
                             (write '(funapp 1751 28))
                             (display "\n")
                             (block-rotate-ccw c x8237)))))
                        (begin
                          (write '(funapp 1752 25))
                          (display "\n")
                          (block-rotate-ccw c x8236)))))
                     g8235)))
                 (ormap
                  (lambda (p? xs)
                    (letrec*
                     ((g8238
                       (letrec*
                        ((x-cnd8239
                          (begin
                            (write '(funapp 1759 37))
                            (display "\n")
                            (null? xs))))
                        (if x-cnd8239
                          (letrec* ((g8240 #f)) g8240)
                          (letrec*
                           ((g8241
                             (letrec*
                              ((x8244
                                (letrec*
                                 ((x8245
                                   (begin
                                     (write '(funapp 1765 56))
                                     (display "\n")
                                     (car xs))))
                                 (begin
                                   (write '(funapp 1765 67))
                                   (display "\n")
                                   (p? x8245))))
                               (x8242
                                (letrec*
                                 ((x8243
                                   (begin
                                     (write '(funapp 1767 50))
                                     (display "\n")
                                     (cdr xs))))
                                 (begin
                                   (write '(funapp 1767 61))
                                   (display "\n")
                                   (ormap p? x8243)))))
                              (begin
                                (write '(funapp 1768 31))
                                (display "\n")
                                (or x8244 x8242)))))
                           g8241)))))
                     g8238)))
                 (andmap
                  (lambda (p? xs)
                    (letrec*
                     ((g8246
                       (letrec*
                        ((x-cnd8247
                          (begin
                            (write '(funapp 1776 37))
                            (display "\n")
                            (null? xs))))
                        (if x-cnd8247
                          (letrec* ((g8248 #t)) g8248)
                          (letrec*
                           ((g8249
                             (letrec*
                              ((x8252
                                (letrec*
                                 ((x8253
                                   (begin
                                     (write '(funapp 1782 56))
                                     (display "\n")
                                     (car xs))))
                                 (begin
                                   (write '(funapp 1782 67))
                                   (display "\n")
                                   (p? x8253))))
                               (x8250
                                (letrec*
                                 ((x8251
                                   (begin
                                     (write '(funapp 1785 42))
                                     (display "\n")
                                     (cdr xs))))
                                 (begin
                                   (write '(funapp 1786 34))
                                   (display "\n")
                                   (andmap p? x8251)))))
                              (begin
                                (write '(funapp 1787 31))
                                (display "\n")
                                (and x8252 x8250)))))
                           g8249)))))
                     g8246)))
                 (filter
                  (lambda (p? xs)
                    (letrec*
                     ((g8254
                       (letrec*
                        ((x-cnd8255
                          (begin
                            (write '(funapp 1795 37))
                            (display "\n")
                            (null? xs))))
                        (if x-cnd8255
                          (letrec* ((g8256 null)) g8256)
                          (letrec*
                           ((x-cnd8257
                             (letrec*
                              ((x8258
                                (begin
                                  (write '(funapp 1800 47))
                                  (display "\n")
                                  (car xs))))
                              (begin
                                (write '(funapp 1800 58))
                                (display "\n")
                                (p? x8258)))))
                           (if x-cnd8257
                             (letrec*
                              ((g8259
                                (letrec*
                                 ((x8262
                                   (begin
                                     (write '(funapp 1805 42))
                                     (display "\n")
                                     (car xs)))
                                  (x8260
                                   (letrec*
                                    ((x8261
                                      (begin
                                        (write '(funapp 1808 45))
                                        (display "\n")
                                        (cdr xs))))
                                    (begin
                                      (write '(funapp 1809 37))
                                      (display "\n")
                                      (filter p? x8261)))))
                                 (begin
                                   (write '(funapp 1810 34))
                                   (display "\n")
                                   (cons x8262 x8260)))))
                              g8259)
                             (letrec*
                              ((g8263
                                (letrec*
                                 ((x8264
                                   (begin
                                     (write '(funapp 1815 42))
                                     (display "\n")
                                     (cdr xs))))
                                 (begin
                                   (write '(funapp 1816 34))
                                   (display "\n")
                                   (filter p? x8264)))))
                              g8263)))))))
                     g8254)))
                 (append
                  (lambda (l r)
                    (letrec*
                     ((g8265
                       (letrec*
                        ((x-cnd8266
                          (begin
                            (write '(funapp 1824 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8266
                          (letrec* ((g8267 r)) g8267)
                          (letrec*
                           ((g8268
                             (letrec*
                              ((x8271
                                (begin
                                  (write '(funapp 1830 39))
                                  (display "\n")
                                  (car l)))
                               (x8269
                                (letrec*
                                 ((x8270
                                   (begin
                                     (write '(funapp 1832 50))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1832 60))
                                   (display "\n")
                                   (append x8270 r)))))
                              (begin
                                (write '(funapp 1833 31))
                                (display "\n")
                                (cons x8271 x8269)))))
                           g8268)))))
                     g8265)))
                 (foldr
                  (lambda (f a xs)
                    (letrec*
                     ((g8272
                       (letrec*
                        ((x-cnd8273
                          (begin
                            (write '(funapp 1841 37))
                            (display "\n")
                            (null? xs))))
                        (if x-cnd8273
                          (letrec* ((g8274 a)) g8274)
                          (letrec*
                           ((g8275
                             (letrec*
                              ((x8278
                                (begin
                                  (write '(funapp 1847 39))
                                  (display "\n")
                                  (car xs)))
                               (x8276
                                (letrec*
                                 ((x8277
                                   (begin
                                     (write '(funapp 1850 42))
                                     (display "\n")
                                     (cdr xs))))
                                 (begin
                                   (write '(funapp 1851 34))
                                   (display "\n")
                                   (foldr f a x8277)))))
                              (begin
                                (write '(funapp 1852 31))
                                (display "\n")
                                (f x8278 x8276)))))
                           g8275)))))
                     g8272)))
                 (blocks-contains?
                  (lambda (bs b)
                    (letrec*
                     ((g8279
                       (letrec*
                        ((x8280
                          (letrec*
                           ((x8282
                             (begin
                               (write '(funapp 1862 36))
                               (display "\n")
                               (c)))
                            (x8281
                             (begin
                               (write '(funapp 1862 48))
                               (display "\n")
                               (block=? b c))))
                           (begin
                             (write '(funapp 1863 28))
                             (display "\n")
                             (λ x8282 x8281)))))
                        (begin
                          (write '(funapp 1864 25))
                          (display "\n")
                          (ormap x8280 bs)))))
                     g8279)))
                 (blocks-subset?
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8283
                       (letrec*
                        ((x8284
                          (letrec*
                           ((x8286
                             (begin
                               (write '(funapp 1873 36))
                               (display "\n")
                               (b)))
                            (x8285
                             (begin
                               (write '(funapp 1873 48))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           (begin
                             (write '(funapp 1874 28))
                             (display "\n")
                             (λ x8286 x8285)))))
                        (begin
                          (write '(funapp 1875 25))
                          (display "\n")
                          (andmap x8284 bs1)))))
                     g8283)))
                 (blocks=?
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8287
                       (letrec*
                        ((x-cnd8288
                          (begin
                            (write '(funapp 1882 37))
                            (display "\n")
                            (blocks-subset? bs1 bs2))))
                        (if x-cnd8288
                          (begin
                            (write '(funapp 1883 39))
                            (display "\n")
                            (blocks-subset? bs2 bs1))
                          #f))))
                     g8287)))
                 (blocks-intersect
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8289
                       (letrec*
                        ((x8290
                          (letrec*
                           ((x8292
                             (begin
                               (write '(funapp 1892 36))
                               (display "\n")
                               (b)))
                            (x8291
                             (begin
                               (write '(funapp 1892 48))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           (begin
                             (write '(funapp 1893 28))
                             (display "\n")
                             (λ x8292 x8291)))))
                        (begin
                          (write '(funapp 1894 25))
                          (display "\n")
                          (filter x8290 bs1)))))
                     g8289)))
                 (blocks-count
                  (lambda (bs)
                    (letrec*
                     ((g8293
                       (begin
                         (write '(funapp 1897 49))
                         (display "\n")
                         (length bs))))
                     g8293)))
                 (blocks-move
                  (lambda (dx dy bs)
                    (letrec*
                     ((g8294
                       (letrec*
                        ((x8295
                          (letrec*
                           ((x8297
                             (begin
                               (write '(funapp 1905 36))
                               (display "\n")
                               (b)))
                            (x8296
                             (begin
                               (write '(funapp 1905 48))
                               (display "\n")
                               (block-move dx dy b))))
                           (begin
                             (write '(funapp 1906 28))
                             (display "\n")
                             (λ x8297 x8296)))))
                        (begin
                          (write '(funapp 1907 25))
                          (display "\n")
                          (map x8295 bs)))))
                     g8294)))
                 (blocks-rotate-ccw
                  (lambda (c bs)
                    (letrec*
                     ((g8298
                       (letrec*
                        ((x8299
                          (letrec*
                           ((x8301
                             (begin
                               (write '(funapp 1916 36))
                               (display "\n")
                               (b)))
                            (x8300
                             (begin
                               (write '(funapp 1916 48))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           (begin
                             (write '(funapp 1917 28))
                             (display "\n")
                             (λ x8301 x8300)))))
                        (begin
                          (write '(funapp 1918 25))
                          (display "\n")
                          (map x8299 bs)))))
                     g8298)))
                 (blocks-rotate-cw
                  (lambda (c bs)
                    (letrec*
                     ((g8302
                       (letrec*
                        ((x8303
                          (letrec*
                           ((x8305
                             (begin
                               (write '(funapp 1927 36))
                               (display "\n")
                               (b)))
                            (x8304
                             (begin
                               (write '(funapp 1927 48))
                               (display "\n")
                               (block-rotate-cw c b))))
                           (begin
                             (write '(funapp 1928 28))
                             (display "\n")
                             (λ x8305 x8304)))))
                        (begin
                          (write '(funapp 1929 25))
                          (display "\n")
                          (map x8303 bs)))))
                     g8302)))
                 (blocks-change-color
                  (lambda (bs c)
                    (letrec*
                     ((g8306
                       (letrec*
                        ((x8307
                          (letrec*
                           ((x8311
                             (begin
                               (write '(funapp 1938 36))
                               (display "\n")
                               (b)))
                            (x8308
                             (letrec*
                              ((x8310
                                (begin
                                  (write '(funapp 1941 39))
                                  (display "\n")
                                  (block-x b)))
                               (x8309
                                (begin
                                  (write '(funapp 1941 59))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1942 31))
                                (display "\n")
                                (block x8310 x8309 c)))))
                           (begin
                             (write '(funapp 1943 28))
                             (display "\n")
                             (λ x8311 x8308)))))
                        (begin
                          (write '(funapp 1944 25))
                          (display "\n")
                          (map x8307 bs)))))
                     g8306)))
                 (blocks-row
                  (lambda (bs i)
                    (letrec*
                     ((g8312
                       (letrec*
                        ((x8313
                          (letrec*
                           ((x8316
                             (begin
                               (write '(funapp 1953 36))
                               (display "\n")
                               (b)))
                            (x8314
                             (letrec*
                              ((x8315
                                (begin
                                  (write '(funapp 1955 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1955 61))
                                (display "\n")
                                (= i x8315)))))
                           (begin
                             (write '(funapp 1956 28))
                             (display "\n")
                             (λ x8316 x8314)))))
                        (begin
                          (write '(funapp 1957 25))
                          (display "\n")
                          (filter x8313 bs)))))
                     g8312)))
                 (full-row?
                  (lambda (bs i)
                    (letrec*
                     ((g8317
                       (letrec*
                        ((x8318
                          (letrec*
                           ((x8319
                             (begin
                               (write '(funapp 1966 36))
                               (display "\n")
                               (blocks-row bs i))))
                           (begin
                             (write '(funapp 1967 28))
                             (display "\n")
                             (blocks-count x8319)))))
                        (begin
                          (write '(funapp 1968 25))
                          (display "\n")
                          (= board-width x8318)))))
                     g8317)))
                 (blocks-overflow?
                  (lambda (bs)
                    (letrec*
                     ((g8320
                       (letrec*
                        ((x8321
                          (letrec*
                           ((x8324
                             (begin
                               (write '(funapp 1977 36))
                               (display "\n")
                               (b)))
                            (x8322
                             (letrec*
                              ((x8323
                                (begin
                                  (write '(funapp 1979 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1979 61))
                                (display "\n")
                                (<= x8323 0)))))
                           (begin
                             (write '(funapp 1980 28))
                             (display "\n")
                             (λ x8324 x8322)))))
                        (begin
                          (write '(funapp 1981 25))
                          (display "\n")
                          (ormap x8321 bs)))))
                     g8320)))
                 (blocks-union
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8325
                       (letrec*
                        ((x8326
                          (letrec*
                           ((x8331
                             (begin
                               (write '(funapp 1990 36))
                               (display "\n")
                               (b bs)))
                            (x8327
                             (letrec*
                              ((x-cnd8328
                                (begin
                                  (write '(funapp 1993 43))
                                  (display "\n")
                                  (blocks-contains? bs b))))
                              (if x-cnd8328
                                (letrec* ((g8329 bs)) g8329)
                                (letrec*
                                 ((g8330
                                   (begin
                                     (write '(funapp 1996 50))
                                     (display "\n")
                                     (cons b bs))))
                                 g8330)))))
                           (begin
                             (write '(funapp 1997 28))
                             (display "\n")
                             (λ x8331 x8327)))))
                        (begin
                          (write '(funapp 1998 25))
                          (display "\n")
                          (foldr x8326 bs2 bs1)))))
                     g8325)))
                 (blocks-max-y
                  (lambda (bs)
                    (letrec*
                     ((g8332
                       (letrec*
                        ((x8333
                          (letrec*
                           ((x8336
                             (begin
                               (write '(funapp 2007 36))
                               (display "\n")
                               (b n)))
                            (x8334
                             (letrec*
                              ((x8335
                                (begin
                                  (write '(funapp 2009 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2009 61))
                                (display "\n")
                                (max x8335 n)))))
                           (begin
                             (write '(funapp 2010 28))
                             (display "\n")
                             (λ x8336 x8334)))))
                        (begin
                          (write '(funapp 2011 25))
                          (display "\n")
                          (foldr x8333 0 bs)))))
                     g8332)))
                 (blocks-min-x
                  (lambda (bs)
                    (letrec*
                     ((g8337
                       (letrec*
                        ((x8338
                          (letrec*
                           ((x8341
                             (begin
                               (write '(funapp 2020 36))
                               (display "\n")
                               (b n)))
                            (x8339
                             (letrec*
                              ((x8340
                                (begin
                                  (write '(funapp 2022 47))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2022 61))
                                (display "\n")
                                (min x8340 n)))))
                           (begin
                             (write '(funapp 2023 28))
                             (display "\n")
                             (λ x8341 x8339)))))
                        (begin
                          (write '(funapp 2024 25))
                          (display "\n")
                          (foldr x8338 board-width bs)))))
                     g8337)))
                 (blocks-max-x
                  (lambda (bs)
                    (letrec*
                     ((g8342
                       (letrec*
                        ((x8343
                          (letrec*
                           ((x8346
                             (begin
                               (write '(funapp 2033 36))
                               (display "\n")
                               (b n)))
                            (x8344
                             (letrec*
                              ((x8345
                                (begin
                                  (write '(funapp 2035 47))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2035 61))
                                (display "\n")
                                (max x8345 n)))))
                           (begin
                             (write '(funapp 2036 28))
                             (display "\n")
                             (λ x8346 x8344)))))
                        (begin
                          (write '(funapp 2037 25))
                          (display "\n")
                          (foldr x8343 0 bs)))))
                     g8342)))
                 (eliminate-full-rows
                  (lambda (bs)
                    (letrec*
                     ((g8347
                       (begin
                         (write '(funapp 2041 38))
                         (display "\n")
                         (elim-row bs board-height 0))))
                     g8347)))
                 (elim-row
                  (lambda (bs i offset)
                    (letrec*
                     ((g8348
                       (letrec*
                        ((x-cnd8349
                          (begin
                            (write '(funapp 2047 37))
                            (display "\n")
                            (< i 0))))
                        (if x-cnd8349
                          (letrec* ((g8350 empty)) g8350)
                          (letrec*
                           ((x-cnd8351
                             (begin
                               (write '(funapp 2051 40))
                               (display "\n")
                               (full-row? bs i))))
                           (if x-cnd8351
                             (letrec*
                              ((g8352
                                (letrec*
                                 ((x8354
                                   (begin
                                     (write '(funapp 2056 42))
                                     (display "\n")
                                     (sub1 i)))
                                  (x8353
                                   (begin
                                     (write '(funapp 2056 59))
                                     (display "\n")
                                     (add1 offset))))
                                 (begin
                                   (write '(funapp 2057 34))
                                   (display "\n")
                                   (elim-row bs x8354 x8353)))))
                              g8352)
                             (letrec*
                              ((g8355
                                (letrec*
                                 ((x8358
                                   (letrec*
                                    ((x8359
                                      (begin
                                        (write '(funapp 2064 45))
                                        (display "\n")
                                        (sub1 i))))
                                    (begin
                                      (write '(funapp 2065 37))
                                      (display "\n")
                                      (elim-row bs x8359 offset))))
                                  (x8356
                                   (letrec*
                                    ((x8357
                                      (begin
                                        (write '(funapp 2068 45))
                                        (display "\n")
                                        (blocks-row bs i))))
                                    (begin
                                      (write '(funapp 2069 37))
                                      (display "\n")
                                      (blocks-move 0 offset x8357)))))
                                 (begin
                                   (write '(funapp 2070 34))
                                   (display "\n")
                                   (blocks-union x8358 x8356)))))
                              g8355)))))))
                     g8348)))
                 (tetra-move
                  (lambda (dx dy t)
                    (letrec*
                     ((g8360
                       (letrec*
                        ((x8363
                          (letrec*
                           ((x8367
                             (letrec*
                              ((x8368
                                (letrec*
                                 ((x8369
                                   (begin
                                     (write '(funapp 2084 42))
                                     (display "\n")
                                     (tetra-center t))))
                                 (begin
                                   (write '(funapp 2085 34))
                                   (display "\n")
                                   (posn-x x8369)))))
                              (begin
                                (write '(funapp 2086 31))
                                (display "\n")
                                (+ dx x8368))))
                            (x8364
                             (letrec*
                              ((x8365
                                (letrec*
                                 ((x8366
                                   (begin
                                     (write '(funapp 2091 42))
                                     (display "\n")
                                     (tetra-center t))))
                                 (begin
                                   (write '(funapp 2092 34))
                                   (display "\n")
                                   (posn-y x8366)))))
                              (begin
                                (write '(funapp 2093 31))
                                (display "\n")
                                (+ dy x8365)))))
                           (begin
                             (write '(funapp 2094 28))
                             (display "\n")
                             (posn x8367 x8364))))
                         (x8361
                          (letrec*
                           ((x8362
                             (begin
                               (write '(funapp 2097 36))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2098 28))
                             (display "\n")
                             (blocks-move dx dy x8362)))))
                        (begin
                          (write '(funapp 2099 25))
                          (display "\n")
                          (tetra x8363 x8361)))))
                     g8360)))
                 (tetra-rotate-ccw
                  (lambda (t)
                    (letrec*
                     ((g8370
                       (letrec*
                        ((x8374
                          (begin
                            (write '(funapp 2106 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8371
                          (letrec*
                           ((x8373
                             (begin
                               (write '(funapp 2109 36))
                               (display "\n")
                               (tetra-center t)))
                            (x8372
                             (begin
                               (write '(funapp 2109 61))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2110 28))
                             (display "\n")
                             (blocks-rotate-ccw x8373 x8372)))))
                        (begin
                          (write '(funapp 2111 25))
                          (display "\n")
                          (tetra x8374 x8371)))))
                     g8370)))
                 (tetra-rotate-cw
                  (lambda (t)
                    (letrec*
                     ((g8375
                       (letrec*
                        ((x8379
                          (begin
                            (write '(funapp 2118 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8376
                          (letrec*
                           ((x8378
                             (begin
                               (write '(funapp 2121 36))
                               (display "\n")
                               (tetra-center t)))
                            (x8377
                             (begin
                               (write '(funapp 2121 61))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2122 28))
                             (display "\n")
                             (blocks-rotate-cw x8378 x8377)))))
                        (begin
                          (write '(funapp 2123 25))
                          (display "\n")
                          (tetra x8379 x8376)))))
                     g8375)))
                 (tetra-overlaps-blocks?
                  (lambda (t bs)
                    (letrec*
                     ((g8380
                       (letrec*
                        ((x8381
                          (letrec*
                           ((x8382
                             (letrec*
                              ((x8383
                                (begin
                                  (write '(funapp 2134 39))
                                  (display "\n")
                                  (tetra-blocks t))))
                              (begin
                                (write '(funapp 2135 31))
                                (display "\n")
                                (blocks-intersect x8383 bs)))))
                           (begin
                             (write '(funapp 2136 28))
                             (display "\n")
                             (false? x8382)))))
                        (begin
                          (write '(funapp 2137 25))
                          (display "\n")
                          (false? x8381)))))
                     g8380)))
                 (tetra-change-color
                  (lambda (t c)
                    (letrec*
                     ((g8384
                       (letrec*
                        ((x8387
                          (begin
                            (write '(funapp 2144 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8385
                          (letrec*
                           ((x8386
                             (begin
                               (write '(funapp 2147 36))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2148 28))
                             (display "\n")
                             (blocks-change-color x8386 c)))))
                        (begin
                          (write '(funapp 2149 25))
                          (display "\n")
                          (tetra x8387 x8385)))))
                     g8384)))
                 (build-tetra-blocks
                  (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                    (letrec*
                     ((g8388
                       (letrec*
                        ((x8389
                          (letrec*
                           ((x8395
                             (begin
                               (write '(funapp 2158 36))
                               (display "\n")
                               (posn xc yc)))
                            (x8390
                             (letrec*
                              ((x8394
                                (begin
                                  (write '(funapp 2161 39))
                                  (display "\n")
                                  (block x1 y1 color)))
                               (x8393
                                (begin
                                  (write '(funapp 2162 39))
                                  (display "\n")
                                  (block x2 y2 color)))
                               (x8392
                                (begin
                                  (write '(funapp 2163 39))
                                  (display "\n")
                                  (block x3 y3 color)))
                               (x8391
                                (begin
                                  (write '(funapp 2164 39))
                                  (display "\n")
                                  (block x4 y4 color))))
                              (begin
                                (write '(funapp 2165 31))
                                (display "\n")
                                (list x8394 x8393 x8392 x8391)))))
                           (begin
                             (write '(funapp 2166 28))
                             (display "\n")
                             (tetra x8395 x8390)))))
                        (begin
                          (write '(funapp 2167 25))
                          (display "\n")
                          (tetra-move 3 0 x8389)))))
                     g8388)))
                 (touchdown
                  (lambda (w tetras)
                    (letrec*
                     ((g8396
                       (letrec*
                        ((x8402
                          (begin
                            (write '(funapp 2174 33))
                            (display "\n")
                            (list-pick-random tetras)))
                         (x8397
                          (letrec*
                           ((x8398
                             (letrec*
                              ((x8400
                                (letrec*
                                 ((x8401
                                   (begin
                                     (write '(funapp 2181 42))
                                     (display "\n")
                                     (world-tetra w))))
                                 (begin
                                   (write '(funapp 2182 34))
                                   (display "\n")
                                   (tetra-blocks x8401))))
                               (x8399
                                (begin
                                  (write '(funapp 2183 39))
                                  (display "\n")
                                  (world-blocks w))))
                              (begin
                                (write '(funapp 2184 31))
                                (display "\n")
                                (blocks-union x8400 x8399)))))
                           (begin
                             (write '(funapp 2185 28))
                             (display "\n")
                             (eliminate-full-rows x8398)))))
                        (begin
                          (write '(funapp 2186 25))
                          (display "\n")
                          (world x8402 x8397)))))
                     g8396)))
                 (world-jump-down
                  (lambda (w)
                    (letrec*
                     ((g8403
                       (letrec*
                        ((x-cnd8404
                          (begin
                            (write '(funapp 2193 37))
                            (display "\n")
                            (landed? w))))
                        (if x-cnd8404
                          (letrec* ((g8405 w)) g8405)
                          (letrec*
                           ((g8406
                             (letrec*
                              ((x8407
                                (letrec*
                                 ((x8409
                                   (letrec*
                                    ((x8410
                                      (begin
                                        (write '(funapp 2203 45))
                                        (display "\n")
                                        (world-tetra w))))
                                    (begin
                                      (write '(funapp 2204 37))
                                      (display "\n")
                                      (tetra-move 0 1 x8410))))
                                  (x8408
                                   (begin
                                     (write '(funapp 2205 42))
                                     (display "\n")
                                     (world-blocks w))))
                                 (begin
                                   (write '(funapp 2206 34))
                                   (display "\n")
                                   (world x8409 x8408)))))
                              (begin
                                (write '(funapp 2207 31))
                                (display "\n")
                                (world-jump-down x8407)))))
                           g8406)))))
                     g8403)))
                 (landed-on-blocks?
                  (lambda (w)
                    (letrec*
                     ((g8411
                       (letrec*
                        ((x8413
                          (letrec*
                           ((x8414
                             (begin
                               (write '(funapp 2217 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2218 28))
                             (display "\n")
                             (tetra-move 0 1 x8414))))
                         (x8412
                          (begin
                            (write '(funapp 2219 33))
                            (display "\n")
                            (world-blocks w))))
                        (begin
                          (write '(funapp 2220 25))
                          (display "\n")
                          (tetra-overlaps-blocks? x8413 x8412)))))
                     g8411)))
                 (landed-on-floor?
                  (lambda (w)
                    (letrec*
                     ((g8415
                       (letrec*
                        ((x8417
                          (letrec*
                           ((x8418
                             (letrec*
                              ((x8419
                                (begin
                                  (write '(funapp 2231 39))
                                  (display "\n")
                                  (world-tetra w))))
                              (begin
                                (write '(funapp 2232 31))
                                (display "\n")
                                (tetra-blocks x8419)))))
                           (begin
                             (write '(funapp 2233 28))
                             (display "\n")
                             (blocks-max-y x8418))))
                         (x8416
                          (begin
                            (write '(funapp 2234 33))
                            (display "\n")
                            (sub1 board-height))))
                        (begin
                          (write '(funapp 2235 25))
                          (display "\n")
                          (= x8417 x8416)))))
                     g8415)))
                 (landed?
                  (lambda (w)
                    (letrec*
                     ((g8420
                       (letrec*
                        ((val7258
                          (begin
                            (write '(funapp 2242 35))
                            (display "\n")
                            (landed-on-blocks? w))))
                        (letrec*
                         ((g8421
                           (if val7258
                             val7258
                             (begin
                               (write '(funapp 2244 54))
                               (display "\n")
                               (landed-on-floor? w)))))
                         g8421))))
                     g8420)))
                 (next-world
                  (lambda (w tetras)
                    (letrec*
                     ((g8422
                       (letrec*
                        ((x-cnd8423
                          (begin
                            (write '(funapp 2252 37))
                            (display "\n")
                            (landed? w))))
                        (if x-cnd8423
                          (letrec*
                           ((g8424
                             (begin
                               (write '(funapp 2254 44))
                               (display "\n")
                               (touchdown w tetras))))
                           g8424)
                          (letrec*
                           ((g8425
                             (letrec*
                              ((x8427
                                (letrec*
                                 ((x8428
                                   (begin
                                     (write '(funapp 2260 42))
                                     (display "\n")
                                     (world-tetra w))))
                                 (begin
                                   (write '(funapp 2261 34))
                                   (display "\n")
                                   (tetra-move 0 1 x8428))))
                               (x8426
                                (begin
                                  (write '(funapp 2262 39))
                                  (display "\n")
                                  (world-blocks w))))
                              (begin
                                (write '(funapp 2263 31))
                                (display "\n")
                                (world x8427 x8426)))))
                           g8425)))))
                     g8422)))
                 (try-new-tetra
                  (lambda (w new-tetra)
                    (letrec*
                     ((g8429
                       (letrec*
                        ((x-cnd8430
                          (letrec*
                           ((x8436
                             (letrec*
                              ((x8437
                                (letrec*
                                 ((x8438
                                   (begin
                                     (write '(funapp 2277 42))
                                     (display "\n")
                                     (tetra-blocks new-tetra))))
                                 (begin
                                   (write '(funapp 2278 34))
                                   (display "\n")
                                   (blocks-min-x x8438)))))
                              (begin
                                (write '(funapp 2279 31))
                                (display "\n")
                                (< x8437 0))))
                            (x8433
                             (letrec*
                              ((x8434
                                (letrec*
                                 ((x8435
                                   (begin
                                     (write '(funapp 2284 42))
                                     (display "\n")
                                     (tetra-blocks new-tetra))))
                                 (begin
                                   (write '(funapp 2285 34))
                                   (display "\n")
                                   (blocks-max-x x8435)))))
                              (begin
                                (write '(funapp 2286 31))
                                (display "\n")
                                (>= x8434 board-width))))
                            (x8431
                             (letrec*
                              ((x8432
                                (begin
                                  (write '(funapp 2289 39))
                                  (display "\n")
                                  (world-blocks w))))
                              (begin
                                (write '(funapp 2290 31))
                                (display "\n")
                                (tetra-overlaps-blocks? new-tetra x8432)))))
                           (begin
                             (write '(funapp 2291 28))
                             (display "\n")
                             (or x8436 x8433 x8431)))))
                        (if x-cnd8430
                          (letrec* ((g8439 w)) g8439)
                          (letrec*
                           ((g8440
                             (letrec*
                              ((x8441
                                (begin
                                  (write '(funapp 2297 39))
                                  (display "\n")
                                  (world-blocks w))))
                              (begin
                                (write '(funapp 2298 31))
                                (display "\n")
                                (world new-tetra x8441)))))
                           g8440)))))
                     g8429)))
                 (world-move
                  (lambda (dx dy w)
                    (letrec*
                     ((g8442
                       (letrec*
                        ((x8443
                          (letrec*
                           ((x8444
                             (begin
                               (write '(funapp 2308 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2309 28))
                             (display "\n")
                             (tetra-move dx dy x8444)))))
                        (begin
                          (write '(funapp 2310 25))
                          (display "\n")
                          (try-new-tetra w x8443)))))
                     g8442)))
                 (world-rotate-ccw
                  (lambda (w)
                    (letrec*
                     ((g8445
                       (letrec*
                        ((x8446
                          (letrec*
                           ((x8447
                             (begin
                               (write '(funapp 2319 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2320 28))
                             (display "\n")
                             (tetra-rotate-ccw x8447)))))
                        (begin
                          (write '(funapp 2321 25))
                          (display "\n")
                          (try-new-tetra w x8446)))))
                     g8445)))
                 (world-rotate-cw
                  (lambda (w)
                    (letrec*
                     ((g8448
                       (letrec*
                        ((x8449
                          (letrec*
                           ((x8450
                             (begin
                               (write '(funapp 2330 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2331 28))
                             (display "\n")
                             (tetra-rotate-cw x8450)))))
                        (begin
                          (write '(funapp 2332 25))
                          (display "\n")
                          (try-new-tetra w x8449)))))
                     g8448)))
                 (ghost-blocks
                  (lambda (w)
                    (letrec*
                     ((g8451
                       (letrec*
                        ((x8452
                          (letrec*
                           ((x8453
                             (letrec*
                              ((x8454
                                (begin
                                  (write '(funapp 2343 39))
                                  (display "\n")
                                  (world-jump-down w))))
                              (begin
                                (write '(funapp 2344 31))
                                (display "\n")
                                (world-tetra x8454)))))
                           (begin
                             (write '(funapp 2345 28))
                             (display "\n")
                             (tetra-change-color
                              x8453
                              (begin
                                (write '(funapp 2345 53))
                                (display "\n")
                                'gray))))))
                        (begin
                          (write '(funapp 2346 25))
                          (display "\n")
                          (tetra-blocks x8452)))))
                     g8451)))
                 (world-key-move
                  (lambda (w k)
                    (letrec*
                     ((g8455
                       (letrec*
                        ((x-cnd8456
                          (begin
                            (write '(funapp 2353 37))
                            (display "\n")
                            (equal? k "left"))))
                        (if x-cnd8456
                          (letrec*
                           ((g8457
                             (begin
                               (write '(funapp 2355 44))
                               (display "\n")
                               (world-move neg-1 0 w))))
                           g8457)
                          (letrec*
                           ((x-cnd8458
                             (begin
                               (write '(funapp 2357 40))
                               (display "\n")
                               (equal? k "right"))))
                           (if x-cnd8458
                             (letrec*
                              ((g8459
                                (begin
                                  (write '(funapp 2359 47))
                                  (display "\n")
                                  (world-move 1 0 w))))
                              g8459)
                             (letrec*
                              ((x-cnd8460
                                (begin
                                  (write '(funapp 2361 43))
                                  (display "\n")
                                  (equal? k "down"))))
                              (if x-cnd8460
                                (letrec*
                                 ((g8461
                                   (begin
                                     (write '(funapp 2363 50))
                                     (display "\n")
                                     (world-jump-down w))))
                                 g8461)
                                (letrec*
                                 ((x-cnd8462
                                   (begin
                                     (write '(funapp 2365 46))
                                     (display "\n")
                                     (equal? k "a"))))
                                 (if x-cnd8462
                                   (letrec*
                                    ((g8463
                                      (begin
                                        (write '(funapp 2368 45))
                                        (display "\n")
                                        (world-rotate-ccw w))))
                                    g8463)
                                   (letrec*
                                    ((x-cnd8464
                                      (begin
                                        (write '(funapp 2371 49))
                                        (display "\n")
                                        (equal? k "s"))))
                                    (if x-cnd8464
                                      (letrec*
                                       ((g8465
                                         (begin
                                           (write '(funapp 2374 48))
                                           (display "\n")
                                           (world-rotate-cw w))))
                                       g8465)
                                      (letrec* ((g8466 w)) g8466)))))))))))))
                     g8455)))
                 (image
                  (lambda ()
                    (letrec*
                     ((g8467
                       (begin
                         (write '(funapp 2379 47))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2379 52))
                            (display "\n")
                            'image)
                          (begin
                            (write '(funapp 2379 59))
                            (display "\n")
                            '())))))
                     g8467)))
                 (image?
                  (lambda (image7592)
                    (letrec*
                     ((g8468
                       (letrec*
                        ((x8469
                          (begin
                            (write '(funapp 2384 41))
                            (display "\n")
                            (car image7592))))
                        (begin
                          (write '(funapp 2384 59))
                          (display "\n")
                          (eq?
                           x8469
                           (begin
                             (write '(funapp 2384 69))
                             (display "\n")
                             'image))))))
                     g8468)))
                 (overlay
                  (lambda (i₁ i₂)
                    (letrec*
                     ((g8470
                       (begin
                         (write '(funapp 2386 60))
                         (display "\n")
                         (image))))
                     g8470)))
                 (circle
                  (lambda (r m c)
                    (letrec*
                     ((g8471
                       (begin
                         (write '(funapp 2387 59))
                         (display "\n")
                         (image))))
                     g8471)))
                 (rectangle
                  (lambda (w h m c)
                    (letrec*
                     ((g8472
                       (begin
                         (write '(funapp 2389 54))
                         (display "\n")
                         (image))))
                     g8472)))
                 (place-image
                  (lambda (i₁ r c i₂)
                    (letrec*
                     ((g8473
                       (begin
                         (write '(funapp 2391 56))
                         (display "\n")
                         (image))))
                     g8473)))
                 (empty-scene
                  (lambda (w h)
                    (letrec*
                     ((g8474
                       (begin
                         (write '(funapp 2392 62))
                         (display "\n")
                         (image))))
                     g8474)))
                 (list-pick-random
                  (lambda (xs)
                    (letrec*
                     ((g8475
                       (letrec*
                        ((x-cnd8476
                          (letrec*
                           ((x8477
                             (begin
                               (write '(funapp 2399 44))
                               (display "\n")
                               (cdr xs))))
                           (begin
                             (write '(funapp 2399 55))
                             (display "\n")
                             (null? x8477)))))
                        (if x-cnd8476
                          (letrec*
                           ((g8478
                             (begin
                               (write '(funapp 2401 44))
                               (display "\n")
                               (car xs))))
                           g8478)
                          (letrec*
                           ((g8479
                             (letrec*
                              ((x8480
                                (begin
                                  (write '(funapp 2405 39))
                                  (display "\n")
                                  (cdr xs))))
                              (begin
                                (write '(funapp 2406 31))
                                (display "\n")
                                (list-pick-random x8480)))))
                           g8479)))))
                     g8475)))
                 (neg-1
                  (begin (write '(funapp 2409 25)) (display "\n") (random 10)))
                 (world->image
                  (lambda (w)
                    (letrec*
                     ((g8481
                       (letrec*
                        ((x8485
                          (letrec*
                           ((x8486
                             (letrec*
                              ((x8490
                                (letrec*
                                 ((x8491
                                   (begin
                                     (write '(funapp 2421 42))
                                     (display "\n")
                                     (world-tetra w))))
                                 (begin
                                   (write '(funapp 2422 34))
                                   (display "\n")
                                   (tetra-blocks x8491))))
                               (x8487
                                (letrec*
                                 ((x8489
                                   (begin
                                     (write '(funapp 2425 42))
                                     (display "\n")
                                     (ghost-blocks w)))
                                  (x8488
                                   (begin
                                     (write '(funapp 2426 42))
                                     (display "\n")
                                     (world-blocks w))))
                                 (begin
                                   (write '(funapp 2427 34))
                                   (display "\n")
                                   (append x8489 x8488)))))
                              (begin
                                (write '(funapp 2428 31))
                                (display "\n")
                                (append x8490 x8487)))))
                           (begin
                             (write '(funapp 2429 28))
                             (display "\n")
                             (blocks->image x8486))))
                         (x8482
                          (letrec*
                           ((x8484
                             (begin
                               (write '(funapp 2432 36))
                               (display "\n")
                               (* board-width block-size)))
                            (x8483
                             (begin
                               (write '(funapp 2433 36))
                               (display "\n")
                               (* board-height block-size))))
                           (begin
                             (write '(funapp 2434 28))
                             (display "\n")
                             (empty-scene x8484 x8483)))))
                        (begin
                          (write '(funapp 2435 25))
                          (display "\n")
                          (place-image x8485 0 0 x8482)))))
                     g8481)))
                 (blocks->image
                  (lambda (bs)
                    (letrec*
                     ((g8492
                       (letrec*
                        ((x8498
                          (letrec*
                           ((x8504
                             (begin
                               (write '(funapp 2444 36))
                               (display "\n")
                               (b img)))
                            (x8499
                             (letrec*
                              ((x-cnd8500
                                (letrec*
                                 ((x8501
                                   (begin
                                     (write '(funapp 2448 50))
                                     (display "\n")
                                     (block-y b))))
                                 (begin
                                   (write '(funapp 2448 64))
                                   (display "\n")
                                   (<= 0 x8501)))))
                              (if x-cnd8500
                                (letrec*
                                 ((g8502
                                   (begin
                                     (write '(funapp 2450 50))
                                     (display "\n")
                                     (place-block b img))))
                                 g8502)
                                (letrec* ((g8503 img)) g8503)))))
                           (begin
                             (write '(funapp 2452 28))
                             (display "\n")
                             (λ x8504 x8499))))
                         (x8493
                          (letrec*
                           ((x8496
                             (letrec*
                              ((x8497
                                (begin
                                  (write '(funapp 2457 39))
                                  (display "\n")
                                  (* board-width block-size))))
                              (begin
                                (write '(funapp 2458 31))
                                (display "\n")
                                (add1 x8497))))
                            (x8494
                             (letrec*
                              ((x8495
                                (begin
                                  (write '(funapp 2461 39))
                                  (display "\n")
                                  (* board-height block-size))))
                              (begin
                                (write '(funapp 2462 31))
                                (display "\n")
                                (add1 x8495)))))
                           (begin
                             (write '(funapp 2463 28))
                             (display "\n")
                             (empty-scene x8496 x8494)))))
                        (begin
                          (write '(funapp 2464 25))
                          (display "\n")
                          (foldr x8498 x8493 bs)))))
                     g8492)))
                 (block->image
                  (lambda (b)
                    (letrec*
                     ((g8505
                       (letrec*
                        ((x8509
                          (letrec*
                           ((x8512
                             (begin
                               (write '(funapp 2473 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8511
                             (begin
                               (write '(funapp 2474 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8510
                             (begin
                               (write '(funapp 2475 36))
                               (display "\n")
                               (block-color b))))
                           (begin
                             (write '(funapp 2476 28))
                             (display "\n")
                             (rectangle
                              x8512
                              x8511
                              (begin
                                (write '(funapp 2476 50))
                                (display "\n")
                                'solid)
                              x8510))))
                         (x8506
                          (letrec*
                           ((x8508
                             (begin
                               (write '(funapp 2479 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8507
                             (begin
                               (write '(funapp 2480 36))
                               (display "\n")
                               (add1 block-size))))
                           (begin
                             (write '(funapp 2481 28))
                             (display "\n")
                             (rectangle
                              x8508
                              x8507
                              (begin
                                (write '(funapp 2481 50))
                                (display "\n")
                                'outline)
                              (begin
                                (write '(funapp 2481 59))
                                (display "\n")
                                'black))))))
                        (begin
                          (write '(funapp 2482 25))
                          (display "\n")
                          (overlay x8509 x8506)))))
                     g8505)))
                 (place-block
                  (lambda (b scene)
                    (letrec*
                     ((g8513
                       (letrec*
                        ((x8522
                          (begin
                            (write '(funapp 2489 33))
                            (display "\n")
                            (block->image b)))
                         (x8518
                          (letrec*
                           ((x8520
                             (letrec*
                              ((x8521
                                (begin
                                  (write '(funapp 2494 39))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2495 31))
                                (display "\n")
                                (* x8521 block-size))))
                            (x8519
                             (begin
                               (write '(funapp 2496 36))
                               (display "\n")
                               (/ block-size 2))))
                           (begin
                             (write '(funapp 2497 28))
                             (display "\n")
                             (+ x8520 x8519))))
                         (x8514
                          (letrec*
                           ((x8516
                             (letrec*
                              ((x8517
                                (begin
                                  (write '(funapp 2502 39))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2503 31))
                                (display "\n")
                                (* x8517 block-size))))
                            (x8515
                             (begin
                               (write '(funapp 2504 36))
                               (display "\n")
                               (/ block-size 2))))
                           (begin
                             (write '(funapp 2505 28))
                             (display "\n")
                             (+ x8516 x8515)))))
                        (begin
                          (write '(funapp 2506 25))
                          (display "\n")
                          (place-image x8522 x8518 x8514 scene)))))
                     g8513)))
                 (world0
                  (lambda (tetras)
                    (letrec*
                     ((g8523
                       (letrec*
                        ((x8524
                          (begin
                            (write '(funapp 2513 33))
                            (display "\n")
                            (list-pick-random tetras))))
                        (begin
                          (write '(funapp 2514 25))
                          (display "\n")
                          (world x8524 null)))))
                     g8523))))
                (letrec*
                 ((g8525
                   (letrec*
                    ((x8588
                      (begin
                        (write '(funapp 2520 23))
                        (display "\n")
                        ((lambda (j7355 k7356 f7357)
                           (letrec*
                            ((g8589
                              (lambda (g7353 g7354)
                                (letrec*
                                 ((g8590
                                   (letrec*
                                    ((x8591
                                      (letrec*
                                       ((x8593
                                         (begin
                                           (write '(funapp 2529 46))
                                           (display "\n")
                                           (POSN/C j7355 k7356 g7353)))
                                        (x8592
                                         (begin
                                           (write '(funapp 2530 46))
                                           (display "\n")
                                           (POSN/C j7355 k7356 g7354))))
                                       (begin
                                         (write '(funapp 2531 38))
                                         (display "\n")
                                         (f7357 x8593 x8592)))))
                                    (begin
                                      (write '(funapp 2532 35))
                                      (display "\n")
                                      (boolean?/c j7355 k7356 x8591)))))
                                 g8590))))
                            g8589))
                         (begin
                           (write '(funapp 2535 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2536 23))
                           (display "\n")
                           'importer)
                         posn=?)))
                     (x8583
                      (letrec*
                       ((x8584
                         (letrec*
                          ((x8587 (input))
                           (x8585
                            (letrec*
                             ((x8586 (input)))
                             (begin
                               (write '(funapp 2544 56))
                               (display "\n")
                               (cons
                                x8586
                                (begin
                                  (write '(funapp 2544 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2545 27))
                            (display "\n")
                            (cons x8587 x8585)))))
                       (begin
                         (write '(funapp 2546 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2546 29))
                            (display "\n")
                            'posn)
                          x8584))))
                     (x8578
                      (letrec*
                       ((x8579
                         (letrec*
                          ((x8582 (input))
                           (x8580
                            (letrec*
                             ((x8581 (input)))
                             (begin
                               (write '(funapp 2553 56))
                               (display "\n")
                               (cons
                                x8581
                                (begin
                                  (write '(funapp 2553 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2554 27))
                            (display "\n")
                            (cons x8582 x8580)))))
                       (begin
                         (write '(funapp 2555 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2555 29))
                            (display "\n")
                            'posn)
                          x8579)))))
                    (begin
                      (write '(funapp 2556 21))
                      (display "\n")
                      (x8588 x8583 x8578))))
                  (g8526
                   (begin
                     (write '(funapp 2557 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2557 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2557 40))
                        (display "\n")
                        'importer)
                      COLOR/C)))
                  (g8527
                   (begin
                     (write '(funapp 2558 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2558 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2558 40))
                        (display "\n")
                        'importer)
                      POSN/C)))
                  (g8528
                   (begin
                     (write '(funapp 2559 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2559 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2559 40))
                        (display "\n")
                        'importer)
                      BLOCK/C)))
                  (g8529
                   (begin
                     (write '(funapp 2560 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2560 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2560 40))
                        (display "\n")
                        'importer)
                      TETRA/C)))
                  (g8530
                   (begin
                     (write '(funapp 2561 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2561 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2561 40))
                        (display "\n")
                        'importer)
                      WORLD/C)))
                  (g8531
                   (begin
                     (write '(funapp 2562 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2562 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2562 40))
                        (display "\n")
                        'importer)
                      BSET/C)))
                  (g8532
                   (begin
                     (write '(funapp 2563 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2563 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2563 43))
                        (display "\n")
                        'importer)
                      block-size)))
                  (g8533
                   (begin
                     (write '(funapp 2564 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2564 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2564 43))
                        (display "\n")
                        'importer)
                      board-width)))
                  (g8534
                   (begin
                     (write '(funapp 2565 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2565 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2565 43))
                        (display "\n")
                        'importer)
                      board-height)))
                  (g8535
                   (letrec*
                    ((x8606
                      (begin
                        (write '(funapp 2569 23))
                        (display "\n")
                        ((lambda (j7360 k7361 f7362)
                           (letrec*
                            ((g8607
                              (lambda (g7358 g7359)
                                (letrec*
                                 ((g8608
                                   (letrec*
                                    ((x8609
                                      (letrec*
                                       ((x8611
                                         (begin
                                           (write '(funapp 2578 46))
                                           (display "\n")
                                           (POSN/C j7360 k7361 g7358)))
                                        (x8610
                                         (begin
                                           (write '(funapp 2579 46))
                                           (display "\n")
                                           (BLOCK/C j7360 k7361 g7359))))
                                       (begin
                                         (write '(funapp 2580 38))
                                         (display "\n")
                                         (f7362 x8611 x8610)))))
                                    (begin
                                      (write '(funapp 2581 35))
                                      (display "\n")
                                      (BLOCK/C j7360 k7361 x8609)))))
                                 g8608))))
                            g8607))
                         (begin
                           (write '(funapp 2584 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2585 23))
                           (display "\n")
                           'importer)
                         block-rotate-ccw)))
                     (x8601
                      (letrec*
                       ((x8602
                         (letrec*
                          ((x8605 (input))
                           (x8603
                            (letrec*
                             ((x8604 (input)))
                             (begin
                               (write '(funapp 2593 56))
                               (display "\n")
                               (cons
                                x8604
                                (begin
                                  (write '(funapp 2593 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2594 27))
                            (display "\n")
                            (cons x8605 x8603)))))
                       (begin
                         (write '(funapp 2595 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2595 29))
                            (display "\n")
                            'posn)
                          x8602))))
                     (x8594
                      (letrec*
                       ((x8595
                         (letrec*
                          ((x8600 (input))
                           (x8596
                            (letrec*
                             ((x8599 (input))
                              (x8597
                               (letrec*
                                ((x8598 (input)))
                                (begin
                                  (write '(funapp 2605 59))
                                  (display "\n")
                                  (cons
                                   x8598
                                   (begin
                                     (write '(funapp 2605 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2606 30))
                               (display "\n")
                               (cons x8599 x8597)))))
                          (begin
                            (write '(funapp 2607 27))
                            (display "\n")
                            (cons x8600 x8596)))))
                       (begin
                         (write '(funapp 2608 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2608 29))
                            (display "\n")
                            'block)
                          x8595)))))
                    (begin
                      (write '(funapp 2609 21))
                      (display "\n")
                      (x8606 x8601 x8594))))
                  (g8536
                   (letrec*
                    ((x8624
                      (begin
                        (write '(funapp 2613 23))
                        (display "\n")
                        ((lambda (j7365 k7366 f7367)
                           (letrec*
                            ((g8625
                              (lambda (g7363 g7364)
                                (letrec*
                                 ((g8626
                                   (letrec*
                                    ((x8627
                                      (letrec*
                                       ((x8629
                                         (begin
                                           (write '(funapp 2622 46))
                                           (display "\n")
                                           (POSN/C j7365 k7366 g7363)))
                                        (x8628
                                         (begin
                                           (write '(funapp 2623 46))
                                           (display "\n")
                                           (BLOCK/C j7365 k7366 g7364))))
                                       (begin
                                         (write '(funapp 2624 38))
                                         (display "\n")
                                         (f7367 x8629 x8628)))))
                                    (begin
                                      (write '(funapp 2625 35))
                                      (display "\n")
                                      (BLOCK/C j7365 k7366 x8627)))))
                                 g8626))))
                            g8625))
                         (begin
                           (write '(funapp 2628 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2629 23))
                           (display "\n")
                           'importer)
                         block-rotate-cw)))
                     (x8619
                      (letrec*
                       ((x8620
                         (letrec*
                          ((x8623 (input))
                           (x8621
                            (letrec*
                             ((x8622 (input)))
                             (begin
                               (write '(funapp 2637 56))
                               (display "\n")
                               (cons
                                x8622
                                (begin
                                  (write '(funapp 2637 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2638 27))
                            (display "\n")
                            (cons x8623 x8621)))))
                       (begin
                         (write '(funapp 2639 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2639 29))
                            (display "\n")
                            'posn)
                          x8620))))
                     (x8612
                      (letrec*
                       ((x8613
                         (letrec*
                          ((x8618 (input))
                           (x8614
                            (letrec*
                             ((x8617 (input))
                              (x8615
                               (letrec*
                                ((x8616 (input)))
                                (begin
                                  (write '(funapp 2649 59))
                                  (display "\n")
                                  (cons
                                   x8616
                                   (begin
                                     (write '(funapp 2649 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2650 30))
                               (display "\n")
                               (cons x8617 x8615)))))
                          (begin
                            (write '(funapp 2651 27))
                            (display "\n")
                            (cons x8618 x8614)))))
                       (begin
                         (write '(funapp 2652 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2652 29))
                            (display "\n")
                            'block)
                          x8613)))))
                    (begin
                      (write '(funapp 2653 21))
                      (display "\n")
                      (x8624 x8619 x8612))))
                  (g8537
                   (letrec*
                    ((x8644
                      (begin
                        (write '(funapp 2657 23))
                        (display "\n")
                        ((lambda (j7370 k7371 f7372)
                           (letrec*
                            ((g8645
                              (lambda (g7368 g7369)
                                (letrec*
                                 ((g8646
                                   (letrec*
                                    ((x8647
                                      (letrec*
                                       ((x8649
                                         (begin
                                           (write '(funapp 2666 46))
                                           (display "\n")
                                           (BLOCK/C j7370 k7371 g7368)))
                                        (x8648
                                         (begin
                                           (write '(funapp 2667 46))
                                           (display "\n")
                                           (BLOCK/C j7370 k7371 g7369))))
                                       (begin
                                         (write '(funapp 2668 38))
                                         (display "\n")
                                         (f7372 x8649 x8648)))))
                                    (begin
                                      (write '(funapp 2669 35))
                                      (display "\n")
                                      (boolean?/c j7370 k7371 x8647)))))
                                 g8646))))
                            g8645))
                         (begin
                           (write '(funapp 2672 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2673 23))
                           (display "\n")
                           'importer)
                         block=?)))
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
                                  (write '(funapp 2684 59))
                                  (display "\n")
                                  (cons
                                   x8641
                                   (begin
                                     (write '(funapp 2684 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2685 30))
                               (display "\n")
                               (cons x8642 x8640)))))
                          (begin
                            (write '(funapp 2686 27))
                            (display "\n")
                            (cons x8643 x8639)))))
                       (begin
                         (write '(funapp 2687 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2687 29))
                            (display "\n")
                            'block)
                          x8638))))
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
                                  (write '(funapp 2697 59))
                                  (display "\n")
                                  (cons
                                   x8634
                                   (begin
                                     (write '(funapp 2697 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2698 30))
                               (display "\n")
                               (cons x8635 x8633)))))
                          (begin
                            (write '(funapp 2699 27))
                            (display "\n")
                            (cons x8636 x8632)))))
                       (begin
                         (write '(funapp 2700 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2700 29))
                            (display "\n")
                            'block)
                          x8631)))))
                    (begin
                      (write '(funapp 2701 21))
                      (display "\n")
                      (x8644 x8637 x8630))))
                  (g8538
                   (letrec*
                    ((x8659
                      (begin
                        (write '(funapp 2705 23))
                        (display "\n")
                        ((lambda (j7376 k7377 f7378)
                           (letrec*
                            ((g8660
                              (lambda (g7373 g7374 g7375)
                                (letrec*
                                 ((g8661
                                   (letrec*
                                    ((x8662
                                      (letrec*
                                       ((x8665
                                         (begin
                                           (write '(funapp 2714 46))
                                           (display "\n")
                                           (real?/c j7376 k7377 g7373)))
                                        (x8664
                                         (begin
                                           (write '(funapp 2715 46))
                                           (display "\n")
                                           (real?/c j7376 k7377 g7374)))
                                        (x8663
                                         (begin
                                           (write '(funapp 2716 46))
                                           (display "\n")
                                           (BLOCK/C j7376 k7377 g7375))))
                                       (begin
                                         (write '(funapp 2717 38))
                                         (display "\n")
                                         (f7378 x8665 x8664 x8663)))))
                                    (begin
                                      (write '(funapp 2718 35))
                                      (display "\n")
                                      (BLOCK/C j7376 k7377 x8662)))))
                                 g8661))))
                            g8660))
                         (begin
                           (write '(funapp 2721 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2722 23))
                           (display "\n")
                           'importer)
                         block-move)))
                     (x8658 (input))
                     (x8657 (input))
                     (x8650
                      (letrec*
                       ((x8651
                         (letrec*
                          ((x8656 (input))
                           (x8652
                            (letrec*
                             ((x8655 (input))
                              (x8653
                               (letrec*
                                ((x8654 (input)))
                                (begin
                                  (write '(funapp 2735 59))
                                  (display "\n")
                                  (cons
                                   x8654
                                   (begin
                                     (write '(funapp 2735 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2736 30))
                               (display "\n")
                               (cons x8655 x8653)))))
                          (begin
                            (write '(funapp 2737 27))
                            (display "\n")
                            (cons x8656 x8652)))))
                       (begin
                         (write '(funapp 2738 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2738 29))
                            (display "\n")
                            'block)
                          x8651)))))
                    (begin
                      (write '(funapp 2739 21))
                      (display "\n")
                      (x8659 x8658 x8657 x8650))))
                  (g8539
                   (letrec*
                    ((x8674
                      (begin
                        (write '(funapp 2743 23))
                        (display "\n")
                        ((lambda (j7381 k7382 f7383)
                           (letrec*
                            ((g8675
                              (lambda (g7379 g7380)
                                (letrec*
                                 ((g8676
                                   (letrec*
                                    ((x8677
                                      (letrec*
                                       ((x8679
                                         (begin
                                           (write '(funapp 2752 46))
                                           (display "\n")
                                           (BSET/C j7381 k7382 g7379)))
                                        (x8678
                                         (begin
                                           (write '(funapp 2753 46))
                                           (display "\n")
                                           (BLOCK/C j7381 k7382 g7380))))
                                       (begin
                                         (write '(funapp 2754 38))
                                         (display "\n")
                                         (f7383 x8679 x8678)))))
                                    (begin
                                      (write '(funapp 2755 35))
                                      (display "\n")
                                      (boolean?/c j7381 k7382 x8677)))))
                                 g8676))))
                            g8675))
                         (begin
                           (write '(funapp 2758 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2759 23))
                           (display "\n")
                           'importer)
                         blocks-contains?)))
                     (x8673 (input))
                     (x8666
                      (letrec*
                       ((x8667
                         (letrec*
                          ((x8672 (input))
                           (x8668
                            (letrec*
                             ((x8671 (input))
                              (x8669
                               (letrec*
                                ((x8670 (input)))
                                (begin
                                  (write '(funapp 2771 59))
                                  (display "\n")
                                  (cons
                                   x8670
                                   (begin
                                     (write '(funapp 2771 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2772 30))
                               (display "\n")
                               (cons x8671 x8669)))))
                          (begin
                            (write '(funapp 2773 27))
                            (display "\n")
                            (cons x8672 x8668)))))
                       (begin
                         (write '(funapp 2774 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2774 29))
                            (display "\n")
                            'block)
                          x8667)))))
                    (begin
                      (write '(funapp 2775 21))
                      (display "\n")
                      (x8674 x8673 x8666))))
                  (g8540
                   (letrec*
                    ((x8682
                      (begin
                        (write '(funapp 2779 23))
                        (display "\n")
                        ((lambda (j7386 k7387 f7388)
                           (letrec*
                            ((g8683
                              (lambda (g7384 g7385)
                                (letrec*
                                 ((g8684
                                   (letrec*
                                    ((x8685
                                      (letrec*
                                       ((x8687
                                         (begin
                                           (write '(funapp 2788 46))
                                           (display "\n")
                                           (BSET/C j7386 k7387 g7384)))
                                        (x8686
                                         (begin
                                           (write '(funapp 2789 46))
                                           (display "\n")
                                           (BSET/C j7386 k7387 g7385))))
                                       (begin
                                         (write '(funapp 2790 38))
                                         (display "\n")
                                         (f7388 x8687 x8686)))))
                                    (begin
                                      (write '(funapp 2791 35))
                                      (display "\n")
                                      (boolean?/c j7386 k7387 x8685)))))
                                 g8684))))
                            g8683))
                         (begin
                           (write '(funapp 2794 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2795 23))
                           (display "\n")
                           'importer)
                         blocks=?)))
                     (x8681 (input))
                     (x8680 (input)))
                    (begin
                      (write '(funapp 2799 21))
                      (display "\n")
                      (x8682 x8681 x8680))))
                  (g8541
                   (letrec*
                    ((x8690
                      (begin
                        (write '(funapp 2803 23))
                        (display "\n")
                        ((lambda (j7391 k7392 f7393)
                           (letrec*
                            ((g8691
                              (lambda (g7389 g7390)
                                (letrec*
                                 ((g8692
                                   (letrec*
                                    ((x8693
                                      (letrec*
                                       ((x8695
                                         (begin
                                           (write '(funapp 2812 46))
                                           (display "\n")
                                           (BSET/C j7391 k7392 g7389)))
                                        (x8694
                                         (begin
                                           (write '(funapp 2813 46))
                                           (display "\n")
                                           (BSET/C j7391 k7392 g7390))))
                                       (begin
                                         (write '(funapp 2814 38))
                                         (display "\n")
                                         (f7393 x8695 x8694)))))
                                    (begin
                                      (write '(funapp 2815 35))
                                      (display "\n")
                                      (boolean?/c j7391 k7392 x8693)))))
                                 g8692))))
                            g8691))
                         (begin
                           (write '(funapp 2818 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2819 23))
                           (display "\n")
                           'importer)
                         blocks-subset?)))
                     (x8689 (input))
                     (x8688 (input)))
                    (begin
                      (write '(funapp 2823 21))
                      (display "\n")
                      (x8690 x8689 x8688))))
                  (g8542
                   (letrec*
                    ((x8698
                      (begin
                        (write '(funapp 2827 23))
                        (display "\n")
                        ((lambda (j7396 k7397 f7398)
                           (letrec*
                            ((g8699
                              (lambda (g7394 g7395)
                                (letrec*
                                 ((g8700
                                   (letrec*
                                    ((x8701
                                      (letrec*
                                       ((x8703
                                         (begin
                                           (write '(funapp 2836 46))
                                           (display "\n")
                                           (BSET/C j7396 k7397 g7394)))
                                        (x8702
                                         (begin
                                           (write '(funapp 2837 46))
                                           (display "\n")
                                           (BSET/C j7396 k7397 g7395))))
                                       (begin
                                         (write '(funapp 2838 38))
                                         (display "\n")
                                         (f7398 x8703 x8702)))))
                                    (begin
                                      (write '(funapp 2839 35))
                                      (display "\n")
                                      (BSET/C j7396 k7397 x8701)))))
                                 g8700))))
                            g8699))
                         (begin
                           (write '(funapp 2842 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2843 23))
                           (display "\n")
                           'importer)
                         blocks-intersect)))
                     (x8697 (input))
                     (x8696 (input)))
                    (begin
                      (write '(funapp 2847 21))
                      (display "\n")
                      (x8698 x8697 x8696))))
                  (g8543
                   (letrec*
                    ((x8705
                      (begin
                        (write '(funapp 2851 23))
                        (display "\n")
                        ((lambda (j7400 k7401 f7402)
                           (letrec*
                            ((g8706
                              (lambda (g7399)
                                (letrec*
                                 ((g8707
                                   (letrec*
                                    ((x8708
                                      (letrec*
                                       ((x8709
                                         (begin
                                           (write '(funapp 2860 46))
                                           (display "\n")
                                           (BSET/C j7400 k7401 g7399))))
                                       (begin
                                         (write '(funapp 2861 38))
                                         (display "\n")
                                         (f7402 x8709)))))
                                    (begin
                                      (write '(funapp 2862 35))
                                      (display "\n")
                                      (real?/c j7400 k7401 x8708)))))
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
                         blocks-count)))
                     (x8704 (input)))
                    (begin
                      (write '(funapp 2869 21))
                      (display "\n")
                      (x8705 x8704))))
                  (g8544
                   (letrec*
                    ((x8711
                      (begin
                        (write '(funapp 2873 23))
                        (display "\n")
                        ((lambda (j7404 k7405 f7406)
                           (letrec*
                            ((g8712
                              (lambda (g7403)
                                (letrec*
                                 ((g8713
                                   (letrec*
                                    ((x8714
                                      (letrec*
                                       ((x8715
                                         (begin
                                           (write '(funapp 2882 46))
                                           (display "\n")
                                           (BSET/C j7404 k7405 g7403))))
                                       (begin
                                         (write '(funapp 2883 38))
                                         (display "\n")
                                         (f7406 x8715)))))
                                    (begin
                                      (write '(funapp 2884 35))
                                      (display "\n")
                                      (boolean?/c j7404 k7405 x8714)))))
                                 g8713))))
                            g8712))
                         (begin
                           (write '(funapp 2887 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2888 23))
                           (display "\n")
                           'importer)
                         blocks-overflow?)))
                     (x8710 (input)))
                    (begin
                      (write '(funapp 2891 21))
                      (display "\n")
                      (x8711 x8710))))
                  (g8545
                   (letrec*
                    ((x8719
                      (begin
                        (write '(funapp 2895 23))
                        (display "\n")
                        ((lambda (j7410 k7411 f7412)
                           (letrec*
                            ((g8720
                              (lambda (g7407 g7408 g7409)
                                (letrec*
                                 ((g8721
                                   (letrec*
                                    ((x8722
                                      (letrec*
                                       ((x8725
                                         (begin
                                           (write '(funapp 2904 46))
                                           (display "\n")
                                           (real?/c j7410 k7411 g7407)))
                                        (x8724
                                         (begin
                                           (write '(funapp 2905 46))
                                           (display "\n")
                                           (real?/c j7410 k7411 g7408)))
                                        (x8723
                                         (begin
                                           (write '(funapp 2906 46))
                                           (display "\n")
                                           (BSET/C j7410 k7411 g7409))))
                                       (begin
                                         (write '(funapp 2907 38))
                                         (display "\n")
                                         (f7412 x8725 x8724 x8723)))))
                                    (begin
                                      (write '(funapp 2908 35))
                                      (display "\n")
                                      (BSET/C j7410 k7411 x8722)))))
                                 g8721))))
                            g8720))
                         (begin
                           (write '(funapp 2911 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2912 23))
                           (display "\n")
                           'importer)
                         blocks-move)))
                     (x8718 (input))
                     (x8717 (input))
                     (x8716 (input)))
                    (begin
                      (write '(funapp 2917 21))
                      (display "\n")
                      (x8719 x8718 x8717 x8716))))
                  (g8546
                   (letrec*
                    ((x8732
                      (begin
                        (write '(funapp 2921 23))
                        (display "\n")
                        ((lambda (j7415 k7416 f7417)
                           (letrec*
                            ((g8733
                              (lambda (g7413 g7414)
                                (letrec*
                                 ((g8734
                                   (letrec*
                                    ((x8735
                                      (letrec*
                                       ((x8737
                                         (begin
                                           (write '(funapp 2930 46))
                                           (display "\n")
                                           (POSN/C j7415 k7416 g7413)))
                                        (x8736
                                         (begin
                                           (write '(funapp 2931 46))
                                           (display "\n")
                                           (BSET/C j7415 k7416 g7414))))
                                       (begin
                                         (write '(funapp 2932 38))
                                         (display "\n")
                                         (f7417 x8737 x8736)))))
                                    (begin
                                      (write '(funapp 2933 35))
                                      (display "\n")
                                      (BSET/C j7415 k7416 x8735)))))
                                 g8734))))
                            g8733))
                         (begin
                           (write '(funapp 2936 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2937 23))
                           (display "\n")
                           'importer)
                         blocks-rotate-cw)))
                     (x8727
                      (letrec*
                       ((x8728
                         (letrec*
                          ((x8731 (input))
                           (x8729
                            (letrec*
                             ((x8730 (input)))
                             (begin
                               (write '(funapp 2945 56))
                               (display "\n")
                               (cons
                                x8730
                                (begin
                                  (write '(funapp 2945 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2946 27))
                            (display "\n")
                            (cons x8731 x8729)))))
                       (begin
                         (write '(funapp 2947 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2947 29))
                            (display "\n")
                            'posn)
                          x8728))))
                     (x8726 (input)))
                    (begin
                      (write '(funapp 2949 21))
                      (display "\n")
                      (x8732 x8727 x8726))))
                  (g8547
                   (letrec*
                    ((x8744
                      (begin
                        (write '(funapp 2953 23))
                        (display "\n")
                        ((lambda (j7420 k7421 f7422)
                           (letrec*
                            ((g8745
                              (lambda (g7418 g7419)
                                (letrec*
                                 ((g8746
                                   (letrec*
                                    ((x8747
                                      (letrec*
                                       ((x8749
                                         (begin
                                           (write '(funapp 2962 46))
                                           (display "\n")
                                           (POSN/C j7420 k7421 g7418)))
                                        (x8748
                                         (begin
                                           (write '(funapp 2963 46))
                                           (display "\n")
                                           (BSET/C j7420 k7421 g7419))))
                                       (begin
                                         (write '(funapp 2964 38))
                                         (display "\n")
                                         (f7422 x8749 x8748)))))
                                    (begin
                                      (write '(funapp 2965 35))
                                      (display "\n")
                                      (BSET/C j7420 k7421 x8747)))))
                                 g8746))))
                            g8745))
                         (begin
                           (write '(funapp 2968 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2969 23))
                           (display "\n")
                           'importer)
                         blocks-rotate-ccw)))
                     (x8739
                      (letrec*
                       ((x8740
                         (letrec*
                          ((x8743 (input))
                           (x8741
                            (letrec*
                             ((x8742 (input)))
                             (begin
                               (write '(funapp 2977 56))
                               (display "\n")
                               (cons
                                x8742
                                (begin
                                  (write '(funapp 2977 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2978 27))
                            (display "\n")
                            (cons x8743 x8741)))))
                       (begin
                         (write '(funapp 2979 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2979 29))
                            (display "\n")
                            'posn)
                          x8740))))
                     (x8738 (input)))
                    (begin
                      (write '(funapp 2981 21))
                      (display "\n")
                      (x8744 x8739 x8738))))
                  (g8548
                   (letrec*
                    ((x8752
                      (begin
                        (write '(funapp 2985 23))
                        (display "\n")
                        ((lambda (j7425 k7426 f7427)
                           (letrec*
                            ((g8753
                              (lambda (g7423 g7424)
                                (letrec*
                                 ((g8754
                                   (letrec*
                                    ((x8755
                                      (letrec*
                                       ((x8757
                                         (begin
                                           (write '(funapp 2994 46))
                                           (display "\n")
                                           (BSET/C j7425 k7426 g7423)))
                                        (x8756
                                         (begin
                                           (write '(funapp 2995 46))
                                           (display "\n")
                                           (COLOR/C j7425 k7426 g7424))))
                                       (begin
                                         (write '(funapp 2996 38))
                                         (display "\n")
                                         (f7427 x8757 x8756)))))
                                    (begin
                                      (write '(funapp 2997 35))
                                      (display "\n")
                                      (BSET/C j7425 k7426 x8755)))))
                                 g8754))))
                            g8753))
                         (begin
                           (write '(funapp 3000 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3001 23))
                           (display "\n")
                           'importer)
                         blocks-change-color)))
                     (x8751 (input))
                     (x8750 (input)))
                    (begin
                      (write '(funapp 3005 21))
                      (display "\n")
                      (x8752 x8751 x8750))))
                  (g8549
                   (letrec*
                    ((x8760
                      (begin
                        (write '(funapp 3009 23))
                        (display "\n")
                        ((lambda (j7430 k7431 f7432)
                           (letrec*
                            ((g8761
                              (lambda (g7428 g7429)
                                (letrec*
                                 ((g8762
                                   (letrec*
                                    ((x8763
                                      (letrec*
                                       ((x8765
                                         (begin
                                           (write '(funapp 3018 46))
                                           (display "\n")
                                           (BSET/C j7430 k7431 g7428)))
                                        (x8764
                                         (begin
                                           (write '(funapp 3019 46))
                                           (display "\n")
                                           (real?/c j7430 k7431 g7429))))
                                       (begin
                                         (write '(funapp 3020 38))
                                         (display "\n")
                                         (f7432 x8765 x8764)))))
                                    (begin
                                      (write '(funapp 3021 35))
                                      (display "\n")
                                      (BSET/C j7430 k7431 x8763)))))
                                 g8762))))
                            g8761))
                         (begin
                           (write '(funapp 3024 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3025 23))
                           (display "\n")
                           'importer)
                         blocks-row)))
                     (x8759 (input))
                     (x8758 (input)))
                    (begin
                      (write '(funapp 3029 21))
                      (display "\n")
                      (x8760 x8759 x8758))))
                  (g8550
                   (letrec*
                    ((x8768
                      (begin
                        (write '(funapp 3033 23))
                        (display "\n")
                        ((lambda (j7435 k7436 f7437)
                           (letrec*
                            ((g8769
                              (lambda (g7433 g7434)
                                (letrec*
                                 ((g8770
                                   (letrec*
                                    ((x8771
                                      (letrec*
                                       ((x8773
                                         (begin
                                           (write '(funapp 3042 46))
                                           (display "\n")
                                           (BSET/C j7435 k7436 g7433)))
                                        (x8772
                                         (begin
                                           (write '(funapp 3043 46))
                                           (display "\n")
                                           (real?/c j7435 k7436 g7434))))
                                       (begin
                                         (write '(funapp 3044 38))
                                         (display "\n")
                                         (f7437 x8773 x8772)))))
                                    (begin
                                      (write '(funapp 3045 35))
                                      (display "\n")
                                      (boolean?/c j7435 k7436 x8771)))))
                                 g8770))))
                            g8769))
                         (begin
                           (write '(funapp 3048 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3049 23))
                           (display "\n")
                           'importer)
                         full-row?)))
                     (x8767 (input))
                     (x8766 (input)))
                    (begin
                      (write '(funapp 3053 21))
                      (display "\n")
                      (x8768 x8767 x8766))))
                  (g8551
                   (letrec*
                    ((x8776
                      (begin
                        (write '(funapp 3057 23))
                        (display "\n")
                        ((lambda (j7440 k7441 f7442)
                           (letrec*
                            ((g8777
                              (lambda (g7438 g7439)
                                (letrec*
                                 ((g8778
                                   (letrec*
                                    ((x8779
                                      (letrec*
                                       ((x8781
                                         (begin
                                           (write '(funapp 3066 46))
                                           (display "\n")
                                           (BSET/C j7440 k7441 g7438)))
                                        (x8780
                                         (begin
                                           (write '(funapp 3067 46))
                                           (display "\n")
                                           (BSET/C j7440 k7441 g7439))))
                                       (begin
                                         (write '(funapp 3068 38))
                                         (display "\n")
                                         (f7442 x8781 x8780)))))
                                    (begin
                                      (write '(funapp 3069 35))
                                      (display "\n")
                                      (BSET/C j7440 k7441 x8779)))))
                                 g8778))))
                            g8777))
                         (begin
                           (write '(funapp 3072 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3073 23))
                           (display "\n")
                           'importer)
                         blocks-union)))
                     (x8775 (input))
                     (x8774 (input)))
                    (begin
                      (write '(funapp 3077 21))
                      (display "\n")
                      (x8776 x8775 x8774))))
                  (g8552
                   (letrec*
                    ((x8783
                      (begin
                        (write '(funapp 3081 23))
                        (display "\n")
                        ((lambda (j7444 k7445 f7446)
                           (letrec*
                            ((g8784
                              (lambda (g7443)
                                (letrec*
                                 ((g8785
                                   (letrec*
                                    ((x8786
                                      (letrec*
                                       ((x8787
                                         (begin
                                           (write '(funapp 3090 46))
                                           (display "\n")
                                           (BSET/C j7444 k7445 g7443))))
                                       (begin
                                         (write '(funapp 3091 38))
                                         (display "\n")
                                         (f7446 x8787)))))
                                    (begin
                                      (write '(funapp 3092 35))
                                      (display "\n")
                                      (real?/c j7444 k7445 x8786)))))
                                 g8785))))
                            g8784))
                         (begin
                           (write '(funapp 3095 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3096 23))
                           (display "\n")
                           'importer)
                         blocks-max-x)))
                     (x8782 (input)))
                    (begin
                      (write '(funapp 3099 21))
                      (display "\n")
                      (x8783 x8782))))
                  (g8553
                   (letrec*
                    ((x8789
                      (begin
                        (write '(funapp 3103 23))
                        (display "\n")
                        ((lambda (j7448 k7449 f7450)
                           (letrec*
                            ((g8790
                              (lambda (g7447)
                                (letrec*
                                 ((g8791
                                   (letrec*
                                    ((x8792
                                      (letrec*
                                       ((x8793
                                         (begin
                                           (write '(funapp 3112 46))
                                           (display "\n")
                                           (BSET/C j7448 k7449 g7447))))
                                       (begin
                                         (write '(funapp 3113 38))
                                         (display "\n")
                                         (f7450 x8793)))))
                                    (begin
                                      (write '(funapp 3114 35))
                                      (display "\n")
                                      (real?/c j7448 k7449 x8792)))))
                                 g8791))))
                            g8790))
                         (begin
                           (write '(funapp 3117 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3118 23))
                           (display "\n")
                           'importer)
                         blocks-min-x)))
                     (x8788 (input)))
                    (begin
                      (write '(funapp 3121 21))
                      (display "\n")
                      (x8789 x8788))))
                  (g8554
                   (letrec*
                    ((x8795
                      (begin
                        (write '(funapp 3125 23))
                        (display "\n")
                        ((lambda (j7452 k7453 f7454)
                           (letrec*
                            ((g8796
                              (lambda (g7451)
                                (letrec*
                                 ((g8797
                                   (letrec*
                                    ((x8798
                                      (letrec*
                                       ((x8799
                                         (begin
                                           (write '(funapp 3134 46))
                                           (display "\n")
                                           (BSET/C j7452 k7453 g7451))))
                                       (begin
                                         (write '(funapp 3135 38))
                                         (display "\n")
                                         (f7454 x8799)))))
                                    (begin
                                      (write '(funapp 3136 35))
                                      (display "\n")
                                      (real?/c j7452 k7453 x8798)))))
                                 g8797))))
                            g8796))
                         (begin
                           (write '(funapp 3139 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3140 23))
                           (display "\n")
                           'importer)
                         blocks-max-y)))
                     (x8794 (input)))
                    (begin
                      (write '(funapp 3143 21))
                      (display "\n")
                      (x8795 x8794))))
                  (g8555
                   (letrec*
                    ((x8801
                      (begin
                        (write '(funapp 3147 23))
                        (display "\n")
                        ((lambda (j7456 k7457 f7458)
                           (letrec*
                            ((g8802
                              (lambda (g7455)
                                (letrec*
                                 ((g8803
                                   (letrec*
                                    ((x8804
                                      (letrec*
                                       ((x8805
                                         (begin
                                           (write '(funapp 3156 46))
                                           (display "\n")
                                           (BSET/C j7456 k7457 g7455))))
                                       (begin
                                         (write '(funapp 3157 38))
                                         (display "\n")
                                         (f7458 x8805)))))
                                    (begin
                                      (write '(funapp 3158 35))
                                      (display "\n")
                                      (BSET/C j7456 k7457 x8804)))))
                                 g8803))))
                            g8802))
                         (begin
                           (write '(funapp 3161 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3162 23))
                           (display "\n")
                           'importer)
                         eliminate-full-rows)))
                     (x8800 (input)))
                    (begin
                      (write '(funapp 3165 21))
                      (display "\n")
                      (x8801 x8800))))
                  (g8556
                   (letrec*
                    ((x8817
                      (begin
                        (write '(funapp 3169 23))
                        (display "\n")
                        ((lambda (j7462 k7463 f7464)
                           (letrec*
                            ((g8818
                              (lambda (g7459 g7460 g7461)
                                (letrec*
                                 ((g8819
                                   (letrec*
                                    ((x8820
                                      (letrec*
                                       ((x8823
                                         (begin
                                           (write '(funapp 3178 46))
                                           (display "\n")
                                           (integer?/c j7462 k7463 g7459)))
                                        (x8822
                                         (begin
                                           (write '(funapp 3179 46))
                                           (display "\n")
                                           (integer?/c j7462 k7463 g7460)))
                                        (x8821
                                         (begin
                                           (write '(funapp 3180 46))
                                           (display "\n")
                                           (TETRA/C j7462 k7463 g7461))))
                                       (begin
                                         (write '(funapp 3181 38))
                                         (display "\n")
                                         (f7464 x8823 x8822 x8821)))))
                                    (begin
                                      (write '(funapp 3182 35))
                                      (display "\n")
                                      (TETRA/C j7462 k7463 x8820)))))
                                 g8819))))
                            g8818))
                         (begin
                           (write '(funapp 3185 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3186 23))
                           (display "\n")
                           'importer)
                         tetra-move)))
                     (x8816 (input))
                     (x8815 (input))
                     (x8806
                      (letrec*
                       ((x8807
                         (letrec*
                          ((x8810
                            (letrec*
                             ((x8811
                               (letrec*
                                ((x8814 (input))
                                 (x8812
                                  (letrec*
                                   ((x8813 (input)))
                                   (begin
                                     (write '(funapp 3202 36))
                                     (display "\n")
                                     (cons
                                      x8813
                                      (begin
                                        (write '(funapp 3202 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3203 33))
                                  (display "\n")
                                  (cons x8814 x8812)))))
                             (begin
                               (write '(funapp 3204 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3204 35))
                                  (display "\n")
                                  'posn)
                                x8811))))
                           (x8808
                            (letrec*
                             ((x8809 (input)))
                             (begin
                               (write '(funapp 3206 56))
                               (display "\n")
                               (cons
                                x8809
                                (begin
                                  (write '(funapp 3206 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3207 27))
                            (display "\n")
                            (cons x8810 x8808)))))
                       (begin
                         (write '(funapp 3208 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3208 29))
                            (display "\n")
                            'tetra)
                          x8807)))))
                    (begin
                      (write '(funapp 3209 21))
                      (display "\n")
                      (x8817 x8816 x8815 x8806))))
                  (g8557
                   (letrec*
                    ((x8833
                      (begin
                        (write '(funapp 3213 23))
                        (display "\n")
                        ((lambda (j7466 k7467 f7468)
                           (letrec*
                            ((g8834
                              (lambda (g7465)
                                (letrec*
                                 ((g8835
                                   (letrec*
                                    ((x8836
                                      (letrec*
                                       ((x8837
                                         (begin
                                           (write '(funapp 3222 46))
                                           (display "\n")
                                           (TETRA/C j7466 k7467 g7465))))
                                       (begin
                                         (write '(funapp 3223 38))
                                         (display "\n")
                                         (f7468 x8837)))))
                                    (begin
                                      (write '(funapp 3224 35))
                                      (display "\n")
                                      (TETRA/C j7466 k7467 x8836)))))
                                 g8835))))
                            g8834))
                         (begin
                           (write '(funapp 3227 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3228 23))
                           (display "\n")
                           'importer)
                         tetra-rotate-ccw)))
                     (x8824
                      (letrec*
                       ((x8825
                         (letrec*
                          ((x8828
                            (letrec*
                             ((x8829
                               (letrec*
                                ((x8832 (input))
                                 (x8830
                                  (letrec*
                                   ((x8831 (input)))
                                   (begin
                                     (write '(funapp 3242 36))
                                     (display "\n")
                                     (cons
                                      x8831
                                      (begin
                                        (write '(funapp 3242 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3243 33))
                                  (display "\n")
                                  (cons x8832 x8830)))))
                             (begin
                               (write '(funapp 3244 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3244 35))
                                  (display "\n")
                                  'posn)
                                x8829))))
                           (x8826
                            (letrec*
                             ((x8827 (input)))
                             (begin
                               (write '(funapp 3246 56))
                               (display "\n")
                               (cons
                                x8827
                                (begin
                                  (write '(funapp 3246 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3247 27))
                            (display "\n")
                            (cons x8828 x8826)))))
                       (begin
                         (write '(funapp 3248 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3248 29))
                            (display "\n")
                            'tetra)
                          x8825)))))
                    (begin
                      (write '(funapp 3249 21))
                      (display "\n")
                      (x8833 x8824))))
                  (g8558
                   (letrec*
                    ((x8847
                      (begin
                        (write '(funapp 3253 23))
                        (display "\n")
                        ((lambda (j7470 k7471 f7472)
                           (letrec*
                            ((g8848
                              (lambda (g7469)
                                (letrec*
                                 ((g8849
                                   (letrec*
                                    ((x8850
                                      (letrec*
                                       ((x8851
                                         (begin
                                           (write '(funapp 3262 46))
                                           (display "\n")
                                           (TETRA/C j7470 k7471 g7469))))
                                       (begin
                                         (write '(funapp 3263 38))
                                         (display "\n")
                                         (f7472 x8851)))))
                                    (begin
                                      (write '(funapp 3264 35))
                                      (display "\n")
                                      (TETRA/C j7470 k7471 x8850)))))
                                 g8849))))
                            g8848))
                         (begin
                           (write '(funapp 3267 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3268 23))
                           (display "\n")
                           'importer)
                         tetra-rotate-cw)))
                     (x8838
                      (letrec*
                       ((x8839
                         (letrec*
                          ((x8842
                            (letrec*
                             ((x8843
                               (letrec*
                                ((x8846 (input))
                                 (x8844
                                  (letrec*
                                   ((x8845 (input)))
                                   (begin
                                     (write '(funapp 3282 36))
                                     (display "\n")
                                     (cons
                                      x8845
                                      (begin
                                        (write '(funapp 3282 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3283 33))
                                  (display "\n")
                                  (cons x8846 x8844)))))
                             (begin
                               (write '(funapp 3284 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3284 35))
                                  (display "\n")
                                  'posn)
                                x8843))))
                           (x8840
                            (letrec*
                             ((x8841 (input)))
                             (begin
                               (write '(funapp 3286 56))
                               (display "\n")
                               (cons
                                x8841
                                (begin
                                  (write '(funapp 3286 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3287 27))
                            (display "\n")
                            (cons x8842 x8840)))))
                       (begin
                         (write '(funapp 3288 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3288 29))
                            (display "\n")
                            'tetra)
                          x8839)))))
                    (begin
                      (write '(funapp 3289 21))
                      (display "\n")
                      (x8847 x8838))))
                  (g8559
                   (letrec*
                    ((x8862
                      (begin
                        (write '(funapp 3293 23))
                        (display "\n")
                        ((lambda (j7475 k7476 f7477)
                           (letrec*
                            ((g8863
                              (lambda (g7473 g7474)
                                (letrec*
                                 ((g8864
                                   (letrec*
                                    ((x8865
                                      (letrec*
                                       ((x8867
                                         (begin
                                           (write '(funapp 3302 46))
                                           (display "\n")
                                           (TETRA/C j7475 k7476 g7473)))
                                        (x8866
                                         (begin
                                           (write '(funapp 3303 46))
                                           (display "\n")
                                           (BSET/C j7475 k7476 g7474))))
                                       (begin
                                         (write '(funapp 3304 38))
                                         (display "\n")
                                         (f7477 x8867 x8866)))))
                                    (begin
                                      (write '(funapp 3305 35))
                                      (display "\n")
                                      (boolean?/c j7475 k7476 x8865)))))
                                 g8864))))
                            g8863))
                         (begin
                           (write '(funapp 3308 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3309 23))
                           (display "\n")
                           'importer)
                         tetra-overlaps-blocks?)))
                     (x8853
                      (letrec*
                       ((x8854
                         (letrec*
                          ((x8857
                            (letrec*
                             ((x8858
                               (letrec*
                                ((x8861 (input))
                                 (x8859
                                  (letrec*
                                   ((x8860 (input)))
                                   (begin
                                     (write '(funapp 3323 36))
                                     (display "\n")
                                     (cons
                                      x8860
                                      (begin
                                        (write '(funapp 3323 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3324 33))
                                  (display "\n")
                                  (cons x8861 x8859)))))
                             (begin
                               (write '(funapp 3325 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3325 35))
                                  (display "\n")
                                  'posn)
                                x8858))))
                           (x8855
                            (letrec*
                             ((x8856 (input)))
                             (begin
                               (write '(funapp 3327 56))
                               (display "\n")
                               (cons
                                x8856
                                (begin
                                  (write '(funapp 3327 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3328 27))
                            (display "\n")
                            (cons x8857 x8855)))))
                       (begin
                         (write '(funapp 3329 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3329 29))
                            (display "\n")
                            'tetra)
                          x8854))))
                     (x8852 (input)))
                    (begin
                      (write '(funapp 3331 21))
                      (display "\n")
                      (x8862 x8853 x8852))))
                  (g8560
                   (letrec*
                    ((x8879
                      (begin
                        (write '(funapp 3335 23))
                        (display "\n")
                        ((lambda (j7489 k7490 f7491)
                           (letrec*
                            ((g8880
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
                                 ((g8881
                                   (letrec*
                                    ((x8882
                                      (letrec*
                                       ((x8893
                                         (begin
                                           (write '(funapp 3354 46))
                                           (display "\n")
                                           (COLOR/C j7489 k7490 g7478)))
                                        (x8892
                                         (begin
                                           (write '(funapp 3355 46))
                                           (display "\n")
                                           (real?/c j7489 k7490 g7479)))
                                        (x8891
                                         (begin
                                           (write '(funapp 3356 46))
                                           (display "\n")
                                           (real?/c j7489 k7490 g7480)))
                                        (x8890
                                         (begin
                                           (write '(funapp 3357 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7481)))
                                        (x8889
                                         (begin
                                           (write '(funapp 3358 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7482)))
                                        (x8888
                                         (begin
                                           (write '(funapp 3359 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7483)))
                                        (x8887
                                         (begin
                                           (write '(funapp 3360 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7484)))
                                        (x8886
                                         (begin
                                           (write '(funapp 3361 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7485)))
                                        (x8885
                                         (begin
                                           (write '(funapp 3362 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7486)))
                                        (x8884
                                         (begin
                                           (write '(funapp 3363 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7487)))
                                        (x8883
                                         (begin
                                           (write '(funapp 3364 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7488))))
                                       (begin
                                         (write '(funapp 3365 38))
                                         (display "\n")
                                         (f7491
                                          x8893
                                          x8892
                                          x8891
                                          x8890
                                          x8889
                                          x8888
                                          x8887
                                          x8886
                                          x8885
                                          x8884
                                          x8883)))))
                                    (begin
                                      (write '(funapp 3377 35))
                                      (display "\n")
                                      (TETRA/C j7489 k7490 x8882)))))
                                 g8881))))
                            g8880))
                         (begin
                           (write '(funapp 3380 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3381 23))
                           (display "\n")
                           'importer)
                         build-tetra-blocks)))
                     (x8878 (input))
                     (x8877 (input))
                     (x8876 (input))
                     (x8875 (input))
                     (x8874 (input))
                     (x8873 (input))
                     (x8872 (input))
                     (x8871 (input))
                     (x8870 (input))
                     (x8869 (input))
                     (x8868 (input)))
                    (begin
                      (write '(funapp 3394 21))
                      (display "\n")
                      (x8879
                       x8878
                       x8877
                       x8876
                       x8875
                       x8874
                       x8873
                       x8872
                       x8871
                       x8870
                       x8869
                       x8868))))
                  (g8561
                   (letrec*
                    ((x8904
                      (begin
                        (write '(funapp 3409 23))
                        (display "\n")
                        ((lambda (j7494 k7495 f7496)
                           (letrec*
                            ((g8905
                              (lambda (g7492 g7493)
                                (letrec*
                                 ((g8906
                                   (letrec*
                                    ((x8907
                                      (letrec*
                                       ((x8909
                                         (begin
                                           (write '(funapp 3418 46))
                                           (display "\n")
                                           (TETRA/C j7494 k7495 g7492)))
                                        (x8908
                                         (begin
                                           (write '(funapp 3419 46))
                                           (display "\n")
                                           (COLOR/C j7494 k7495 g7493))))
                                       (begin
                                         (write '(funapp 3420 38))
                                         (display "\n")
                                         (f7496 x8909 x8908)))))
                                    (begin
                                      (write '(funapp 3421 35))
                                      (display "\n")
                                      (TETRA/C j7494 k7495 x8907)))))
                                 g8906))))
                            g8905))
                         (begin
                           (write '(funapp 3424 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3425 23))
                           (display "\n")
                           'importer)
                         tetra-change-color)))
                     (x8895
                      (letrec*
                       ((x8896
                         (letrec*
                          ((x8899
                            (letrec*
                             ((x8900
                               (letrec*
                                ((x8903 (input))
                                 (x8901
                                  (letrec*
                                   ((x8902 (input)))
                                   (begin
                                     (write '(funapp 3439 36))
                                     (display "\n")
                                     (cons
                                      x8902
                                      (begin
                                        (write '(funapp 3439 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3440 33))
                                  (display "\n")
                                  (cons x8903 x8901)))))
                             (begin
                               (write '(funapp 3441 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3441 35))
                                  (display "\n")
                                  'posn)
                                x8900))))
                           (x8897
                            (letrec*
                             ((x8898 (input)))
                             (begin
                               (write '(funapp 3443 56))
                               (display "\n")
                               (cons
                                x8898
                                (begin
                                  (write '(funapp 3443 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3444 27))
                            (display "\n")
                            (cons x8899 x8897)))))
                       (begin
                         (write '(funapp 3445 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3445 29))
                            (display "\n")
                            'tetra)
                          x8896))))
                     (x8894 (input)))
                    (begin
                      (write '(funapp 3447 21))
                      (display "\n")
                      (x8904 x8895 x8894))))
                  (g8562
                   (letrec*
                    ((x8924
                      (begin
                        (write '(funapp 3451 23))
                        (display "\n")
                        ((lambda (j7499 k7500 f7501)
                           (letrec*
                            ((g8925
                              (lambda (g7497 g7498)
                                (letrec*
                                 ((g8926
                                   (letrec*
                                    ((x8927
                                      (letrec*
                                       ((x8929
                                         (begin
                                           (write '(funapp 3460 46))
                                           (display "\n")
                                           (WORLD/C j7499 k7500 g7497)))
                                        (x8928
                                         (begin
                                           (write '(funapp 3461 46))
                                           (display "\n")
                                           (string?/c j7499 k7500 g7498))))
                                       (begin
                                         (write '(funapp 3462 38))
                                         (display "\n")
                                         (f7501 x8929 x8928)))))
                                    (begin
                                      (write '(funapp 3463 35))
                                      (display "\n")
                                      (WORLD/C j7499 k7500 x8927)))))
                                 g8926))))
                            g8925))
                         (begin
                           (write '(funapp 3466 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3467 23))
                           (display "\n")
                           'importer)
                         world-key-move)))
                     (x8911
                      (letrec*
                       ((x8912
                         (letrec*
                          ((x8915
                            (letrec*
                             ((x8916
                               (letrec*
                                ((x8919
                                  (letrec*
                                   ((x8920
                                     (letrec*
                                      ((x8923 (input))
                                       (x8921
                                        (letrec*
                                         ((x8922 (input)))
                                         (begin
                                           (write '(funapp 3485 42))
                                           (display "\n")
                                           (cons
                                            x8922
                                            (begin
                                              (write '(funapp 3485 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3486 39))
                                        (display "\n")
                                        (cons x8923 x8921)))))
                                   (begin
                                     (write '(funapp 3487 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3487 41))
                                        (display "\n")
                                        'posn)
                                      x8920))))
                                 (x8917
                                  (letrec*
                                   ((x8918 (input)))
                                   (begin
                                     (write '(funapp 3491 36))
                                     (display "\n")
                                     (cons
                                      x8918
                                      (begin
                                        (write '(funapp 3491 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3492 33))
                                  (display "\n")
                                  (cons x8919 x8917)))))
                             (begin
                               (write '(funapp 3493 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3493 35))
                                  (display "\n")
                                  'tetra)
                                x8916))))
                           (x8913
                            (letrec*
                             ((x8914 (input)))
                             (begin
                               (write '(funapp 3495 56))
                               (display "\n")
                               (cons
                                x8914
                                (begin
                                  (write '(funapp 3495 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3496 27))
                            (display "\n")
                            (cons x8915 x8913)))))
                       (begin
                         (write '(funapp 3497 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3497 29))
                            (display "\n")
                            'world)
                          x8912))))
                     (x8910 (input)))
                    (begin
                      (write '(funapp 3499 21))
                      (display "\n")
                      (x8924 x8911 x8910))))
                  (g8563
                   (letrec*
                    ((x8944
                      (begin
                        (write '(funapp 3503 23))
                        (display "\n")
                        ((lambda (j7504 k7505 f7506)
                           (letrec*
                            ((g8945
                              (lambda (g7502 g7503)
                                (letrec*
                                 ((g8946
                                   (letrec*
                                    ((x8947
                                      (letrec*
                                       ((x8951
                                         (begin
                                           (write '(funapp 3512 46))
                                           (display "\n")
                                           (WORLD/C j7504 k7505 g7502)))
                                        (x8948
                                         (letrec*
                                          ((x8949
                                            (letrec*
                                             ((x8950
                                               (begin
                                                 (write '(funapp 3517 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3518 44))
                                               (display "\n")
                                               (and/c cons?/c x8950)))))
                                          (begin
                                            (write '(funapp 3519 41))
                                            (display "\n")
                                            (x8949 j7504 k7505 g7503)))))
                                       (begin
                                         (write '(funapp 3520 38))
                                         (display "\n")
                                         (f7506 x8951 x8948)))))
                                    (begin
                                      (write '(funapp 3521 35))
                                      (display "\n")
                                      (WORLD/C j7504 k7505 x8947)))))
                                 g8946))))
                            g8945))
                         (begin
                           (write '(funapp 3524 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3525 23))
                           (display "\n")
                           'importer)
                         next-world)))
                     (x8931
                      (letrec*
                       ((x8932
                         (letrec*
                          ((x8935
                            (letrec*
                             ((x8936
                               (letrec*
                                ((x8939
                                  (letrec*
                                   ((x8940
                                     (letrec*
                                      ((x8943 (input))
                                       (x8941
                                        (letrec*
                                         ((x8942 (input)))
                                         (begin
                                           (write '(funapp 3543 42))
                                           (display "\n")
                                           (cons
                                            x8942
                                            (begin
                                              (write '(funapp 3543 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3544 39))
                                        (display "\n")
                                        (cons x8943 x8941)))))
                                   (begin
                                     (write '(funapp 3545 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3545 41))
                                        (display "\n")
                                        'posn)
                                      x8940))))
                                 (x8937
                                  (letrec*
                                   ((x8938 (input)))
                                   (begin
                                     (write '(funapp 3549 36))
                                     (display "\n")
                                     (cons
                                      x8938
                                      (begin
                                        (write '(funapp 3549 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3550 33))
                                  (display "\n")
                                  (cons x8939 x8937)))))
                             (begin
                               (write '(funapp 3551 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3551 35))
                                  (display "\n")
                                  'tetra)
                                x8936))))
                           (x8933
                            (letrec*
                             ((x8934 (input)))
                             (begin
                               (write '(funapp 3553 56))
                               (display "\n")
                               (cons
                                x8934
                                (begin
                                  (write '(funapp 3553 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3554 27))
                            (display "\n")
                            (cons x8935 x8933)))))
                       (begin
                         (write '(funapp 3555 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3555 29))
                            (display "\n")
                            'world)
                          x8932))))
                     (x8930 (input)))
                    (begin
                      (write '(funapp 3557 21))
                      (display "\n")
                      (x8944 x8931 x8930))))
                  (g8564
                   (letrec*
                    ((x8965
                      (begin
                        (write '(funapp 3561 23))
                        (display "\n")
                        ((lambda (j7508 k7509 f7510)
                           (letrec*
                            ((g8966
                              (lambda (g7507)
                                (letrec*
                                 ((g8967
                                   (letrec*
                                    ((x8968
                                      (letrec*
                                       ((x8969
                                         (begin
                                           (write '(funapp 3570 46))
                                           (display "\n")
                                           (WORLD/C j7508 k7509 g7507))))
                                       (begin
                                         (write '(funapp 3571 38))
                                         (display "\n")
                                         (f7510 x8969)))))
                                    (begin
                                      (write '(funapp 3572 35))
                                      (display "\n")
                                      (BSET/C j7508 k7509 x8968)))))
                                 g8967))))
                            g8966))
                         (begin
                           (write '(funapp 3575 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3576 23))
                           (display "\n")
                           'importer)
                         ghost-blocks)))
                     (x8952
                      (letrec*
                       ((x8953
                         (letrec*
                          ((x8956
                            (letrec*
                             ((x8957
                               (letrec*
                                ((x8960
                                  (letrec*
                                   ((x8961
                                     (letrec*
                                      ((x8964 (input))
                                       (x8962
                                        (letrec*
                                         ((x8963 (input)))
                                         (begin
                                           (write '(funapp 3594 42))
                                           (display "\n")
                                           (cons
                                            x8963
                                            (begin
                                              (write '(funapp 3594 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3595 39))
                                        (display "\n")
                                        (cons x8964 x8962)))))
                                   (begin
                                     (write '(funapp 3596 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3596 41))
                                        (display "\n")
                                        'posn)
                                      x8961))))
                                 (x8958
                                  (letrec*
                                   ((x8959 (input)))
                                   (begin
                                     (write '(funapp 3600 36))
                                     (display "\n")
                                     (cons
                                      x8959
                                      (begin
                                        (write '(funapp 3600 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3601 33))
                                  (display "\n")
                                  (cons x8960 x8958)))))
                             (begin
                               (write '(funapp 3602 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3602 35))
                                  (display "\n")
                                  'tetra)
                                x8957))))
                           (x8954
                            (letrec*
                             ((x8955 (input)))
                             (begin
                               (write '(funapp 3604 56))
                               (display "\n")
                               (cons
                                x8955
                                (begin
                                  (write '(funapp 3604 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3605 27))
                            (display "\n")
                            (cons x8956 x8954)))))
                       (begin
                         (write '(funapp 3606 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3606 29))
                            (display "\n")
                            'world)
                          x8953)))))
                    (begin
                      (write '(funapp 3607 21))
                      (display "\n")
                      (x8965 x8952))))
                  (g8565
                   (letrec*
                    ((x8971
                      (begin
                        (write '(funapp 3611 23))
                        (display "\n")
                        ((lambda (j7512 k7513 f7514)
                           (letrec*
                            ((g8972
                              (lambda (g7511)
                                (letrec*
                                 ((g8973
                                   (letrec*
                                    ((x8974
                                      (letrec*
                                       ((x8975
                                         (begin
                                           (write '(funapp 3620 46))
                                           (display "\n")
                                           (any/c j7512 k7513 g7511))))
                                       (begin
                                         (write '(funapp 3621 38))
                                         (display "\n")
                                         (f7514 x8975)))))
                                    (begin
                                      (write '(funapp 3622 35))
                                      (display "\n")
                                      (boolean?/c j7512 k7513 x8974)))))
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
                         image?)))
                     (x8970 (input)))
                    (begin
                      (write '(funapp 3629 21))
                      (display "\n")
                      (x8971 x8970))))
                  (g8566
                   (letrec*
                    ((x8978
                      (begin
                        (write '(funapp 3633 23))
                        (display "\n")
                        ((lambda (j7517 k7518 f7519)
                           (letrec*
                            ((g8979
                              (lambda (g7515 g7516)
                                (letrec*
                                 ((g8980
                                   (letrec*
                                    ((x8981
                                      (letrec*
                                       ((x8983
                                         (begin
                                           (write '(funapp 3642 46))
                                           (display "\n")
                                           (image? j7517 k7518 g7515)))
                                        (x8982
                                         (begin
                                           (write '(funapp 3643 46))
                                           (display "\n")
                                           (image? j7517 k7518 g7516))))
                                       (begin
                                         (write '(funapp 3644 38))
                                         (display "\n")
                                         (f7519 x8983 x8982)))))
                                    (begin
                                      (write '(funapp 3645 35))
                                      (display "\n")
                                      (image? j7517 k7518 x8981)))))
                                 g8980))))
                            g8979))
                         (begin
                           (write '(funapp 3648 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3649 23))
                           (display "\n")
                           'importer)
                         overlay)))
                     (x8977 (input))
                     (x8976 (input)))
                    (begin
                      (write '(funapp 3653 21))
                      (display "\n")
                      (x8978 x8977 x8976))))
                  (g8567
                   (letrec*
                    ((x8987
                      (begin
                        (write '(funapp 3657 23))
                        (display "\n")
                        ((lambda (j7523 k7524 f7525)
                           (letrec*
                            ((g8988
                              (lambda (g7520 g7521 g7522)
                                (letrec*
                                 ((g8989
                                   (letrec*
                                    ((x8990
                                      (letrec*
                                       ((x8993
                                         (begin
                                           (write '(funapp 3666 46))
                                           (display "\n")
                                           (real?/c j7523 k7524 g7520)))
                                        (x8992
                                         (begin
                                           (write '(funapp 3667 46))
                                           (display "\n")
                                           (real?/c j7523 k7524 g7521)))
                                        (x8991
                                         (begin
                                           (write '(funapp 3668 46))
                                           (display "\n")
                                           (string?/c j7523 k7524 g7522))))
                                       (begin
                                         (write '(funapp 3669 38))
                                         (display "\n")
                                         (f7525 x8993 x8992 x8991)))))
                                    (begin
                                      (write '(funapp 3670 35))
                                      (display "\n")
                                      (image? j7523 k7524 x8990)))))
                                 g8989))))
                            g8988))
                         (begin
                           (write '(funapp 3673 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3674 23))
                           (display "\n")
                           'importer)
                         circle)))
                     (x8986 (input))
                     (x8985 (input))
                     (x8984 (input)))
                    (begin
                      (write '(funapp 3679 21))
                      (display "\n")
                      (x8987 x8986 x8985 x8984))))
                  (g8568
                   (letrec*
                    ((x8998
                      (begin
                        (write '(funapp 3683 23))
                        (display "\n")
                        ((lambda (j7530 k7531 f7532)
                           (letrec*
                            ((g8999
                              (lambda (g7526 g7527 g7528 g7529)
                                (letrec*
                                 ((g9000
                                   (letrec*
                                    ((x9001
                                      (letrec*
                                       ((x9005
                                         (begin
                                           (write '(funapp 3692 46))
                                           (display "\n")
                                           (real?/c j7530 k7531 g7526)))
                                        (x9004
                                         (begin
                                           (write '(funapp 3693 46))
                                           (display "\n")
                                           (real?/c j7530 k7531 g7527)))
                                        (x9003
                                         (begin
                                           (write '(funapp 3694 46))
                                           (display "\n")
                                           (COLOR/C j7530 k7531 g7528)))
                                        (x9002
                                         (begin
                                           (write '(funapp 3695 46))
                                           (display "\n")
                                           (COLOR/C j7530 k7531 g7529))))
                                       (begin
                                         (write '(funapp 3696 38))
                                         (display "\n")
                                         (f7532 x9005 x9004 x9003 x9002)))))
                                    (begin
                                      (write '(funapp 3697 35))
                                      (display "\n")
                                      (image? j7530 k7531 x9001)))))
                                 g9000))))
                            g8999))
                         (begin
                           (write '(funapp 3700 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3701 23))
                           (display "\n")
                           'importer)
                         rectangle)))
                     (x8997 (input))
                     (x8996 (input))
                     (x8995 (input))
                     (x8994 (input)))
                    (begin
                      (write '(funapp 3707 21))
                      (display "\n")
                      (x8998 x8997 x8996 x8995 x8994))))
                  (g8569
                   (letrec*
                    ((x9010
                      (begin
                        (write '(funapp 3711 23))
                        (display "\n")
                        ((lambda (j7537 k7538 f7539)
                           (letrec*
                            ((g9011
                              (lambda (g7533 g7534 g7535 g7536)
                                (letrec*
                                 ((g9012
                                   (letrec*
                                    ((x9013
                                      (letrec*
                                       ((x9017
                                         (begin
                                           (write '(funapp 3720 46))
                                           (display "\n")
                                           (image/c j7537 k7538 g7533)))
                                        (x9016
                                         (begin
                                           (write '(funapp 3721 46))
                                           (display "\n")
                                           (real?/c j7537 k7538 g7534)))
                                        (x9015
                                         (begin
                                           (write '(funapp 3722 46))
                                           (display "\n")
                                           (real?/c j7537 k7538 g7535)))
                                        (x9014
                                         (begin
                                           (write '(funapp 3723 46))
                                           (display "\n")
                                           (image/c j7537 k7538 g7536))))
                                       (begin
                                         (write '(funapp 3724 38))
                                         (display "\n")
                                         (f7539 x9017 x9016 x9015 x9014)))))
                                    (begin
                                      (write '(funapp 3725 35))
                                      (display "\n")
                                      (image/c j7537 k7538 x9013)))))
                                 g9012))))
                            g9011))
                         (begin
                           (write '(funapp 3728 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3729 23))
                           (display "\n")
                           'importer)
                         place-image)))
                     (x9009 (input))
                     (x9008 (input))
                     (x9007 (input))
                     (x9006 (input)))
                    (begin
                      (write '(funapp 3735 21))
                      (display "\n")
                      (x9010 x9009 x9008 x9007 x9006))))
                  (g8570
                   (letrec*
                    ((x9020
                      (begin
                        (write '(funapp 3739 23))
                        (display "\n")
                        ((lambda (j7542 k7543 f7544)
                           (letrec*
                            ((g9021
                              (lambda (g7540 g7541)
                                (letrec*
                                 ((g9022
                                   (letrec*
                                    ((x9023
                                      (letrec*
                                       ((x9025
                                         (begin
                                           (write '(funapp 3748 46))
                                           (display "\n")
                                           (real?/c j7542 k7543 g7540)))
                                        (x9024
                                         (begin
                                           (write '(funapp 3749 46))
                                           (display "\n")
                                           (real?/c j7542 k7543 g7541))))
                                       (begin
                                         (write '(funapp 3750 38))
                                         (display "\n")
                                         (f7544 x9025 x9024)))))
                                    (begin
                                      (write '(funapp 3751 35))
                                      (display "\n")
                                      (image? j7542 k7543 x9023)))))
                                 g9022))))
                            g9021))
                         (begin
                           (write '(funapp 3754 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3755 23))
                           (display "\n")
                           'importer)
                         empty-scene)))
                     (x9019 (input))
                     (x9018 (input)))
                    (begin
                      (write '(funapp 3759 21))
                      (display "\n")
                      (x9020 x9019 x9018))))
                  (g8571
                   (letrec*
                    ((x9027
                      (begin
                        (write '(funapp 3763 23))
                        (display "\n")
                        ((lambda (j7546 k7547 f7548)
                           (letrec*
                            ((g9028
                              (lambda (g7545)
                                (letrec*
                                 ((g9029
                                   (letrec*
                                    ((x9030
                                      (letrec*
                                       ((x9031
                                         (letrec*
                                          ((x9032
                                            (letrec*
                                             ((x9033
                                               (begin
                                                 (write '(funapp 3776 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3777 44))
                                               (display "\n")
                                               (and/c cons?/c x9033)))))
                                          (begin
                                            (write '(funapp 3778 41))
                                            (display "\n")
                                            (x9032 j7546 k7547 g7545)))))
                                       (begin
                                         (write '(funapp 3779 38))
                                         (display "\n")
                                         (f7548 x9031)))))
                                    (begin
                                      (write '(funapp 3780 35))
                                      (display "\n")
                                      (TETRA/C j7546 k7547 x9030)))))
                                 g9029))))
                            g9028))
                         (begin
                           (write '(funapp 3783 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3784 23))
                           (display "\n")
                           'importer)
                         list-pick-random)))
                     (x9026 (input)))
                    (begin
                      (write '(funapp 3787 21))
                      (display "\n")
                      (x9027 x9026))))
                  (g8572
                   (begin
                     (write '(funapp 3788 26))
                     (display "\n")
                     (integer?/c
                      (begin (write '(funapp 3788 37)) (display "\n") 'module)
                      (begin
                        (write '(funapp 3788 45))
                        (display "\n")
                        'importer)
                      neg-1)))
                  (g8573
                   (letrec*
                    ((x9047
                      (begin
                        (write '(funapp 3792 23))
                        (display "\n")
                        ((lambda (j7550 k7551 f7552)
                           (letrec*
                            ((g9048
                              (lambda (g7549)
                                (letrec*
                                 ((g9049
                                   (letrec*
                                    ((x9050
                                      (letrec*
                                       ((x9051
                                         (begin
                                           (write '(funapp 3801 46))
                                           (display "\n")
                                           (WORLD/C j7550 k7551 g7549))))
                                       (begin
                                         (write '(funapp 3802 38))
                                         (display "\n")
                                         (f7552 x9051)))))
                                    (begin
                                      (write '(funapp 3803 35))
                                      (display "\n")
                                      (image/c j7550 k7551 x9050)))))
                                 g9049))))
                            g9048))
                         (begin
                           (write '(funapp 3806 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3807 23))
                           (display "\n")
                           'importer)
                         world->image)))
                     (x9034
                      (letrec*
                       ((x9035
                         (letrec*
                          ((x9038
                            (letrec*
                             ((x9039
                               (letrec*
                                ((x9042
                                  (letrec*
                                   ((x9043
                                     (letrec*
                                      ((x9046 (input))
                                       (x9044
                                        (letrec*
                                         ((x9045 (input)))
                                         (begin
                                           (write '(funapp 3825 42))
                                           (display "\n")
                                           (cons
                                            x9045
                                            (begin
                                              (write '(funapp 3825 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3826 39))
                                        (display "\n")
                                        (cons x9046 x9044)))))
                                   (begin
                                     (write '(funapp 3827 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3827 41))
                                        (display "\n")
                                        'posn)
                                      x9043))))
                                 (x9040
                                  (letrec*
                                   ((x9041 (input)))
                                   (begin
                                     (write '(funapp 3831 36))
                                     (display "\n")
                                     (cons
                                      x9041
                                      (begin
                                        (write '(funapp 3831 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3832 33))
                                  (display "\n")
                                  (cons x9042 x9040)))))
                             (begin
                               (write '(funapp 3833 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3833 35))
                                  (display "\n")
                                  'tetra)
                                x9039))))
                           (x9036
                            (letrec*
                             ((x9037 (input)))
                             (begin
                               (write '(funapp 3835 56))
                               (display "\n")
                               (cons
                                x9037
                                (begin
                                  (write '(funapp 3835 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3836 27))
                            (display "\n")
                            (cons x9038 x9036)))))
                       (begin
                         (write '(funapp 3837 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3837 29))
                            (display "\n")
                            'world)
                          x9035)))))
                    (begin
                      (write '(funapp 3838 21))
                      (display "\n")
                      (x9047 x9034))))
                  (g8574
                   (letrec*
                    ((x9053
                      (begin
                        (write '(funapp 3842 23))
                        (display "\n")
                        ((lambda (j7554 k7555 f7556)
                           (letrec*
                            ((g9054
                              (lambda (g7553)
                                (letrec*
                                 ((g9055
                                   (letrec*
                                    ((x9056
                                      (letrec*
                                       ((x9057
                                         (begin
                                           (write '(funapp 3851 46))
                                           (display "\n")
                                           (BSET/C j7554 k7555 g7553))))
                                       (begin
                                         (write '(funapp 3852 38))
                                         (display "\n")
                                         (f7556 x9057)))))
                                    (begin
                                      (write '(funapp 3853 35))
                                      (display "\n")
                                      (image/c j7554 k7555 x9056)))))
                                 g9055))))
                            g9054))
                         (begin
                           (write '(funapp 3856 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3857 23))
                           (display "\n")
                           'importer)
                         blocks->image)))
                     (x9052 (input)))
                    (begin
                      (write '(funapp 3860 21))
                      (display "\n")
                      (x9053 x9052))))
                  (g8575
                   (letrec*
                    ((x9065
                      (begin
                        (write '(funapp 3864 23))
                        (display "\n")
                        ((lambda (j7558 k7559 f7560)
                           (letrec*
                            ((g9066
                              (lambda (g7557)
                                (letrec*
                                 ((g9067
                                   (letrec*
                                    ((x9068
                                      (letrec*
                                       ((x9069
                                         (begin
                                           (write '(funapp 3873 46))
                                           (display "\n")
                                           (BLOCK/C j7558 k7559 g7557))))
                                       (begin
                                         (write '(funapp 3874 38))
                                         (display "\n")
                                         (f7560 x9069)))))
                                    (begin
                                      (write '(funapp 3875 35))
                                      (display "\n")
                                      (image/c j7558 k7559 x9068)))))
                                 g9067))))
                            g9066))
                         (begin
                           (write '(funapp 3878 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3879 23))
                           (display "\n")
                           'importer)
                         block->image)))
                     (x9058
                      (letrec*
                       ((x9059
                         (letrec*
                          ((x9064 (input))
                           (x9060
                            (letrec*
                             ((x9063 (input))
                              (x9061
                               (letrec*
                                ((x9062 (input)))
                                (begin
                                  (write '(funapp 3890 59))
                                  (display "\n")
                                  (cons
                                   x9062
                                   (begin
                                     (write '(funapp 3890 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 3891 30))
                               (display "\n")
                               (cons x9063 x9061)))))
                          (begin
                            (write '(funapp 3892 27))
                            (display "\n")
                            (cons x9064 x9060)))))
                       (begin
                         (write '(funapp 3893 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3893 29))
                            (display "\n")
                            'block)
                          x9059)))))
                    (begin
                      (write '(funapp 3894 21))
                      (display "\n")
                      (x9065 x9058))))
                  (g8576
                   (letrec*
                    ((x9078
                      (begin
                        (write '(funapp 3898 23))
                        (display "\n")
                        ((lambda (j7563 k7564 f7565)
                           (letrec*
                            ((g9079
                              (lambda (g7561 g7562)
                                (letrec*
                                 ((g9080
                                   (letrec*
                                    ((x9081
                                      (letrec*
                                       ((x9083
                                         (begin
                                           (write '(funapp 3907 46))
                                           (display "\n")
                                           (BLOCK/C j7563 k7564 g7561)))
                                        (x9082
                                         (begin
                                           (write '(funapp 3908 46))
                                           (display "\n")
                                           (image/c j7563 k7564 g7562))))
                                       (begin
                                         (write '(funapp 3909 38))
                                         (display "\n")
                                         (f7565 x9083 x9082)))))
                                    (begin
                                      (write '(funapp 3910 35))
                                      (display "\n")
                                      (image/c j7563 k7564 x9081)))))
                                 g9080))))
                            g9079))
                         (begin
                           (write '(funapp 3913 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3914 23))
                           (display "\n")
                           'importer)
                         place-block)))
                     (x9071
                      (letrec*
                       ((x9072
                         (letrec*
                          ((x9077 (input))
                           (x9073
                            (letrec*
                             ((x9076 (input))
                              (x9074
                               (letrec*
                                ((x9075 (input)))
                                (begin
                                  (write '(funapp 3925 59))
                                  (display "\n")
                                  (cons
                                   x9075
                                   (begin
                                     (write '(funapp 3925 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 3926 30))
                               (display "\n")
                               (cons x9076 x9074)))))
                          (begin
                            (write '(funapp 3927 27))
                            (display "\n")
                            (cons x9077 x9073)))))
                       (begin
                         (write '(funapp 3928 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3928 29))
                            (display "\n")
                            'block)
                          x9072))))
                     (x9070 (input)))
                    (begin
                      (write '(funapp 3930 21))
                      (display "\n")
                      (x9078 x9071 x9070))))
                  (g8577
                   (letrec*
                    ((x9085
                      (begin
                        (write '(funapp 3934 23))
                        (display "\n")
                        ((lambda (j7567 k7568 f7569)
                           (letrec*
                            ((g9086
                              (lambda (g7566)
                                (letrec*
                                 ((g9087
                                   (letrec*
                                    ((x9088
                                      (letrec*
                                       ((x9089
                                         (letrec*
                                          ((x9090
                                            (letrec*
                                             ((x9091
                                               (begin
                                                 (write '(funapp 3947 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3948 44))
                                               (display "\n")
                                               (and/c cons?/c x9091)))))
                                          (begin
                                            (write '(funapp 3949 41))
                                            (display "\n")
                                            (x9090 j7567 k7568 g7566)))))
                                       (begin
                                         (write '(funapp 3950 38))
                                         (display "\n")
                                         (f7569 x9089)))))
                                    (begin
                                      (write '(funapp 3951 35))
                                      (display "\n")
                                      (WORLD/C j7567 k7568 x9088)))))
                                 g9087))))
                            g9086))
                         (begin
                           (write '(funapp 3954 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3955 23))
                           (display "\n")
                           'importer)
                         world0)))
                     (x9084 (input)))
                    (begin
                      (write '(funapp 3958 21))
                      (display "\n")
                      (x9085 x9084)))))
                 g8577))))
             g7606))))
         g7604)))
      g7603))))
