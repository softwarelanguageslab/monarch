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
                       (if cnd
                         (letrec*
                          ((g7922
                            (begin
                              (write '(funapp 930 43))
                              (display "\n")
                              (proc))))
                          g7922)
                         (if cnd
                           (letrec*
                            ((g7923
                              (letrec*
                               ((x7924
                                 (begin
                                   (write '(funapp 934 48))
                                   (display "\n")
                                   (car args))))
                               (begin
                                 (write '(funapp 934 61))
                                 (display "\n")
                                 (proc x7924)))))
                            g7923)
                           (if cnd
                             (letrec*
                              ((g7925
                                (letrec*
                                 ((x7927
                                   (begin
                                     (write '(funapp 940 42))
                                     (display "\n")
                                     (car args)))
                                  (x7926
                                   (begin
                                     (write '(funapp 940 61))
                                     (display "\n")
                                     (cadr args))))
                                 (begin
                                   (write '(funapp 941 34))
                                   (display "\n")
                                   (proc x7927 x7926)))))
                              g7925)
                             (if cnd
                               (letrec*
                                ((g7928
                                  (letrec*
                                   ((x7931
                                     (begin
                                       (write '(funapp 947 44))
                                       (display "\n")
                                       (car args)))
                                    (x7930
                                     (begin
                                       (write '(funapp 948 44))
                                       (display "\n")
                                       (cadr args)))
                                    (x7929
                                     (begin
                                       (write '(funapp 949 44))
                                       (display "\n")
                                       (caddr args))))
                                   (begin
                                     (write '(funapp 950 36))
                                     (display "\n")
                                     (proc x7931 x7930 x7929)))))
                                g7928)
                               (if cnd
                                 (letrec*
                                  ((g7932
                                    (letrec*
                                     ((x7936
                                       (begin
                                         (write '(funapp 956 46))
                                         (display "\n")
                                         (car args)))
                                      (x7935
                                       (begin
                                         (write '(funapp 957 46))
                                         (display "\n")
                                         (cadr args)))
                                      (x7934
                                       (begin
                                         (write '(funapp 958 46))
                                         (display "\n")
                                         (caddr args)))
                                      (x7933
                                       (begin
                                         (write '(funapp 959 46))
                                         (display "\n")
                                         (cadddr args))))
                                     (begin
                                       (write '(funapp 960 38))
                                       (display "\n")
                                       (proc x7936 x7935 x7934 x7933)))))
                                  g7932)
                                 (if cnd
                                   (letrec*
                                    ((g7937
                                      (letrec*
                                       ((x7943
                                         (begin
                                           (write '(funapp 966 48))
                                           (display "\n")
                                           (car args)))
                                        (x7942
                                         (begin
                                           (write '(funapp 967 48))
                                           (display "\n")
                                           (cadr args)))
                                        (x7941
                                         (begin
                                           (write '(funapp 968 48))
                                           (display "\n")
                                           (caddr args)))
                                        (x7940
                                         (begin
                                           (write '(funapp 969 48))
                                           (display "\n")
                                           (cadddr args)))
                                        (x7938
                                         (letrec*
                                          ((x7939
                                            (begin
                                              (write '(funapp 972 51))
                                              (display "\n")
                                              (cddddr args))))
                                          (begin
                                            (write '(funapp 973 43))
                                            (display "\n")
                                            (car x7939)))))
                                       (begin
                                         (write '(funapp 974 40))
                                         (display "\n")
                                         (proc
                                          x7943
                                          x7942
                                          x7941
                                          x7940
                                          x7938)))))
                                    g7937)
                                   (if cnd
                                     (letrec*
                                      ((g7944
                                        (letrec*
                                         ((x7952
                                           (begin
                                             (write '(funapp 980 50))
                                             (display "\n")
                                             (car args)))
                                          (x7951
                                           (begin
                                             (write '(funapp 981 50))
                                             (display "\n")
                                             (cadr args)))
                                          (x7950
                                           (begin
                                             (write '(funapp 982 50))
                                             (display "\n")
                                             (caddr args)))
                                          (x7949
                                           (begin
                                             (write '(funapp 983 50))
                                             (display "\n")
                                             (cadddr args)))
                                          (x7947
                                           (letrec*
                                            ((x7948
                                              (begin
                                                (write '(funapp 986 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 987 45))
                                              (display "\n")
                                              (car x7948))))
                                          (x7945
                                           (letrec*
                                            ((x7946
                                              (begin
                                                (write '(funapp 990 53))
                                                (display "\n")
                                                (cddddr args))))
                                            (begin
                                              (write '(funapp 991 45))
                                              (display "\n")
                                              (cadr x7946)))))
                                         (begin
                                           (write '(funapp 992 42))
                                           (display "\n")
                                           (proc
                                            x7952
                                            x7951
                                            x7950
                                            x7949
                                            x7947
                                            x7945)))))
                                      g7944)
                                     (if cnd
                                       (letrec*
                                        ((g7953
                                          (letrec*
                                           ((x7963
                                             (begin
                                               (write '(funapp 1004 52))
                                               (display "\n")
                                               (car args)))
                                            (x7962
                                             (begin
                                               (write '(funapp 1005 52))
                                               (display "\n")
                                               (cadr args)))
                                            (x7961
                                             (begin
                                               (write '(funapp 1006 52))
                                               (display "\n")
                                               (caddr args)))
                                            (x7960
                                             (begin
                                               (write '(funapp 1007 52))
                                               (display "\n")
                                               (cadddr args)))
                                            (x7958
                                             (letrec*
                                              ((x7959
                                                (begin
                                                  (write '(funapp 1010 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1011 47))
                                                (display "\n")
                                                (car x7959))))
                                            (x7956
                                             (letrec*
                                              ((x7957
                                                (begin
                                                  (write '(funapp 1014 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1015 47))
                                                (display "\n")
                                                (cadr x7957))))
                                            (x7954
                                             (letrec*
                                              ((x7955
                                                (begin
                                                  (write '(funapp 1018 55))
                                                  (display "\n")
                                                  (cddddr args))))
                                              (begin
                                                (write '(funapp 1019 47))
                                                (display "\n")
                                                (caddr x7955)))))
                                           (begin
                                             (write '(funapp 1020 44))
                                             (display "\n")
                                             (proc
                                              x7963
                                              x7962
                                              x7961
                                              x7960
                                              x7958
                                              x7956
                                              x7954)))))
                                        g7953)
                                       (letrec*
                                        ((g7964
                                          (begin
                                            (write '(funapp 1030 49))
                                            (display "\n")
                                            (error "Unsupported call."))))
                                        g7964)))))))))))
                     g7919)))
                 (member
                  (lambda (e l)
                    (letrec*
                     ((g7965
                       (letrec*
                        ((x7967
                          (begin
                            (write '(funapp 1036 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1036 59))
                          (display "\n")
                          (assert x7967))))
                      (g7966
                       (letrec*
                        ((x-cnd7968
                          (begin
                            (write '(funapp 1039 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd7968
                          #f
                          (letrec*
                           ((x-cnd7969
                             (letrec*
                              ((x7970
                                (begin
                                  (write '(funapp 1044 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1044 57))
                                (display "\n")
                                (equal? x7970 e)))))
                           (if x-cnd7969
                             l
                             (letrec*
                              ((x7971
                                (begin
                                  (write '(funapp 1047 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1047 57))
                                (display "\n")
                                (member e x7971)))))))))
                     g7966)))
                 (cddddr
                  (lambda (x)
                    (letrec*
                     ((g7972
                       (letrec*
                        ((x7973
                          (letrec*
                           ((x7974
                             (letrec*
                              ((x7975
                                (begin
                                  (write '(funapp 1056 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1056 63))
                                (display "\n")
                                (cdr x7975)))))
                           (begin
                             (write '(funapp 1057 28))
                             (display "\n")
                             (cdr x7974)))))
                        (begin
                          (write '(funapp 1058 25))
                          (display "\n")
                          (cdr x7973)))))
                     g7972)))
                 (cadddr
                  (lambda (x)
                    (letrec*
                     ((g7976
                       (letrec*
                        ((x7977
                          (letrec*
                           ((x7978
                             (letrec*
                              ((x7979
                                (begin
                                  (write '(funapp 1067 53))
                                  (display "\n")
                                  (cdr x))))
                              (begin
                                (write '(funapp 1067 63))
                                (display "\n")
                                (cdr x7979)))))
                           (begin
                             (write '(funapp 1068 28))
                             (display "\n")
                             (cdr x7978)))))
                        (begin
                          (write '(funapp 1069 25))
                          (display "\n")
                          (car x7977)))))
                     g7976)))
                 (int-top
                  (lambda ()
                    (letrec*
                     ((g7980
                       (begin
                         (write '(funapp 1071 55))
                         (display "\n")
                         (random 42))))
                     g7980)))
                 (zero?
                  (lambda (x)
                    (letrec*
                     ((g7981
                       (letrec*
                        ((x7983
                          (begin
                            (write '(funapp 1075 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1075 61))
                          (display "\n")
                          (assert x7983))))
                      (g7982
                       (begin
                         (write '(funapp 1076 30))
                         (display "\n")
                         (= x 0))))
                     g7982)))
                 (string>=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g7984
                       (letrec*
                        ((val7253
                          (begin
                            (write '(funapp 1083 35))
                            (display "\n")
                            (string>? s1 s2))))
                        (letrec*
                         ((g7985
                           (if val7253
                             val7253
                             (begin
                               (write '(funapp 1085 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g7985))))
                     g7984)))
                 (cadr
                  (lambda (x)
                    (letrec*
                     ((g7986
                       (letrec*
                        ((x7987
                          (begin
                            (write '(funapp 1091 47))
                            (display "\n")
                            (cdr x))))
                        (begin
                          (write '(funapp 1091 57))
                          (display "\n")
                          (car x7987)))))
                     g7986)))
                 (__toplevel_car car)
                 (list?
                  (lambda (l)
                    (letrec*
                     ((g7988
                       (letrec*
                        ((val7254
                          (letrec*
                           ((x7991
                             (begin
                               (write '(funapp 1101 36))
                               (display "\n")
                               (pair? l)))
                            (x7989
                             (letrec*
                              ((x7990
                                (begin
                                  (write '(funapp 1102 53))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1102 63))
                                (display "\n")
                                (list? x7990)))))
                           (begin
                             (write '(funapp 1103 28))
                             (display "\n")
                             (and x7991 x7989)))))
                        (letrec*
                         ((g7992
                           (if val7254
                             val7254
                             (begin
                               (write '(funapp 1105 54))
                               (display "\n")
                               (null? l)))))
                         g7992))))
                     g7988)))
                 (cddaar
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
                                  (write '(funapp 1115 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1115 63))
                                (display "\n")
                                (car x7996)))))
                           (begin
                             (write '(funapp 1116 28))
                             (display "\n")
                             (cdr x7995)))))
                        (begin
                          (write '(funapp 1117 25))
                          (display "\n")
                          (cdr x7994)))))
                     g7993)))
                 (char-numeric?
                  (lambda (c)
                    (letrec*
                     ((g7997
                       (letrec*
                        ((x-cnd7998
                          (letrec*
                           ((x7999 #\0))
                           (begin
                             (write '(funapp 1124 60))
                             (display "\n")
                             (char<=? x7999 c)))))
                        (if x-cnd7998
                          (letrec*
                           ((x8000 #\9))
                           (begin
                             (write '(funapp 1126 50))
                             (display "\n")
                             (char<=? c x8000)))
                          #f))))
                     g7997)))
                 (__toplevel_cons cons)
                 (assv
                  (lambda (k l)
                    (letrec*
                     ((g8001
                       (letrec*
                        ((x8003
                          (begin
                            (write '(funapp 1133 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1133 59))
                          (display "\n")
                          (assert x8003))))
                      (g8002
                       (letrec*
                        ((x-cnd8004
                          (begin
                            (write '(funapp 1136 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8004
                          #f
                          (letrec*
                           ((x-cnd8005
                             (letrec*
                              ((x8006
                                (begin
                                  (write '(funapp 1141 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1141 58))
                                (display "\n")
                                (eqv? x8006 k)))))
                           (if x-cnd8005
                             (begin
                               (write '(funapp 1143 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x8007
                                (begin
                                  (write '(funapp 1144 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1144 57))
                                (display "\n")
                                (assq k x8007)))))))))
                     g8002)))
                 (not (lambda (x) (letrec* ((g8008 (if x #f #t))) g8008)))
                 (__toplevel_append
                  (lambda (l1 l2)
                    (letrec*
                     ((g8009
                       (begin
                         (write '(funapp 1148 52))
                         (display "\n")
                         (append l1 l2))))
                     g8009)))
                 (memq
                  (lambda (e l)
                    (letrec*
                     ((g8010
                       (letrec*
                        ((x8012
                          (begin
                            (write '(funapp 1152 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1152 59))
                          (display "\n")
                          (assert x8012))))
                      (g8011
                       (letrec*
                        ((x-cnd8013
                          (begin
                            (write '(funapp 1155 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8013
                          #f
                          (letrec*
                           ((x-cnd8014
                             (letrec*
                              ((x8015
                                (begin
                                  (write '(funapp 1160 47))
                                  (display "\n")
                                  (car l))))
                              (begin
                                (write '(funapp 1160 57))
                                (display "\n")
                                (eq? x8015 e)))))
                           (if x-cnd8014
                             l
                             (letrec*
                              ((x8016
                                (begin
                                  (write '(funapp 1163 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1163 57))
                                (display "\n")
                                (memq e x8016)))))))))
                     g8011)))
                 (cadaar
                  (lambda (x)
                    (letrec*
                     ((g8017
                       (letrec*
                        ((x8018
                          (letrec*
                           ((x8019
                             (letrec*
                              ((x8020
                                (begin
                                  (write '(funapp 1172 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1172 63))
                                (display "\n")
                                (car x8020)))))
                           (begin
                             (write '(funapp 1173 28))
                             (display "\n")
                             (cdr x8019)))))
                        (begin
                          (write '(funapp 1174 25))
                          (display "\n")
                          (car x8018)))))
                     g8017)))
                 (length
                  (lambda (l)
                    (letrec*
                     ((g8021
                       (letrec*
                        ((x8023
                          (begin
                            (write '(funapp 1179 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1179 59))
                          (display "\n")
                          (assert x8023))))
                      (g8022
                       (letrec*
                        ((rec
                          (lambda (l)
                            (letrec*
                             ((g8024
                               (letrec*
                                ((x-cnd8025
                                  (begin
                                    (write '(funapp 1187 45))
                                    (display "\n")
                                    (null? l))))
                                (if x-cnd8025
                                  0
                                  (letrec*
                                   ((x8026
                                     (letrec*
                                      ((x8027
                                        (begin
                                          (write '(funapp 1192 55))
                                          (display "\n")
                                          (cdr l))))
                                      (begin
                                        (write '(funapp 1192 65))
                                        (display "\n")
                                        (rec x8027)))))
                                   (begin
                                     (write '(funapp 1193 36))
                                     (display "\n")
                                     (+ 1 x8026)))))))
                             g8024))))
                        (letrec*
                         ((g8028
                           (begin
                             (write '(funapp 1195 42))
                             (display "\n")
                             (rec l))))
                         g8028))))
                     g8022)))
                 (char-ci<=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8029
                       (letrec*
                        ((x8032
                          (begin
                            (write '(funapp 1200 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1200 60))
                          (display "\n")
                          (assert x8032))))
                      (g8030
                       (letrec*
                        ((x8033
                          (begin
                            (write '(funapp 1201 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1201 60))
                          (display "\n")
                          (assert x8033))))
                      (g8031
                       (letrec*
                        ((val7255
                          (begin
                            (write '(funapp 1204 35))
                            (display "\n")
                            (char-ci<? c1 c2))))
                        (letrec*
                         ((g8034
                           (if val7255
                             val7255
                             (begin
                               (write '(funapp 1206 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g8034))))
                     g8031)))
                 (string>?
                  (lambda (s1 s2)
                    (letrec*
                     ((g8035
                       (letrec*
                        ((x8036
                          (begin
                            (write '(funapp 1213 41))
                            (display "\n")
                            (string<=? s1 s2))))
                        (begin
                          (write '(funapp 1213 61))
                          (display "\n")
                          (not x8036)))))
                     g8035)))
                 (cdadr
                  (lambda (x)
                    (letrec*
                     ((g8037
                       (letrec*
                        ((x8038
                          (letrec*
                           ((x8039
                             (begin
                               (write '(funapp 1220 50))
                               (display "\n")
                               (cdr x))))
                           (begin
                             (write '(funapp 1220 60))
                             (display "\n")
                             (car x8039)))))
                        (begin
                          (write '(funapp 1221 25))
                          (display "\n")
                          (cdr x8038)))))
                     g8037)))
                 (assoc
                  (lambda (k l)
                    (letrec*
                     ((g8040
                       (letrec*
                        ((x8042
                          (begin
                            (write '(funapp 1226 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1226 59))
                          (display "\n")
                          (assert x8042))))
                      (g8041
                       (letrec*
                        ((x-cnd8043
                          (begin
                            (write '(funapp 1229 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8043
                          #f
                          (letrec*
                           ((x-cnd8044
                             (letrec*
                              ((x8045
                                (begin
                                  (write '(funapp 1234 47))
                                  (display "\n")
                                  (caar l))))
                              (begin
                                (write '(funapp 1234 58))
                                (display "\n")
                                (equal? x8045 k)))))
                           (if x-cnd8044
                             (begin
                               (write '(funapp 1236 30))
                               (display "\n")
                               (car l))
                             (letrec*
                              ((x8046
                                (begin
                                  (write '(funapp 1237 47))
                                  (display "\n")
                                  (cdr l))))
                              (begin
                                (write '(funapp 1237 57))
                                (display "\n")
                                (assoc k x8046)))))))))
                     g8041)))
                 (caar
                  (lambda (x)
                    (letrec*
                     ((g8047
                       (letrec*
                        ((x8048
                          (begin
                            (write '(funapp 1242 47))
                            (display "\n")
                            (car x))))
                        (begin
                          (write '(funapp 1242 57))
                          (display "\n")
                          (car x8048)))))
                     g8047)))
                 (char>?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8049
                       (letrec*
                        ((x8052
                          (begin
                            (write '(funapp 1247 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1247 60))
                          (display "\n")
                          (assert x8052))))
                      (g8050
                       (letrec*
                        ((x8053
                          (begin
                            (write '(funapp 1248 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1248 60))
                          (display "\n")
                          (assert x8053))))
                      (g8051
                       (letrec*
                        ((x8054
                          (begin
                            (write '(funapp 1249 47))
                            (display "\n")
                            (char<=? c1 c2))))
                        (begin
                          (write '(funapp 1249 65))
                          (display "\n")
                          (not x8054)))))
                     g8051)))
                 (string<=?
                  (lambda (s1 s2)
                    (letrec*
                     ((g8055
                       (letrec*
                        ((val7256
                          (begin
                            (write '(funapp 1256 35))
                            (display "\n")
                            (string<? s1 s2))))
                        (letrec*
                         ((g8056
                           (if val7256
                             val7256
                             (begin
                               (write '(funapp 1258 54))
                               (display "\n")
                               (string=? s1 s2)))))
                         g8056))))
                     g8055)))
                 (for-each
                  (lambda (f l)
                    (letrec*
                     ((g8057
                       (letrec*
                        ((x8060
                          (begin
                            (write '(funapp 1264 47))
                            (display "\n")
                            (procedure? f))))
                        (begin
                          (write '(funapp 1264 64))
                          (display "\n")
                          (assert x8060))))
                      (g8058
                       (letrec*
                        ((x8061
                          (begin
                            (write '(funapp 1265 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1265 59))
                          (display "\n")
                          (assert x8061))))
                      (g8059
                       (letrec*
                        ((x-cnd8062
                          (begin
                            (write '(funapp 1268 37))
                            (display "\n")
                            (null? l))))
                        (if x-cnd8062
                          #t
                          (letrec*
                           ((x-cnd8063
                             (begin
                               (write '(funapp 1272 40))
                               (display "\n")
                               (pair? l))))
                           (if x-cnd8063
                             (letrec*
                              ((g8064
                                (letrec*
                                 ((x8066
                                   (begin
                                     (write '(funapp 1275 56))
                                     (display "\n")
                                     (car l))))
                                 (begin
                                   (write '(funapp 1275 66))
                                   (display "\n")
                                   (f x8066))))
                               (g8065
                                (letrec*
                                 ((x8067
                                   (begin
                                     (write '(funapp 1278 42))
                                     (display "\n")
                                     (cdr l))))
                                 (begin
                                   (write '(funapp 1279 34))
                                   (display "\n")
                                   (for-each f x8067)))))
                              g8065)
                             (begin
                               (write '(funapp 1281 29))
                               (display "\n")
                               '())))))))
                     g8059)))
                 (abs
                  (lambda (x)
                    (letrec*
                     ((g8068
                       (letrec*
                        ((x8070
                          (begin
                            (write '(funapp 1286 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1286 61))
                          (display "\n")
                          (assert x8070))))
                      (g8069
                       (letrec*
                        ((x-cnd8071
                          (begin
                            (write '(funapp 1289 37))
                            (display "\n")
                            (< x 0))))
                        (if x-cnd8071
                          (begin
                            (write '(funapp 1290 39))
                            (display "\n")
                            (- 0 x))
                          x))))
                     g8069)))
                 (char-ci>=?
                  (lambda (c1 c2)
                    (letrec*
                     ((g8072
                       (letrec*
                        ((x8075
                          (begin
                            (write '(funapp 1295 47))
                            (display "\n")
                            (char? c1))))
                        (begin
                          (write '(funapp 1295 60))
                          (display "\n")
                          (assert x8075))))
                      (g8073
                       (letrec*
                        ((x8076
                          (begin
                            (write '(funapp 1296 47))
                            (display "\n")
                            (char? c2))))
                        (begin
                          (write '(funapp 1296 60))
                          (display "\n")
                          (assert x8076))))
                      (g8074
                       (letrec*
                        ((val7257
                          (begin
                            (write '(funapp 1299 35))
                            (display "\n")
                            (char-ci>? c1 c2))))
                        (letrec*
                         ((g8077
                           (if val7257
                             val7257
                             (begin
                               (write '(funapp 1301 54))
                               (display "\n")
                               (char-ci=? c1 c2)))))
                         g8077))))
                     g8074)))
                 (caddar
                  (lambda (x)
                    (letrec*
                     ((g8078
                       (letrec*
                        ((x8079
                          (letrec*
                           ((x8080
                             (letrec*
                              ((x8081
                                (begin
                                  (write '(funapp 1311 53))
                                  (display "\n")
                                  (car x))))
                              (begin
                                (write '(funapp 1311 63))
                                (display "\n")
                                (cdr x8081)))))
                           (begin
                             (write '(funapp 1312 28))
                             (display "\n")
                             (cdr x8080)))))
                        (begin
                          (write '(funapp 1313 25))
                          (display "\n")
                          (car x8079)))))
                     g8078)))
                 (newline (lambda () (letrec* ((g8082 #f)) g8082)))
                 (lcm
                  (lambda (m n)
                    (letrec*
                     ((g8083
                       (letrec*
                        ((x8085
                          (letrec*
                           ((x8086
                             (begin
                               (write '(funapp 1321 50))
                               (display "\n")
                               (* m n))))
                           (begin
                             (write '(funapp 1321 60))
                             (display "\n")
                             (abs x8086))))
                         (x8084
                          (begin
                            (write '(funapp 1322 33))
                            (display "\n")
                            (gcd m n))))
                        (begin
                          (write '(funapp 1323 25))
                          (display "\n")
                          (/ x8085 x8084)))))
                     g8083)))
                 (deref car)
                 (>
                  (lambda (x y)
                    (letrec*
                     ((g8087
                       (letrec*
                        ((x8089
                          (begin
                            (write '(funapp 1329 47))
                            (display "\n")
                            (number? x))))
                        (begin
                          (write '(funapp 1329 61))
                          (display "\n")
                          (assert x8089))))
                      (g8088
                       (letrec*
                        ((x8090
                          (begin
                            (write '(funapp 1330 47))
                            (display "\n")
                            (<= x y))))
                        (begin
                          (write '(funapp 1330 58))
                          (display "\n")
                          (not x8090)))))
                     g8088)))
                 (list-ref
                  (lambda (l index)
                    (letrec*
                     ((g8091
                       (letrec*
                        ((x8095
                          (begin
                            (write '(funapp 1335 47))
                            (display "\n")
                            (list? l))))
                        (begin
                          (write '(funapp 1335 59))
                          (display "\n")
                          (assert x8095))))
                      (g8092
                       (letrec*
                        ((x8096
                          (begin
                            (write '(funapp 1337 41))
                            (display "\n")
                            (number? index))))
                        (begin
                          (write '(funapp 1337 59))
                          (display "\n")
                          (assert x8096))))
                      (g8093
                       (letrec*
                        ((x8097
                          (letrec*
                           ((x8098
                             (begin
                               (write '(funapp 1341 44))
                               (display "\n")
                               (length l))))
                           (begin
                             (write '(funapp 1341 57))
                             (display "\n")
                             (< index x8098)))))
                        (begin
                          (write '(funapp 1342 25))
                          (display "\n")
                          (assert x8097))))
                      (g8094
                       (letrec*
                        ((x-cnd8099
                          (begin
                            (write '(funapp 1345 37))
                            (display "\n")
                            (= index 0))))
                        (if x-cnd8099
                          (begin
                            (write '(funapp 1347 27))
                            (display "\n")
                            (car l))
                          (letrec*
                           ((x8101
                             (begin
                               (write '(funapp 1349 36))
                               (display "\n")
                               (cdr l)))
                            (x8100
                             (begin
                               (write '(funapp 1349 52))
                               (display "\n")
                               (- index 1))))
                           (begin
                             (write '(funapp 1350 28))
                             (display "\n")
                             (list-ref x8101 x8100)))))))
                     g8094)))
                 (gcd
                  (lambda (a b)
                    (letrec*
                     ((g8102
                       (letrec*
                        ((x-cnd8103
                          (begin
                            (write '(funapp 1357 37))
                            (display "\n")
                            (= b 0))))
                        (if x-cnd8103
                          a
                          (letrec*
                           ((x8104
                             (begin
                               (write '(funapp 1360 44))
                               (display "\n")
                               (modulo a b))))
                           (begin
                             (write '(funapp 1360 59))
                             (display "\n")
                             (gcd b x8104)))))))
                     g8102)))
                 (block
                  (lambda (x7571 y7572 color7573)
                    (letrec*
                     ((g8105
                       (letrec*
                        ((x8106
                          (letrec*
                           ((x8107
                             (letrec*
                              ((x8108
                                (begin
                                  (write '(funapp 1371 39))
                                  (display "\n")
                                  (cons
                                   color7573
                                   (begin
                                     (write '(funapp 1371 54))
                                     (display "\n")
                                     '())))))
                              (begin
                                (write '(funapp 1372 31))
                                (display "\n")
                                (cons y7572 x8108)))))
                           (begin
                             (write '(funapp 1373 28))
                             (display "\n")
                             (cons x7571 x8107)))))
                        (begin
                          (write '(funapp 1374 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1374 30))
                             (display "\n")
                             'block)
                           x8106)))))
                     g8105)))
                 (block?
                  (lambda (block7570)
                    (letrec*
                     ((g8109
                       (letrec*
                        ((x8110
                          (begin
                            (write '(funapp 1380 41))
                            (display "\n")
                            (car block7570))))
                        (begin
                          (write '(funapp 1380 59))
                          (display "\n")
                          (eq?
                           x8110
                           (begin
                             (write '(funapp 1380 69))
                             (display "\n")
                             'block))))))
                     g8109)))
                 (block-x
                  (lambda (block)
                    (letrec*
                     ((g8111
                       (letrec*
                        ((x8112
                          (begin
                            (write '(funapp 1385 47))
                            (display "\n")
                            (cdr block))))
                        (begin
                          (write '(funapp 1385 61))
                          (display "\n")
                          (car x8112)))))
                     g8111)))
                 (block-y
                  (lambda (block)
                    (letrec*
                     ((g8113
                       (letrec*
                        ((x8114
                          (letrec*
                           ((x8115
                             (begin
                               (write '(funapp 1392 50))
                               (display "\n")
                               (cdr block))))
                           (begin
                             (write '(funapp 1392 64))
                             (display "\n")
                             (cdr x8115)))))
                        (begin
                          (write '(funapp 1393 25))
                          (display "\n")
                          (car x8114)))))
                     g8113)))
                 (block-color
                  (lambda (block)
                    (letrec*
                     ((g8116
                       (letrec*
                        ((x8117
                          (letrec*
                           ((x8118
                             (letrec*
                              ((x8119
                                (begin
                                  (write '(funapp 1403 47))
                                  (display "\n")
                                  (cdr block))))
                              (begin
                                (write '(funapp 1403 61))
                                (display "\n")
                                (cdr x8119)))))
                           (begin
                             (write '(funapp 1404 28))
                             (display "\n")
                             (cdr x8118)))))
                        (begin
                          (write '(funapp 1405 25))
                          (display "\n")
                          (car x8117)))))
                     g8116)))
                 (tetra
                  (lambda (center7578 blocks7579)
                    (letrec*
                     ((g8120
                       (letrec*
                        ((x8121
                          (letrec*
                           ((x8122
                             (begin
                               (write '(funapp 1414 36))
                               (display "\n")
                               (cons
                                blocks7579
                                (begin
                                  (write '(funapp 1414 52))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1415 28))
                             (display "\n")
                             (cons center7578 x8122)))))
                        (begin
                          (write '(funapp 1416 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1416 30))
                             (display "\n")
                             'tetra)
                           x8121)))))
                     g8120)))
                 (tetra?
                  (lambda (tetra7577)
                    (letrec*
                     ((g8123
                       (letrec*
                        ((x8124
                          (begin
                            (write '(funapp 1422 41))
                            (display "\n")
                            (car tetra7577))))
                        (begin
                          (write '(funapp 1422 59))
                          (display "\n")
                          (eq?
                           x8124
                           (begin
                             (write '(funapp 1422 69))
                             (display "\n")
                             'tetra))))))
                     g8123)))
                 (tetra-center
                  (lambda (tetra)
                    (letrec*
                     ((g8125
                       (letrec*
                        ((x8126
                          (begin
                            (write '(funapp 1427 47))
                            (display "\n")
                            (cdr tetra))))
                        (begin
                          (write '(funapp 1427 61))
                          (display "\n")
                          (car x8126)))))
                     g8125)))
                 (tetra-blocks
                  (lambda (tetra)
                    (letrec*
                     ((g8127
                       (letrec*
                        ((x8128
                          (letrec*
                           ((x8129
                             (begin
                               (write '(funapp 1434 50))
                               (display "\n")
                               (cdr tetra))))
                           (begin
                             (write '(funapp 1434 64))
                             (display "\n")
                             (cdr x8129)))))
                        (begin
                          (write '(funapp 1435 25))
                          (display "\n")
                          (car x8128)))))
                     g8127)))
                 (world
                  (lambda (tetra7583 blocks7584)
                    (letrec*
                     ((g8130
                       (letrec*
                        ((x8131
                          (letrec*
                           ((x8132
                             (begin
                               (write '(funapp 1444 36))
                               (display "\n")
                               (cons
                                blocks7584
                                (begin
                                  (write '(funapp 1444 52))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1445 28))
                             (display "\n")
                             (cons tetra7583 x8132)))))
                        (begin
                          (write '(funapp 1446 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1446 30))
                             (display "\n")
                             'world)
                           x8131)))))
                     g8130)))
                 (world?
                  (lambda (world7582)
                    (letrec*
                     ((g8133
                       (letrec*
                        ((x8134
                          (begin
                            (write '(funapp 1452 41))
                            (display "\n")
                            (car world7582))))
                        (begin
                          (write '(funapp 1452 59))
                          (display "\n")
                          (eq?
                           x8134
                           (begin
                             (write '(funapp 1452 69))
                             (display "\n")
                             'world))))))
                     g8133)))
                 (world-tetra
                  (lambda (world)
                    (letrec*
                     ((g8135
                       (letrec*
                        ((x8136
                          (begin
                            (write '(funapp 1457 47))
                            (display "\n")
                            (cdr world))))
                        (begin
                          (write '(funapp 1457 61))
                          (display "\n")
                          (car x8136)))))
                     g8135)))
                 (world-blocks
                  (lambda (world)
                    (letrec*
                     ((g8137
                       (letrec*
                        ((x8138
                          (letrec*
                           ((x8139
                             (begin
                               (write '(funapp 1464 50))
                               (display "\n")
                               (cdr world))))
                           (begin
                             (write '(funapp 1464 64))
                             (display "\n")
                             (cdr x8139)))))
                        (begin
                          (write '(funapp 1465 25))
                          (display "\n")
                          (car x8138)))))
                     g8137)))
                 (posn
                  (lambda (x7588 y7589)
                    (letrec*
                     ((g8140
                       (letrec*
                        ((x8141
                          (letrec*
                           ((x8142
                             (begin
                               (write '(funapp 1474 36))
                               (display "\n")
                               (cons
                                y7589
                                (begin
                                  (write '(funapp 1474 47))
                                  (display "\n")
                                  '())))))
                           (begin
                             (write '(funapp 1475 28))
                             (display "\n")
                             (cons x7588 x8142)))))
                        (begin
                          (write '(funapp 1476 25))
                          (display "\n")
                          (cons
                           (begin
                             (write '(funapp 1476 30))
                             (display "\n")
                             'posn)
                           x8141)))))
                     g8140)))
                 (posn?
                  (lambda (posn7587)
                    (letrec*
                     ((g8143
                       (letrec*
                        ((x8144
                          (begin
                            (write '(funapp 1482 41))
                            (display "\n")
                            (car posn7587))))
                        (begin
                          (write '(funapp 1482 58))
                          (display "\n")
                          (eq?
                           x8144
                           (begin
                             (write '(funapp 1482 68))
                             (display "\n")
                             'posn))))))
                     g8143)))
                 (posn-x
                  (lambda (posn)
                    (letrec*
                     ((g8145
                       (letrec*
                        ((x8146
                          (begin
                            (write '(funapp 1487 47))
                            (display "\n")
                            (cdr posn))))
                        (begin
                          (write '(funapp 1487 60))
                          (display "\n")
                          (car x8146)))))
                     g8145)))
                 (posn-y
                  (lambda (posn)
                    (letrec*
                     ((g8147
                       (letrec*
                        ((x8148
                          (letrec*
                           ((x8149
                             (begin
                               (write '(funapp 1494 50))
                               (display "\n")
                               (cdr posn))))
                           (begin
                             (write '(funapp 1494 63))
                             (display "\n")
                             (cdr x8149)))))
                        (begin
                          (write '(funapp 1495 25))
                          (display "\n")
                          (car x8148)))))
                     g8147)))
                 (COLOR/C symbol?)
                 (POSN/C
                  (lambda (j7329 k7330 v7328)
                    (letrec*
                     ((g8150
                       (letrec*
                        ((checked7331
                          (letrec*
                           ((x8151
                             (begin
                               (write '(funapp 1505 36))
                               (display "\n")
                               (car v7328))))
                           (begin
                             (write '(funapp 1506 28))
                             (display "\n")
                             (real?/c j7329 k7330 x8151)))))
                        (letrec*
                         ((g8152
                           (letrec*
                            ((checked7332
                              (letrec*
                               ((x8153
                                 (letrec*
                                  ((x8154
                                    (begin
                                      (write '(funapp 1513 51))
                                      (display "\n")
                                      (cdr v7328))))
                                  (begin
                                    (write '(funapp 1513 65))
                                    (display "\n")
                                    (car x8154)))))
                               (begin
                                 (write '(funapp 1514 32))
                                 (display "\n")
                                 (real?/c j7329 k7330 x8153)))))
                            (letrec*
                             ((g8155
                               (letrec*
                                ((x8156
                                  (letrec*
                                   ((x8157
                                     (begin
                                       (write '(funapp 1520 44))
                                       (display "\n")
                                       (cons
                                        checked7332
                                        (begin
                                          (write '(funapp 1520 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1521 36))
                                     (display "\n")
                                     (cons checked7331 x8157)))))
                                (begin
                                  (write '(funapp 1522 33))
                                  (display "\n")
                                  (cons posn x8156)))))
                             g8155))))
                         g8152))))
                     g8150)))
                 (BLOCK/C
                  (lambda (j7335 k7336 v7334)
                    (letrec*
                     ((g8158
                       (letrec*
                        ((checked7337
                          (letrec*
                           ((x8159
                             (begin
                               (write '(funapp 1533 36))
                               (display "\n")
                               (car v7334))))
                           (begin
                             (write '(funapp 1534 28))
                             (display "\n")
                             (real?/c j7335 k7336 x8159)))))
                        (letrec*
                         ((g8160
                           (letrec*
                            ((checked7338
                              (letrec*
                               ((x8161
                                 (letrec*
                                  ((x8162
                                    (begin
                                      (write '(funapp 1541 51))
                                      (display "\n")
                                      (cdr v7334))))
                                  (begin
                                    (write '(funapp 1541 65))
                                    (display "\n")
                                    (car x8162)))))
                               (begin
                                 (write '(funapp 1542 32))
                                 (display "\n")
                                 (real?/c j7335 k7336 x8161)))))
                            (letrec*
                             ((g8163
                               (letrec*
                                ((checked7339
                                  (letrec*
                                   ((x8164
                                     (letrec*
                                      ((x8165
                                        (letrec*
                                         ((x8166
                                           (begin
                                             (write '(funapp 1552 50))
                                             (display "\n")
                                             (cdr v7334))))
                                         (begin
                                           (write '(funapp 1553 42))
                                           (display "\n")
                                           (cdr x8166)))))
                                      (begin
                                        (write '(funapp 1554 39))
                                        (display "\n")
                                        (car x8165)))))
                                   (begin
                                     (write '(funapp 1555 36))
                                     (display "\n")
                                     (COLOR/C j7335 k7336 x8164)))))
                                (letrec*
                                 ((g8167
                                   (letrec*
                                    ((x8168
                                      (letrec*
                                       ((x8169
                                         (letrec*
                                          ((x8170
                                            (begin
                                              (write '(funapp 1563 51))
                                              (display "\n")
                                              (cons
                                               checked7339
                                               (begin
                                                 (write '(funapp 1563 68))
                                                 (display "\n")
                                                 '())))))
                                          (begin
                                            (write '(funapp 1564 43))
                                            (display "\n")
                                            (cons checked7338 x8170)))))
                                       (begin
                                         (write '(funapp 1565 40))
                                         (display "\n")
                                         (cons checked7337 x8169)))))
                                    (begin
                                      (write '(funapp 1566 37))
                                      (display "\n")
                                      (cons block x8168)))))
                                 g8167))))
                             g8163))))
                         g8160))))
                     g8158)))
                 (BSET/C
                  (begin
                    (write '(funapp 1571 26))
                    (display "\n")
                    (listof BLOCK/C)))
                 (TETRA/C
                  (lambda (j7342 k7343 v7341)
                    (letrec*
                     ((g8171
                       (letrec*
                        ((checked7344
                          (letrec*
                           ((x8172
                             (begin
                               (write '(funapp 1579 36))
                               (display "\n")
                               (car v7341))))
                           (begin
                             (write '(funapp 1580 28))
                             (display "\n")
                             (POSN/C j7342 k7343 x8172)))))
                        (letrec*
                         ((g8173
                           (letrec*
                            ((checked7345
                              (letrec*
                               ((x8174
                                 (letrec*
                                  ((x8175
                                    (begin
                                      (write '(funapp 1587 51))
                                      (display "\n")
                                      (cdr v7341))))
                                  (begin
                                    (write '(funapp 1587 65))
                                    (display "\n")
                                    (car x8175)))))
                               (begin
                                 (write '(funapp 1588 32))
                                 (display "\n")
                                 (BSET/C j7342 k7343 x8174)))))
                            (letrec*
                             ((g8176
                               (letrec*
                                ((x8177
                                  (letrec*
                                   ((x8178
                                     (begin
                                       (write '(funapp 1594 44))
                                       (display "\n")
                                       (cons
                                        checked7345
                                        (begin
                                          (write '(funapp 1594 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1595 36))
                                     (display "\n")
                                     (cons checked7344 x8178)))))
                                (begin
                                  (write '(funapp 1596 33))
                                  (display "\n")
                                  (cons tetra x8177)))))
                             g8176))))
                         g8173))))
                     g8171)))
                 (WORLD/C
                  (lambda (j7348 k7349 v7347)
                    (letrec*
                     ((g8179
                       (letrec*
                        ((checked7350
                          (letrec*
                           ((x8180
                             (begin
                               (write '(funapp 1607 36))
                               (display "\n")
                               (car v7347))))
                           (begin
                             (write '(funapp 1608 28))
                             (display "\n")
                             (TETRA/C j7348 k7349 x8180)))))
                        (letrec*
                         ((g8181
                           (letrec*
                            ((checked7351
                              (letrec*
                               ((x8182
                                 (letrec*
                                  ((x8183
                                    (begin
                                      (write '(funapp 1615 51))
                                      (display "\n")
                                      (cdr v7347))))
                                  (begin
                                    (write '(funapp 1615 65))
                                    (display "\n")
                                    (car x8183)))))
                               (begin
                                 (write '(funapp 1616 32))
                                 (display "\n")
                                 (BSET/C j7348 k7349 x8182)))))
                            (letrec*
                             ((g8184
                               (letrec*
                                ((x8185
                                  (letrec*
                                   ((x8186
                                     (begin
                                       (write '(funapp 1622 44))
                                       (display "\n")
                                       (cons
                                        checked7351
                                        (begin
                                          (write '(funapp 1622 61))
                                          (display "\n")
                                          '())))))
                                   (begin
                                     (write '(funapp 1623 36))
                                     (display "\n")
                                     (cons checked7350 x8186)))))
                                (begin
                                  (write '(funapp 1624 33))
                                  (display "\n")
                                  (cons world x8185)))))
                             g8184))))
                         g8181))))
                     g8179)))
                 (posn=?
                  (lambda (p1 p2)
                    (letrec*
                     ((g8187
                       (letrec*
                        ((x-cnd8188
                          (letrec*
                           ((x8190
                             (begin
                               (write '(funapp 1635 36))
                               (display "\n")
                               (posn-x p1)))
                            (x8189
                             (begin
                               (write '(funapp 1635 56))
                               (display "\n")
                               (posn-x p2))))
                           (begin
                             (write '(funapp 1636 28))
                             (display "\n")
                             (= x8190 x8189)))))
                        (if x-cnd8188
                          (letrec*
                           ((x8192
                             (begin
                               (write '(funapp 1639 36))
                               (display "\n")
                               (posn-y p1)))
                            (x8191
                             (begin
                               (write '(funapp 1639 56))
                               (display "\n")
                               (posn-y p2))))
                           (begin
                             (write '(funapp 1640 28))
                             (display "\n")
                             (= x8192 x8191)))
                          #f))))
                     g8187)))
                 (block-size 20)
                 (board-height 20)
                 (board-width 10)
                 (block=?
                  (lambda (b1 b2)
                    (letrec*
                     ((g8193
                       (letrec*
                        ((x-cnd8194
                          (letrec*
                           ((x8196
                             (begin
                               (write '(funapp 1653 36))
                               (display "\n")
                               (block-x b1)))
                            (x8195
                             (begin
                               (write '(funapp 1653 57))
                               (display "\n")
                               (block-x b2))))
                           (begin
                             (write '(funapp 1654 28))
                             (display "\n")
                             (= x8196 x8195)))))
                        (if x-cnd8194
                          (letrec*
                           ((x8198
                             (begin
                               (write '(funapp 1657 36))
                               (display "\n")
                               (block-y b1)))
                            (x8197
                             (begin
                               (write '(funapp 1657 57))
                               (display "\n")
                               (block-y b2))))
                           (begin
                             (write '(funapp 1658 28))
                             (display "\n")
                             (= x8198 x8197)))
                          #f))))
                     g8193)))
                 (block-move
                  (lambda (dx dy b)
                    (letrec*
                     ((g8199
                       (letrec*
                        ((x8203
                          (letrec*
                           ((x8204
                             (begin
                               (write '(funapp 1666 50))
                               (display "\n")
                               (block-x b))))
                           (begin
                             (write '(funapp 1666 64))
                             (display "\n")
                             (+ dx x8204))))
                         (x8201
                          (letrec*
                           ((x8202
                             (begin
                               (write '(funapp 1667 50))
                               (display "\n")
                               (block-y b))))
                           (begin
                             (write '(funapp 1667 64))
                             (display "\n")
                             (+ dy x8202))))
                         (x8200
                          (begin
                            (write '(funapp 1668 33))
                            (display "\n")
                            (block-color b))))
                        (begin
                          (write '(funapp 1669 25))
                          (display "\n")
                          (block x8203 x8201 x8200)))))
                     g8199)))
                 (block-rotate-ccw
                  (lambda (c b)
                    (letrec*
                     ((g8205
                       (letrec*
                        ((x8212
                          (letrec*
                           ((x8216
                             (begin
                               (write '(funapp 1678 36))
                               (display "\n")
                               (posn-x c)))
                            (x8213
                             (letrec*
                              ((x8215
                                (begin
                                  (write '(funapp 1681 39))
                                  (display "\n")
                                  (posn-y c)))
                               (x8214
                                (begin
                                  (write '(funapp 1681 58))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1682 31))
                                (display "\n")
                                (- x8215 x8214)))))
                           (begin
                             (write '(funapp 1683 28))
                             (display "\n")
                             (+ x8216 x8213))))
                         (x8207
                          (letrec*
                           ((x8211
                             (begin
                               (write '(funapp 1686 36))
                               (display "\n")
                               (posn-y c)))
                            (x8208
                             (letrec*
                              ((x8210
                                (begin
                                  (write '(funapp 1689 39))
                                  (display "\n")
                                  (block-x b)))
                               (x8209
                                (begin
                                  (write '(funapp 1689 59))
                                  (display "\n")
                                  (posn-x c))))
                              (begin
                                (write '(funapp 1690 31))
                                (display "\n")
                                (- x8210 x8209)))))
                           (begin
                             (write '(funapp 1691 28))
                             (display "\n")
                             (+ x8211 x8208))))
                         (x8206
                          (begin
                            (write '(funapp 1692 33))
                            (display "\n")
                            (block-color b))))
                        (begin
                          (write '(funapp 1693 25))
                          (display "\n")
                          (block x8212 x8207 x8206)))))
                     g8205)))
                 (block-rotate-cw
                  (lambda (c b)
                    (letrec*
                     ((g8217
                       (letrec*
                        ((x8218
                          (letrec*
                           ((x8219
                             (begin
                               (write '(funapp 1702 36))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           (begin
                             (write '(funapp 1703 28))
                             (display "\n")
                             (block-rotate-ccw c x8219)))))
                        (begin
                          (write '(funapp 1704 25))
                          (display "\n")
                          (block-rotate-ccw c x8218)))))
                     g8217)))
                 (ormap
                  (lambda (p? xs)
                    (letrec*
                     ((g8220
                       (if cnd
                         (letrec* ((g8221 #f)) g8221)
                         (letrec*
                          ((g8222
                            (letrec*
                             ((x8225
                               (letrec*
                                ((x8226
                                  (begin
                                    (write '(funapp 1715 55))
                                    (display "\n")
                                    (car xs))))
                                (begin
                                  (write '(funapp 1715 66))
                                  (display "\n")
                                  (p? x8226))))
                              (x8223
                               (letrec*
                                ((x8224
                                  (begin
                                    (write '(funapp 1717 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1717 60))
                                  (display "\n")
                                  (ormap p? x8224)))))
                             (begin
                               (write '(funapp 1718 30))
                               (display "\n")
                               (or x8225 x8223)))))
                          g8222))))
                     g8220)))
                 (andmap
                  (lambda (p? xs)
                    (letrec*
                     ((g8227
                       (if cnd
                         (letrec* ((g8228 #t)) g8228)
                         (letrec*
                          ((g8229
                            (letrec*
                             ((x8232
                               (letrec*
                                ((x8233
                                  (begin
                                    (write '(funapp 1730 55))
                                    (display "\n")
                                    (car xs))))
                                (begin
                                  (write '(funapp 1730 66))
                                  (display "\n")
                                  (p? x8233))))
                              (x8230
                               (letrec*
                                ((x8231
                                  (begin
                                    (write '(funapp 1732 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1732 60))
                                  (display "\n")
                                  (andmap p? x8231)))))
                             (begin
                               (write '(funapp 1733 30))
                               (display "\n")
                               (and x8232 x8230)))))
                          g8229))))
                     g8227)))
                 (filter
                  (lambda (p? xs)
                    (letrec*
                     ((g8234
                       (if cnd
                         (letrec* ((g8235 null)) g8235)
                         (if cnd
                           (letrec*
                            ((g8236
                              (letrec*
                               ((x8239
                                 (begin
                                   (write '(funapp 1746 40))
                                   (display "\n")
                                   (car xs)))
                                (x8237
                                 (letrec*
                                  ((x8238
                                    (begin
                                      (write '(funapp 1749 43))
                                      (display "\n")
                                      (cdr xs))))
                                  (begin
                                    (write '(funapp 1750 35))
                                    (display "\n")
                                    (filter p? x8238)))))
                               (begin
                                 (write '(funapp 1751 32))
                                 (display "\n")
                                 (cons x8239 x8237)))))
                            g8236)
                           (letrec*
                            ((g8240
                              (letrec*
                               ((x8241
                                 (begin
                                   (write '(funapp 1755 48))
                                   (display "\n")
                                   (cdr xs))))
                               (begin
                                 (write '(funapp 1755 59))
                                 (display "\n")
                                 (filter p? x8241)))))
                            g8240)))))
                     g8234)))
                 (append
                  (lambda (l r)
                    (letrec*
                     ((g8242
                       (if cnd
                         (letrec* ((g8243 r)) g8243)
                         (letrec*
                          ((g8244
                            (letrec*
                             ((x8247
                               (begin
                                 (write '(funapp 1767 38))
                                 (display "\n")
                                 (car l)))
                              (x8245
                               (letrec*
                                ((x8246
                                  (begin
                                    (write '(funapp 1769 49))
                                    (display "\n")
                                    (cdr l))))
                                (begin
                                  (write '(funapp 1769 59))
                                  (display "\n")
                                  (append x8246 r)))))
                             (begin
                               (write '(funapp 1770 30))
                               (display "\n")
                               (cons x8247 x8245)))))
                          g8244))))
                     g8242)))
                 (foldr
                  (lambda (f a xs)
                    (letrec*
                     ((g8248
                       (if cnd
                         (letrec* ((g8249 a)) g8249)
                         (letrec*
                          ((g8250
                            (letrec*
                             ((x8253
                               (begin
                                 (write '(funapp 1782 38))
                                 (display "\n")
                                 (car xs)))
                              (x8251
                               (letrec*
                                ((x8252
                                  (begin
                                    (write '(funapp 1784 49))
                                    (display "\n")
                                    (cdr xs))))
                                (begin
                                  (write '(funapp 1784 60))
                                  (display "\n")
                                  (foldr f a x8252)))))
                             (begin
                               (write '(funapp 1785 30))
                               (display "\n")
                               (f x8253 x8251)))))
                          g8250))))
                     g8248)))
                 (blocks-contains?
                  (lambda (bs b)
                    (letrec*
                     ((g8254
                       (letrec*
                        ((x8255
                          (letrec*
                           ((x8257
                             (begin
                               (write '(funapp 1795 36))
                               (display "\n")
                               (c)))
                            (x8256
                             (begin
                               (write '(funapp 1795 48))
                               (display "\n")
                               (block=? b c))))
                           (begin
                             (write '(funapp 1796 28))
                             (display "\n")
                             (λ x8257 x8256)))))
                        (begin
                          (write '(funapp 1797 25))
                          (display "\n")
                          (ormap x8255 bs)))))
                     g8254)))
                 (blocks-subset?
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8258
                       (letrec*
                        ((x8259
                          (letrec*
                           ((x8261
                             (begin
                               (write '(funapp 1806 36))
                               (display "\n")
                               (b)))
                            (x8260
                             (begin
                               (write '(funapp 1806 48))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           (begin
                             (write '(funapp 1807 28))
                             (display "\n")
                             (λ x8261 x8260)))))
                        (begin
                          (write '(funapp 1808 25))
                          (display "\n")
                          (andmap x8259 bs1)))))
                     g8258)))
                 (blocks=?
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8262
                       (letrec*
                        ((x-cnd8263
                          (begin
                            (write '(funapp 1815 37))
                            (display "\n")
                            (blocks-subset? bs1 bs2))))
                        (if x-cnd8263
                          (begin
                            (write '(funapp 1816 39))
                            (display "\n")
                            (blocks-subset? bs2 bs1))
                          #f))))
                     g8262)))
                 (blocks-intersect
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8264
                       (letrec*
                        ((x8265
                          (letrec*
                           ((x8267
                             (begin
                               (write '(funapp 1825 36))
                               (display "\n")
                               (b)))
                            (x8266
                             (begin
                               (write '(funapp 1825 48))
                               (display "\n")
                               (blocks-contains? bs2 b))))
                           (begin
                             (write '(funapp 1826 28))
                             (display "\n")
                             (λ x8267 x8266)))))
                        (begin
                          (write '(funapp 1827 25))
                          (display "\n")
                          (filter x8265 bs1)))))
                     g8264)))
                 (blocks-count
                  (lambda (bs)
                    (letrec*
                     ((g8268
                       (begin
                         (write '(funapp 1830 49))
                         (display "\n")
                         (length bs))))
                     g8268)))
                 (blocks-move
                  (lambda (dx dy bs)
                    (letrec*
                     ((g8269
                       (letrec*
                        ((x8270
                          (letrec*
                           ((x8272
                             (begin
                               (write '(funapp 1838 36))
                               (display "\n")
                               (b)))
                            (x8271
                             (begin
                               (write '(funapp 1838 48))
                               (display "\n")
                               (block-move dx dy b))))
                           (begin
                             (write '(funapp 1839 28))
                             (display "\n")
                             (λ x8272 x8271)))))
                        (begin
                          (write '(funapp 1840 25))
                          (display "\n")
                          (map x8270 bs)))))
                     g8269)))
                 (blocks-rotate-ccw
                  (lambda (c bs)
                    (letrec*
                     ((g8273
                       (letrec*
                        ((x8274
                          (letrec*
                           ((x8276
                             (begin
                               (write '(funapp 1849 36))
                               (display "\n")
                               (b)))
                            (x8275
                             (begin
                               (write '(funapp 1849 48))
                               (display "\n")
                               (block-rotate-ccw c b))))
                           (begin
                             (write '(funapp 1850 28))
                             (display "\n")
                             (λ x8276 x8275)))))
                        (begin
                          (write '(funapp 1851 25))
                          (display "\n")
                          (map x8274 bs)))))
                     g8273)))
                 (blocks-rotate-cw
                  (lambda (c bs)
                    (letrec*
                     ((g8277
                       (letrec*
                        ((x8278
                          (letrec*
                           ((x8280
                             (begin
                               (write '(funapp 1860 36))
                               (display "\n")
                               (b)))
                            (x8279
                             (begin
                               (write '(funapp 1860 48))
                               (display "\n")
                               (block-rotate-cw c b))))
                           (begin
                             (write '(funapp 1861 28))
                             (display "\n")
                             (λ x8280 x8279)))))
                        (begin
                          (write '(funapp 1862 25))
                          (display "\n")
                          (map x8278 bs)))))
                     g8277)))
                 (blocks-change-color
                  (lambda (bs c)
                    (letrec*
                     ((g8281
                       (letrec*
                        ((x8282
                          (letrec*
                           ((x8286
                             (begin
                               (write '(funapp 1871 36))
                               (display "\n")
                               (b)))
                            (x8283
                             (letrec*
                              ((x8285
                                (begin
                                  (write '(funapp 1874 39))
                                  (display "\n")
                                  (block-x b)))
                               (x8284
                                (begin
                                  (write '(funapp 1874 59))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1875 31))
                                (display "\n")
                                (block x8285 x8284 c)))))
                           (begin
                             (write '(funapp 1876 28))
                             (display "\n")
                             (λ x8286 x8283)))))
                        (begin
                          (write '(funapp 1877 25))
                          (display "\n")
                          (map x8282 bs)))))
                     g8281)))
                 (blocks-row
                  (lambda (bs i)
                    (letrec*
                     ((g8287
                       (letrec*
                        ((x8288
                          (letrec*
                           ((x8291
                             (begin
                               (write '(funapp 1886 36))
                               (display "\n")
                               (b)))
                            (x8289
                             (letrec*
                              ((x8290
                                (begin
                                  (write '(funapp 1888 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1888 61))
                                (display "\n")
                                (= i x8290)))))
                           (begin
                             (write '(funapp 1889 28))
                             (display "\n")
                             (λ x8291 x8289)))))
                        (begin
                          (write '(funapp 1890 25))
                          (display "\n")
                          (filter x8288 bs)))))
                     g8287)))
                 (full-row?
                  (lambda (bs i)
                    (letrec*
                     ((g8292
                       (letrec*
                        ((x8293
                          (letrec*
                           ((x8294
                             (begin
                               (write '(funapp 1899 36))
                               (display "\n")
                               (blocks-row bs i))))
                           (begin
                             (write '(funapp 1900 28))
                             (display "\n")
                             (blocks-count x8294)))))
                        (begin
                          (write '(funapp 1901 25))
                          (display "\n")
                          (= board-width x8293)))))
                     g8292)))
                 (blocks-overflow?
                  (lambda (bs)
                    (letrec*
                     ((g8295
                       (letrec*
                        ((x8296
                          (letrec*
                           ((x8299
                             (begin
                               (write '(funapp 1910 36))
                               (display "\n")
                               (b)))
                            (x8297
                             (letrec*
                              ((x8298
                                (begin
                                  (write '(funapp 1912 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1912 61))
                                (display "\n")
                                (<= x8298 0)))))
                           (begin
                             (write '(funapp 1913 28))
                             (display "\n")
                             (λ x8299 x8297)))))
                        (begin
                          (write '(funapp 1914 25))
                          (display "\n")
                          (ormap x8296 bs)))))
                     g8295)))
                 (blocks-union
                  (lambda (bs1 bs2)
                    (letrec*
                     ((g8300
                       (letrec*
                        ((x8301
                          (letrec*
                           ((x8305
                             (begin
                               (write '(funapp 1923 36))
                               (display "\n")
                               (b bs)))
                            (x8302
                             (if cnd
                               (letrec* ((g8303 bs)) g8303)
                               (letrec*
                                ((g8304
                                  (begin
                                    (write '(funapp 1927 49))
                                    (display "\n")
                                    (cons b bs))))
                                g8304))))
                           (begin
                             (write '(funapp 1928 28))
                             (display "\n")
                             (λ x8305 x8302)))))
                        (begin
                          (write '(funapp 1929 25))
                          (display "\n")
                          (foldr x8301 bs2 bs1)))))
                     g8300)))
                 (blocks-max-y
                  (lambda (bs)
                    (letrec*
                     ((g8306
                       (letrec*
                        ((x8307
                          (letrec*
                           ((x8310
                             (begin
                               (write '(funapp 1938 36))
                               (display "\n")
                               (b n)))
                            (x8308
                             (letrec*
                              ((x8309
                                (begin
                                  (write '(funapp 1940 47))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 1940 61))
                                (display "\n")
                                (max x8309 n)))))
                           (begin
                             (write '(funapp 1941 28))
                             (display "\n")
                             (λ x8310 x8308)))))
                        (begin
                          (write '(funapp 1942 25))
                          (display "\n")
                          (foldr x8307 0 bs)))))
                     g8306)))
                 (blocks-min-x
                  (lambda (bs)
                    (letrec*
                     ((g8311
                       (letrec*
                        ((x8312
                          (letrec*
                           ((x8315
                             (begin
                               (write '(funapp 1951 36))
                               (display "\n")
                               (b n)))
                            (x8313
                             (letrec*
                              ((x8314
                                (begin
                                  (write '(funapp 1953 47))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 1953 61))
                                (display "\n")
                                (min x8314 n)))))
                           (begin
                             (write '(funapp 1954 28))
                             (display "\n")
                             (λ x8315 x8313)))))
                        (begin
                          (write '(funapp 1955 25))
                          (display "\n")
                          (foldr x8312 board-width bs)))))
                     g8311)))
                 (blocks-max-x
                  (lambda (bs)
                    (letrec*
                     ((g8316
                       (letrec*
                        ((x8317
                          (letrec*
                           ((x8320
                             (begin
                               (write '(funapp 1964 36))
                               (display "\n")
                               (b n)))
                            (x8318
                             (letrec*
                              ((x8319
                                (begin
                                  (write '(funapp 1966 47))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 1966 61))
                                (display "\n")
                                (max x8319 n)))))
                           (begin
                             (write '(funapp 1967 28))
                             (display "\n")
                             (λ x8320 x8318)))))
                        (begin
                          (write '(funapp 1968 25))
                          (display "\n")
                          (foldr x8317 0 bs)))))
                     g8316)))
                 (eliminate-full-rows
                  (lambda (bs)
                    (letrec*
                     ((g8321
                       (begin
                         (write '(funapp 1972 38))
                         (display "\n")
                         (elim-row bs board-height 0))))
                     g8321)))
                 (elim-row
                  (lambda (bs i offset)
                    (letrec*
                     ((g8322
                       (if cnd
                         (letrec* ((g8323 empty)) g8323)
                         (if cnd
                           (letrec*
                            ((g8324
                              (letrec*
                               ((x8326
                                 (begin
                                   (write '(funapp 1983 40))
                                   (display "\n")
                                   (sub1 i)))
                                (x8325
                                 (begin
                                   (write '(funapp 1983 57))
                                   (display "\n")
                                   (add1 offset))))
                               (begin
                                 (write '(funapp 1984 32))
                                 (display "\n")
                                 (elim-row bs x8326 x8325)))))
                            g8324)
                           (letrec*
                            ((g8327
                              (letrec*
                               ((x8330
                                 (letrec*
                                  ((x8331
                                    (begin
                                      (write '(funapp 1991 43))
                                      (display "\n")
                                      (sub1 i))))
                                  (begin
                                    (write '(funapp 1992 35))
                                    (display "\n")
                                    (elim-row bs x8331 offset))))
                                (x8328
                                 (letrec*
                                  ((x8329
                                    (begin
                                      (write '(funapp 1995 43))
                                      (display "\n")
                                      (blocks-row bs i))))
                                  (begin
                                    (write '(funapp 1996 35))
                                    (display "\n")
                                    (blocks-move 0 offset x8329)))))
                               (begin
                                 (write '(funapp 1997 32))
                                 (display "\n")
                                 (blocks-union x8330 x8328)))))
                            g8327)))))
                     g8322)))
                 (tetra-move
                  (lambda (dx dy t)
                    (letrec*
                     ((g8332
                       (letrec*
                        ((x8335
                          (letrec*
                           ((x8339
                             (letrec*
                              ((x8340
                                (letrec*
                                 ((x8341
                                   (begin
                                     (write '(funapp 2011 42))
                                     (display "\n")
                                     (tetra-center t))))
                                 (begin
                                   (write '(funapp 2012 34))
                                   (display "\n")
                                   (posn-x x8341)))))
                              (begin
                                (write '(funapp 2013 31))
                                (display "\n")
                                (+ dx x8340))))
                            (x8336
                             (letrec*
                              ((x8337
                                (letrec*
                                 ((x8338
                                   (begin
                                     (write '(funapp 2018 42))
                                     (display "\n")
                                     (tetra-center t))))
                                 (begin
                                   (write '(funapp 2019 34))
                                   (display "\n")
                                   (posn-y x8338)))))
                              (begin
                                (write '(funapp 2020 31))
                                (display "\n")
                                (+ dy x8337)))))
                           (begin
                             (write '(funapp 2021 28))
                             (display "\n")
                             (posn x8339 x8336))))
                         (x8333
                          (letrec*
                           ((x8334
                             (begin
                               (write '(funapp 2024 36))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2025 28))
                             (display "\n")
                             (blocks-move dx dy x8334)))))
                        (begin
                          (write '(funapp 2026 25))
                          (display "\n")
                          (tetra x8335 x8333)))))
                     g8332)))
                 (tetra-rotate-ccw
                  (lambda (t)
                    (letrec*
                     ((g8342
                       (letrec*
                        ((x8346
                          (begin
                            (write '(funapp 2033 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8343
                          (letrec*
                           ((x8345
                             (begin
                               (write '(funapp 2036 36))
                               (display "\n")
                               (tetra-center t)))
                            (x8344
                             (begin
                               (write '(funapp 2036 61))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2037 28))
                             (display "\n")
                             (blocks-rotate-ccw x8345 x8344)))))
                        (begin
                          (write '(funapp 2038 25))
                          (display "\n")
                          (tetra x8346 x8343)))))
                     g8342)))
                 (tetra-rotate-cw
                  (lambda (t)
                    (letrec*
                     ((g8347
                       (letrec*
                        ((x8351
                          (begin
                            (write '(funapp 2045 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8348
                          (letrec*
                           ((x8350
                             (begin
                               (write '(funapp 2048 36))
                               (display "\n")
                               (tetra-center t)))
                            (x8349
                             (begin
                               (write '(funapp 2048 61))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2049 28))
                             (display "\n")
                             (blocks-rotate-cw x8350 x8349)))))
                        (begin
                          (write '(funapp 2050 25))
                          (display "\n")
                          (tetra x8351 x8348)))))
                     g8347)))
                 (tetra-overlaps-blocks?
                  (lambda (t bs)
                    (letrec*
                     ((g8352
                       (letrec*
                        ((x8353
                          (letrec*
                           ((x8354
                             (letrec*
                              ((x8355
                                (begin
                                  (write '(funapp 2061 39))
                                  (display "\n")
                                  (tetra-blocks t))))
                              (begin
                                (write '(funapp 2062 31))
                                (display "\n")
                                (blocks-intersect x8355 bs)))))
                           (begin
                             (write '(funapp 2063 28))
                             (display "\n")
                             (false? x8354)))))
                        (begin
                          (write '(funapp 2064 25))
                          (display "\n")
                          (false? x8353)))))
                     g8352)))
                 (tetra-change-color
                  (lambda (t c)
                    (letrec*
                     ((g8356
                       (letrec*
                        ((x8359
                          (begin
                            (write '(funapp 2071 33))
                            (display "\n")
                            (tetra-center t)))
                         (x8357
                          (letrec*
                           ((x8358
                             (begin
                               (write '(funapp 2074 36))
                               (display "\n")
                               (tetra-blocks t))))
                           (begin
                             (write '(funapp 2075 28))
                             (display "\n")
                             (blocks-change-color x8358 c)))))
                        (begin
                          (write '(funapp 2076 25))
                          (display "\n")
                          (tetra x8359 x8357)))))
                     g8356)))
                 (build-tetra-blocks
                  (lambda (color xc yc x1 y1 x2 y2 x3 y3 x4 y4)
                    (letrec*
                     ((g8360
                       (letrec*
                        ((x8361
                          (letrec*
                           ((x8367
                             (begin
                               (write '(funapp 2085 36))
                               (display "\n")
                               (posn xc yc)))
                            (x8362
                             (letrec*
                              ((x8366
                                (begin
                                  (write '(funapp 2088 39))
                                  (display "\n")
                                  (block x1 y1 color)))
                               (x8365
                                (begin
                                  (write '(funapp 2089 39))
                                  (display "\n")
                                  (block x2 y2 color)))
                               (x8364
                                (begin
                                  (write '(funapp 2090 39))
                                  (display "\n")
                                  (block x3 y3 color)))
                               (x8363
                                (begin
                                  (write '(funapp 2091 39))
                                  (display "\n")
                                  (block x4 y4 color))))
                              (begin
                                (write '(funapp 2092 31))
                                (display "\n")
                                (list x8366 x8365 x8364 x8363)))))
                           (begin
                             (write '(funapp 2093 28))
                             (display "\n")
                             (tetra x8367 x8362)))))
                        (begin
                          (write '(funapp 2094 25))
                          (display "\n")
                          (tetra-move 3 0 x8361)))))
                     g8360)))
                 (touchdown
                  (lambda (w tetras)
                    (letrec*
                     ((g8368
                       (letrec*
                        ((x8374
                          (begin
                            (write '(funapp 2101 33))
                            (display "\n")
                            (list-pick-random tetras)))
                         (x8369
                          (letrec*
                           ((x8370
                             (letrec*
                              ((x8372
                                (letrec*
                                 ((x8373
                                   (begin
                                     (write '(funapp 2108 42))
                                     (display "\n")
                                     (world-tetra w))))
                                 (begin
                                   (write '(funapp 2109 34))
                                   (display "\n")
                                   (tetra-blocks x8373))))
                               (x8371
                                (begin
                                  (write '(funapp 2110 39))
                                  (display "\n")
                                  (world-blocks w))))
                              (begin
                                (write '(funapp 2111 31))
                                (display "\n")
                                (blocks-union x8372 x8371)))))
                           (begin
                             (write '(funapp 2112 28))
                             (display "\n")
                             (eliminate-full-rows x8370)))))
                        (begin
                          (write '(funapp 2113 25))
                          (display "\n")
                          (world x8374 x8369)))))
                     g8368)))
                 (world-jump-down
                  (lambda (w)
                    (letrec*
                     ((g8375
                       (if cnd
                         (letrec* ((g8376 w)) g8376)
                         (letrec*
                          ((g8377
                            (letrec*
                             ((x8378
                               (letrec*
                                ((x8380
                                  (letrec*
                                   ((x8381
                                     (begin
                                       (write '(funapp 2128 44))
                                       (display "\n")
                                       (world-tetra w))))
                                   (begin
                                     (write '(funapp 2129 36))
                                     (display "\n")
                                     (tetra-move 0 1 x8381))))
                                 (x8379
                                  (begin
                                    (write '(funapp 2130 41))
                                    (display "\n")
                                    (world-blocks w))))
                                (begin
                                  (write '(funapp 2131 33))
                                  (display "\n")
                                  (world x8380 x8379)))))
                             (begin
                               (write '(funapp 2132 30))
                               (display "\n")
                               (world-jump-down x8378)))))
                          g8377))))
                     g8375)))
                 (landed-on-blocks?
                  (lambda (w)
                    (letrec*
                     ((g8382
                       (letrec*
                        ((x8384
                          (letrec*
                           ((x8385
                             (begin
                               (write '(funapp 2142 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2143 28))
                             (display "\n")
                             (tetra-move 0 1 x8385))))
                         (x8383
                          (begin
                            (write '(funapp 2144 33))
                            (display "\n")
                            (world-blocks w))))
                        (begin
                          (write '(funapp 2145 25))
                          (display "\n")
                          (tetra-overlaps-blocks? x8384 x8383)))))
                     g8382)))
                 (landed-on-floor?
                  (lambda (w)
                    (letrec*
                     ((g8386
                       (letrec*
                        ((x8388
                          (letrec*
                           ((x8389
                             (letrec*
                              ((x8390
                                (begin
                                  (write '(funapp 2156 39))
                                  (display "\n")
                                  (world-tetra w))))
                              (begin
                                (write '(funapp 2157 31))
                                (display "\n")
                                (tetra-blocks x8390)))))
                           (begin
                             (write '(funapp 2158 28))
                             (display "\n")
                             (blocks-max-y x8389))))
                         (x8387
                          (begin
                            (write '(funapp 2159 33))
                            (display "\n")
                            (sub1 board-height))))
                        (begin
                          (write '(funapp 2160 25))
                          (display "\n")
                          (= x8388 x8387)))))
                     g8386)))
                 (landed?
                  (lambda (w)
                    (letrec*
                     ((g8391
                       (letrec*
                        ((val7258
                          (begin
                            (write '(funapp 2167 35))
                            (display "\n")
                            (landed-on-blocks? w))))
                        (letrec*
                         ((g8392
                           (if val7258
                             val7258
                             (begin
                               (write '(funapp 2169 54))
                               (display "\n")
                               (landed-on-floor? w)))))
                         g8392))))
                     g8391)))
                 (next-world
                  (lambda (w tetras)
                    (letrec*
                     ((g8393
                       (if cnd
                         (letrec*
                          ((g8394
                            (begin
                              (write '(funapp 2177 43))
                              (display "\n")
                              (touchdown w tetras))))
                          g8394)
                         (letrec*
                          ((g8395
                            (letrec*
                             ((x8397
                               (letrec*
                                ((x8398
                                  (begin
                                    (write '(funapp 2183 41))
                                    (display "\n")
                                    (world-tetra w))))
                                (begin
                                  (write '(funapp 2184 33))
                                  (display "\n")
                                  (tetra-move 0 1 x8398))))
                              (x8396
                               (begin
                                 (write '(funapp 2185 38))
                                 (display "\n")
                                 (world-blocks w))))
                             (begin
                               (write '(funapp 2186 30))
                               (display "\n")
                               (world x8397 x8396)))))
                          g8395))))
                     g8393)))
                 (try-new-tetra
                  (lambda (w new-tetra)
                    (letrec*
                     ((g8399
                       (if cnd
                         (letrec* ((g8400 w)) g8400)
                         (letrec*
                          ((g8401
                            (letrec*
                             ((x8402
                               (begin
                                 (write '(funapp 2198 38))
                                 (display "\n")
                                 (world-blocks w))))
                             (begin
                               (write '(funapp 2199 30))
                               (display "\n")
                               (world new-tetra x8402)))))
                          g8401))))
                     g8399)))
                 (world-move
                  (lambda (dx dy w)
                    (letrec*
                     ((g8403
                       (letrec*
                        ((x8404
                          (letrec*
                           ((x8405
                             (begin
                               (write '(funapp 2209 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2210 28))
                             (display "\n")
                             (tetra-move dx dy x8405)))))
                        (begin
                          (write '(funapp 2211 25))
                          (display "\n")
                          (try-new-tetra w x8404)))))
                     g8403)))
                 (world-rotate-ccw
                  (lambda (w)
                    (letrec*
                     ((g8406
                       (letrec*
                        ((x8407
                          (letrec*
                           ((x8408
                             (begin
                               (write '(funapp 2220 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2221 28))
                             (display "\n")
                             (tetra-rotate-ccw x8408)))))
                        (begin
                          (write '(funapp 2222 25))
                          (display "\n")
                          (try-new-tetra w x8407)))))
                     g8406)))
                 (world-rotate-cw
                  (lambda (w)
                    (letrec*
                     ((g8409
                       (letrec*
                        ((x8410
                          (letrec*
                           ((x8411
                             (begin
                               (write '(funapp 2231 36))
                               (display "\n")
                               (world-tetra w))))
                           (begin
                             (write '(funapp 2232 28))
                             (display "\n")
                             (tetra-rotate-cw x8411)))))
                        (begin
                          (write '(funapp 2233 25))
                          (display "\n")
                          (try-new-tetra w x8410)))))
                     g8409)))
                 (ghost-blocks
                  (lambda (w)
                    (letrec*
                     ((g8412
                       (letrec*
                        ((x8413
                          (letrec*
                           ((x8414
                             (letrec*
                              ((x8415
                                (begin
                                  (write '(funapp 2244 39))
                                  (display "\n")
                                  (world-jump-down w))))
                              (begin
                                (write '(funapp 2245 31))
                                (display "\n")
                                (world-tetra x8415)))))
                           (begin
                             (write '(funapp 2246 28))
                             (display "\n")
                             (tetra-change-color
                              x8414
                              (begin
                                (write '(funapp 2246 53))
                                (display "\n")
                                'gray))))))
                        (begin
                          (write '(funapp 2247 25))
                          (display "\n")
                          (tetra-blocks x8413)))))
                     g8412)))
                 (world-key-move
                  (lambda (w k)
                    (letrec*
                     ((g8416
                       (if cnd
                         (letrec*
                          ((g8417
                            (begin
                              (write '(funapp 2254 43))
                              (display "\n")
                              (world-move neg-1 0 w))))
                          g8417)
                         (if cnd
                           (letrec*
                            ((g8418
                              (begin
                                (write '(funapp 2256 45))
                                (display "\n")
                                (world-move 1 0 w))))
                            g8418)
                           (if cnd
                             (letrec*
                              ((g8419
                                (begin
                                  (write '(funapp 2258 47))
                                  (display "\n")
                                  (world-jump-down w))))
                              g8419)
                             (if cnd
                               (letrec*
                                ((g8420
                                  (begin
                                    (write '(funapp 2260 49))
                                    (display "\n")
                                    (world-rotate-ccw w))))
                                g8420)
                               (if cnd
                                 (letrec*
                                  ((g8421
                                    (begin
                                      (write '(funapp 2262 51))
                                      (display "\n")
                                      (world-rotate-cw w))))
                                  g8421)
                                 (letrec* ((g8422 w)) g8422))))))))
                     g8416)))
                 (image
                  (lambda ()
                    (letrec*
                     ((g8423
                       (begin
                         (write '(funapp 2266 47))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2266 52))
                            (display "\n")
                            'image)
                          (begin
                            (write '(funapp 2266 59))
                            (display "\n")
                            '())))))
                     g8423)))
                 (image?
                  (lambda (image7592)
                    (letrec*
                     ((g8424
                       (letrec*
                        ((x8425
                          (begin
                            (write '(funapp 2271 41))
                            (display "\n")
                            (car image7592))))
                        (begin
                          (write '(funapp 2271 59))
                          (display "\n")
                          (eq?
                           x8425
                           (begin
                             (write '(funapp 2271 69))
                             (display "\n")
                             'image))))))
                     g8424)))
                 (overlay
                  (lambda (i₁ i₂)
                    (letrec*
                     ((g8426
                       (begin
                         (write '(funapp 2273 60))
                         (display "\n")
                         (image))))
                     g8426)))
                 (circle
                  (lambda (r m c)
                    (letrec*
                     ((g8427
                       (begin
                         (write '(funapp 2274 59))
                         (display "\n")
                         (image))))
                     g8427)))
                 (rectangle
                  (lambda (w h m c)
                    (letrec*
                     ((g8428
                       (begin
                         (write '(funapp 2276 54))
                         (display "\n")
                         (image))))
                     g8428)))
                 (place-image
                  (lambda (i₁ r c i₂)
                    (letrec*
                     ((g8429
                       (begin
                         (write '(funapp 2278 56))
                         (display "\n")
                         (image))))
                     g8429)))
                 (empty-scene
                  (lambda (w h)
                    (letrec*
                     ((g8430
                       (begin
                         (write '(funapp 2279 62))
                         (display "\n")
                         (image))))
                     g8430)))
                 (list-pick-random
                  (lambda (xs)
                    (letrec*
                     ((g8431
                       (if cnd
                         (letrec*
                          ((g8432
                            (begin
                              (write '(funapp 2285 43))
                              (display "\n")
                              (car xs))))
                          g8432)
                         (letrec*
                          ((g8433
                            (letrec*
                             ((x8434
                               (begin
                                 (write '(funapp 2289 38))
                                 (display "\n")
                                 (cdr xs))))
                             (begin
                               (write '(funapp 2290 30))
                               (display "\n")
                               (list-pick-random x8434)))))
                          g8433))))
                     g8431)))
                 (neg-1
                  (begin (write '(funapp 2293 25)) (display "\n") (random 10)))
                 (world->image
                  (lambda (w)
                    (letrec*
                     ((g8435
                       (letrec*
                        ((x8439
                          (letrec*
                           ((x8440
                             (letrec*
                              ((x8444
                                (letrec*
                                 ((x8445
                                   (begin
                                     (write '(funapp 2305 42))
                                     (display "\n")
                                     (world-tetra w))))
                                 (begin
                                   (write '(funapp 2306 34))
                                   (display "\n")
                                   (tetra-blocks x8445))))
                               (x8441
                                (letrec*
                                 ((x8443
                                   (begin
                                     (write '(funapp 2309 42))
                                     (display "\n")
                                     (ghost-blocks w)))
                                  (x8442
                                   (begin
                                     (write '(funapp 2310 42))
                                     (display "\n")
                                     (world-blocks w))))
                                 (begin
                                   (write '(funapp 2311 34))
                                   (display "\n")
                                   (append x8443 x8442)))))
                              (begin
                                (write '(funapp 2312 31))
                                (display "\n")
                                (append x8444 x8441)))))
                           (begin
                             (write '(funapp 2313 28))
                             (display "\n")
                             (blocks->image x8440))))
                         (x8436
                          (letrec*
                           ((x8438
                             (begin
                               (write '(funapp 2316 36))
                               (display "\n")
                               (* board-width block-size)))
                            (x8437
                             (begin
                               (write '(funapp 2317 36))
                               (display "\n")
                               (* board-height block-size))))
                           (begin
                             (write '(funapp 2318 28))
                             (display "\n")
                             (empty-scene x8438 x8437)))))
                        (begin
                          (write '(funapp 2319 25))
                          (display "\n")
                          (place-image x8439 0 0 x8436)))))
                     g8435)))
                 (blocks->image
                  (lambda (bs)
                    (letrec*
                     ((g8446
                       (letrec*
                        ((x8452
                          (letrec*
                           ((x8456
                             (begin
                               (write '(funapp 2328 36))
                               (display "\n")
                               (b img)))
                            (x8453
                             (if cnd
                               (letrec*
                                ((g8454
                                  (begin
                                    (write '(funapp 2331 49))
                                    (display "\n")
                                    (place-block b img))))
                                g8454)
                               (letrec* ((g8455 img)) g8455))))
                           (begin
                             (write '(funapp 2333 28))
                             (display "\n")
                             (λ x8456 x8453))))
                         (x8447
                          (letrec*
                           ((x8450
                             (letrec*
                              ((x8451
                                (begin
                                  (write '(funapp 2338 39))
                                  (display "\n")
                                  (* board-width block-size))))
                              (begin
                                (write '(funapp 2339 31))
                                (display "\n")
                                (add1 x8451))))
                            (x8448
                             (letrec*
                              ((x8449
                                (begin
                                  (write '(funapp 2342 39))
                                  (display "\n")
                                  (* board-height block-size))))
                              (begin
                                (write '(funapp 2343 31))
                                (display "\n")
                                (add1 x8449)))))
                           (begin
                             (write '(funapp 2344 28))
                             (display "\n")
                             (empty-scene x8450 x8448)))))
                        (begin
                          (write '(funapp 2345 25))
                          (display "\n")
                          (foldr x8452 x8447 bs)))))
                     g8446)))
                 (block->image
                  (lambda (b)
                    (letrec*
                     ((g8457
                       (letrec*
                        ((x8461
                          (letrec*
                           ((x8464
                             (begin
                               (write '(funapp 2354 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8463
                             (begin
                               (write '(funapp 2355 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8462
                             (begin
                               (write '(funapp 2356 36))
                               (display "\n")
                               (block-color b))))
                           (begin
                             (write '(funapp 2357 28))
                             (display "\n")
                             (rectangle
                              x8464
                              x8463
                              (begin
                                (write '(funapp 2357 50))
                                (display "\n")
                                'solid)
                              x8462))))
                         (x8458
                          (letrec*
                           ((x8460
                             (begin
                               (write '(funapp 2360 36))
                               (display "\n")
                               (add1 block-size)))
                            (x8459
                             (begin
                               (write '(funapp 2361 36))
                               (display "\n")
                               (add1 block-size))))
                           (begin
                             (write '(funapp 2362 28))
                             (display "\n")
                             (rectangle
                              x8460
                              x8459
                              (begin
                                (write '(funapp 2362 50))
                                (display "\n")
                                'outline)
                              (begin
                                (write '(funapp 2362 59))
                                (display "\n")
                                'black))))))
                        (begin
                          (write '(funapp 2363 25))
                          (display "\n")
                          (overlay x8461 x8458)))))
                     g8457)))
                 (place-block
                  (lambda (b scene)
                    (letrec*
                     ((g8465
                       (letrec*
                        ((x8474
                          (begin
                            (write '(funapp 2370 33))
                            (display "\n")
                            (block->image b)))
                         (x8470
                          (letrec*
                           ((x8472
                             (letrec*
                              ((x8473
                                (begin
                                  (write '(funapp 2375 39))
                                  (display "\n")
                                  (block-x b))))
                              (begin
                                (write '(funapp 2376 31))
                                (display "\n")
                                (* x8473 block-size))))
                            (x8471
                             (begin
                               (write '(funapp 2377 36))
                               (display "\n")
                               (/ block-size 2))))
                           (begin
                             (write '(funapp 2378 28))
                             (display "\n")
                             (+ x8472 x8471))))
                         (x8466
                          (letrec*
                           ((x8468
                             (letrec*
                              ((x8469
                                (begin
                                  (write '(funapp 2383 39))
                                  (display "\n")
                                  (block-y b))))
                              (begin
                                (write '(funapp 2384 31))
                                (display "\n")
                                (* x8469 block-size))))
                            (x8467
                             (begin
                               (write '(funapp 2385 36))
                               (display "\n")
                               (/ block-size 2))))
                           (begin
                             (write '(funapp 2386 28))
                             (display "\n")
                             (+ x8468 x8467)))))
                        (begin
                          (write '(funapp 2387 25))
                          (display "\n")
                          (place-image x8474 x8470 x8466 scene)))))
                     g8465)))
                 (world0
                  (lambda (tetras)
                    (letrec*
                     ((g8475
                       (letrec*
                        ((x8476
                          (begin
                            (write '(funapp 2394 33))
                            (display "\n")
                            (list-pick-random tetras))))
                        (begin
                          (write '(funapp 2395 25))
                          (display "\n")
                          (world x8476 null)))))
                     g8475))))
                (letrec*
                 ((g8477
                   (letrec*
                    ((x8540
                      (begin
                        (write '(funapp 2401 23))
                        (display "\n")
                        ((lambda (j7355 k7356 f7357)
                           (letrec*
                            ((g8541
                              (lambda (g7353 g7354)
                                (letrec*
                                 ((g8542
                                   (letrec*
                                    ((x8543
                                      (letrec*
                                       ((x8545
                                         (begin
                                           (write '(funapp 2410 46))
                                           (display "\n")
                                           (POSN/C j7355 k7356 g7353)))
                                        (x8544
                                         (begin
                                           (write '(funapp 2411 46))
                                           (display "\n")
                                           (POSN/C j7355 k7356 g7354))))
                                       (begin
                                         (write '(funapp 2412 38))
                                         (display "\n")
                                         (f7357 x8545 x8544)))))
                                    (begin
                                      (write '(funapp 2413 35))
                                      (display "\n")
                                      (boolean?/c j7355 k7356 x8543)))))
                                 g8542))))
                            g8541))
                         (begin
                           (write '(funapp 2416 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2417 23))
                           (display "\n")
                           'importer)
                         posn=?)))
                     (x8535
                      (letrec*
                       ((x8536
                         (letrec*
                          ((x8539 (input))
                           (x8537
                            (letrec*
                             ((x8538 (input)))
                             (begin
                               (write '(funapp 2425 56))
                               (display "\n")
                               (cons
                                x8538
                                (begin
                                  (write '(funapp 2425 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2426 27))
                            (display "\n")
                            (cons x8539 x8537)))))
                       (begin
                         (write '(funapp 2427 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2427 29))
                            (display "\n")
                            'posn)
                          x8536))))
                     (x8530
                      (letrec*
                       ((x8531
                         (letrec*
                          ((x8534 (input))
                           (x8532
                            (letrec*
                             ((x8533 (input)))
                             (begin
                               (write '(funapp 2434 56))
                               (display "\n")
                               (cons
                                x8533
                                (begin
                                  (write '(funapp 2434 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2435 27))
                            (display "\n")
                            (cons x8534 x8532)))))
                       (begin
                         (write '(funapp 2436 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2436 29))
                            (display "\n")
                            'posn)
                          x8531)))))
                    (begin
                      (write '(funapp 2437 21))
                      (display "\n")
                      (x8540 x8535 x8530))))
                  (g8478
                   (begin
                     (write '(funapp 2438 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2438 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2438 40))
                        (display "\n")
                        'importer)
                      COLOR/C)))
                  (g8479
                   (begin
                     (write '(funapp 2439 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2439 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2439 40))
                        (display "\n")
                        'importer)
                      POSN/C)))
                  (g8480
                   (begin
                     (write '(funapp 2440 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2440 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2440 40))
                        (display "\n")
                        'importer)
                      BLOCK/C)))
                  (g8481
                   (begin
                     (write '(funapp 2441 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2441 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2441 40))
                        (display "\n")
                        'importer)
                      TETRA/C)))
                  (g8482
                   (begin
                     (write '(funapp 2442 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2442 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2442 40))
                        (display "\n")
                        'importer)
                      WORLD/C)))
                  (g8483
                   (begin
                     (write '(funapp 2443 26))
                     (display "\n")
                     (any/c
                      (begin (write '(funapp 2443 32)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2443 40))
                        (display "\n")
                        'importer)
                      BSET/C)))
                  (g8484
                   (begin
                     (write '(funapp 2444 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2444 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2444 43))
                        (display "\n")
                        'importer)
                      block-size)))
                  (g8485
                   (begin
                     (write '(funapp 2445 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2445 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2445 43))
                        (display "\n")
                        'importer)
                      board-width)))
                  (g8486
                   (begin
                     (write '(funapp 2446 26))
                     (display "\n")
                     (integer?
                      (begin (write '(funapp 2446 35)) (display "\n") 'module)
                      (begin
                        (write '(funapp 2446 43))
                        (display "\n")
                        'importer)
                      board-height)))
                  (g8487
                   (letrec*
                    ((x8558
                      (begin
                        (write '(funapp 2450 23))
                        (display "\n")
                        ((lambda (j7360 k7361 f7362)
                           (letrec*
                            ((g8559
                              (lambda (g7358 g7359)
                                (letrec*
                                 ((g8560
                                   (letrec*
                                    ((x8561
                                      (letrec*
                                       ((x8563
                                         (begin
                                           (write '(funapp 2459 46))
                                           (display "\n")
                                           (POSN/C j7360 k7361 g7358)))
                                        (x8562
                                         (begin
                                           (write '(funapp 2460 46))
                                           (display "\n")
                                           (BLOCK/C j7360 k7361 g7359))))
                                       (begin
                                         (write '(funapp 2461 38))
                                         (display "\n")
                                         (f7362 x8563 x8562)))))
                                    (begin
                                      (write '(funapp 2462 35))
                                      (display "\n")
                                      (BLOCK/C j7360 k7361 x8561)))))
                                 g8560))))
                            g8559))
                         (begin
                           (write '(funapp 2465 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2466 23))
                           (display "\n")
                           'importer)
                         block-rotate-ccw)))
                     (x8553
                      (letrec*
                       ((x8554
                         (letrec*
                          ((x8557 (input))
                           (x8555
                            (letrec*
                             ((x8556 (input)))
                             (begin
                               (write '(funapp 2474 56))
                               (display "\n")
                               (cons
                                x8556
                                (begin
                                  (write '(funapp 2474 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2475 27))
                            (display "\n")
                            (cons x8557 x8555)))))
                       (begin
                         (write '(funapp 2476 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2476 29))
                            (display "\n")
                            'posn)
                          x8554))))
                     (x8546
                      (letrec*
                       ((x8547
                         (letrec*
                          ((x8552 (input))
                           (x8548
                            (letrec*
                             ((x8551 (input))
                              (x8549
                               (letrec*
                                ((x8550 (input)))
                                (begin
                                  (write '(funapp 2486 59))
                                  (display "\n")
                                  (cons
                                   x8550
                                   (begin
                                     (write '(funapp 2486 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2487 30))
                               (display "\n")
                               (cons x8551 x8549)))))
                          (begin
                            (write '(funapp 2488 27))
                            (display "\n")
                            (cons x8552 x8548)))))
                       (begin
                         (write '(funapp 2489 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2489 29))
                            (display "\n")
                            'block)
                          x8547)))))
                    (begin
                      (write '(funapp 2490 21))
                      (display "\n")
                      (x8558 x8553 x8546))))
                  (g8488
                   (letrec*
                    ((x8576
                      (begin
                        (write '(funapp 2494 23))
                        (display "\n")
                        ((lambda (j7365 k7366 f7367)
                           (letrec*
                            ((g8577
                              (lambda (g7363 g7364)
                                (letrec*
                                 ((g8578
                                   (letrec*
                                    ((x8579
                                      (letrec*
                                       ((x8581
                                         (begin
                                           (write '(funapp 2503 46))
                                           (display "\n")
                                           (POSN/C j7365 k7366 g7363)))
                                        (x8580
                                         (begin
                                           (write '(funapp 2504 46))
                                           (display "\n")
                                           (BLOCK/C j7365 k7366 g7364))))
                                       (begin
                                         (write '(funapp 2505 38))
                                         (display "\n")
                                         (f7367 x8581 x8580)))))
                                    (begin
                                      (write '(funapp 2506 35))
                                      (display "\n")
                                      (BLOCK/C j7365 k7366 x8579)))))
                                 g8578))))
                            g8577))
                         (begin
                           (write '(funapp 2509 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2510 23))
                           (display "\n")
                           'importer)
                         block-rotate-cw)))
                     (x8571
                      (letrec*
                       ((x8572
                         (letrec*
                          ((x8575 (input))
                           (x8573
                            (letrec*
                             ((x8574 (input)))
                             (begin
                               (write '(funapp 2518 56))
                               (display "\n")
                               (cons
                                x8574
                                (begin
                                  (write '(funapp 2518 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2519 27))
                            (display "\n")
                            (cons x8575 x8573)))))
                       (begin
                         (write '(funapp 2520 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2520 29))
                            (display "\n")
                            'posn)
                          x8572))))
                     (x8564
                      (letrec*
                       ((x8565
                         (letrec*
                          ((x8570 (input))
                           (x8566
                            (letrec*
                             ((x8569 (input))
                              (x8567
                               (letrec*
                                ((x8568 (input)))
                                (begin
                                  (write '(funapp 2530 59))
                                  (display "\n")
                                  (cons
                                   x8568
                                   (begin
                                     (write '(funapp 2530 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2531 30))
                               (display "\n")
                               (cons x8569 x8567)))))
                          (begin
                            (write '(funapp 2532 27))
                            (display "\n")
                            (cons x8570 x8566)))))
                       (begin
                         (write '(funapp 2533 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2533 29))
                            (display "\n")
                            'block)
                          x8565)))))
                    (begin
                      (write '(funapp 2534 21))
                      (display "\n")
                      (x8576 x8571 x8564))))
                  (g8489
                   (letrec*
                    ((x8596
                      (begin
                        (write '(funapp 2538 23))
                        (display "\n")
                        ((lambda (j7370 k7371 f7372)
                           (letrec*
                            ((g8597
                              (lambda (g7368 g7369)
                                (letrec*
                                 ((g8598
                                   (letrec*
                                    ((x8599
                                      (letrec*
                                       ((x8601
                                         (begin
                                           (write '(funapp 2547 46))
                                           (display "\n")
                                           (BLOCK/C j7370 k7371 g7368)))
                                        (x8600
                                         (begin
                                           (write '(funapp 2548 46))
                                           (display "\n")
                                           (BLOCK/C j7370 k7371 g7369))))
                                       (begin
                                         (write '(funapp 2549 38))
                                         (display "\n")
                                         (f7372 x8601 x8600)))))
                                    (begin
                                      (write '(funapp 2550 35))
                                      (display "\n")
                                      (boolean?/c j7370 k7371 x8599)))))
                                 g8598))))
                            g8597))
                         (begin
                           (write '(funapp 2553 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2554 23))
                           (display "\n")
                           'importer)
                         block=?)))
                     (x8589
                      (letrec*
                       ((x8590
                         (letrec*
                          ((x8595 (input))
                           (x8591
                            (letrec*
                             ((x8594 (input))
                              (x8592
                               (letrec*
                                ((x8593 (input)))
                                (begin
                                  (write '(funapp 2565 59))
                                  (display "\n")
                                  (cons
                                   x8593
                                   (begin
                                     (write '(funapp 2565 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2566 30))
                               (display "\n")
                               (cons x8594 x8592)))))
                          (begin
                            (write '(funapp 2567 27))
                            (display "\n")
                            (cons x8595 x8591)))))
                       (begin
                         (write '(funapp 2568 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2568 29))
                            (display "\n")
                            'block)
                          x8590))))
                     (x8582
                      (letrec*
                       ((x8583
                         (letrec*
                          ((x8588 (input))
                           (x8584
                            (letrec*
                             ((x8587 (input))
                              (x8585
                               (letrec*
                                ((x8586 (input)))
                                (begin
                                  (write '(funapp 2578 59))
                                  (display "\n")
                                  (cons
                                   x8586
                                   (begin
                                     (write '(funapp 2578 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2579 30))
                               (display "\n")
                               (cons x8587 x8585)))))
                          (begin
                            (write '(funapp 2580 27))
                            (display "\n")
                            (cons x8588 x8584)))))
                       (begin
                         (write '(funapp 2581 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2581 29))
                            (display "\n")
                            'block)
                          x8583)))))
                    (begin
                      (write '(funapp 2582 21))
                      (display "\n")
                      (x8596 x8589 x8582))))
                  (g8490
                   (letrec*
                    ((x8611
                      (begin
                        (write '(funapp 2586 23))
                        (display "\n")
                        ((lambda (j7376 k7377 f7378)
                           (letrec*
                            ((g8612
                              (lambda (g7373 g7374 g7375)
                                (letrec*
                                 ((g8613
                                   (letrec*
                                    ((x8614
                                      (letrec*
                                       ((x8617
                                         (begin
                                           (write '(funapp 2595 46))
                                           (display "\n")
                                           (real?/c j7376 k7377 g7373)))
                                        (x8616
                                         (begin
                                           (write '(funapp 2596 46))
                                           (display "\n")
                                           (real?/c j7376 k7377 g7374)))
                                        (x8615
                                         (begin
                                           (write '(funapp 2597 46))
                                           (display "\n")
                                           (BLOCK/C j7376 k7377 g7375))))
                                       (begin
                                         (write '(funapp 2598 38))
                                         (display "\n")
                                         (f7378 x8617 x8616 x8615)))))
                                    (begin
                                      (write '(funapp 2599 35))
                                      (display "\n")
                                      (BLOCK/C j7376 k7377 x8614)))))
                                 g8613))))
                            g8612))
                         (begin
                           (write '(funapp 2602 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2603 23))
                           (display "\n")
                           'importer)
                         block-move)))
                     (x8610 (input))
                     (x8609 (input))
                     (x8602
                      (letrec*
                       ((x8603
                         (letrec*
                          ((x8608 (input))
                           (x8604
                            (letrec*
                             ((x8607 (input))
                              (x8605
                               (letrec*
                                ((x8606 (input)))
                                (begin
                                  (write '(funapp 2616 59))
                                  (display "\n")
                                  (cons
                                   x8606
                                   (begin
                                     (write '(funapp 2616 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2617 30))
                               (display "\n")
                               (cons x8607 x8605)))))
                          (begin
                            (write '(funapp 2618 27))
                            (display "\n")
                            (cons x8608 x8604)))))
                       (begin
                         (write '(funapp 2619 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2619 29))
                            (display "\n")
                            'block)
                          x8603)))))
                    (begin
                      (write '(funapp 2620 21))
                      (display "\n")
                      (x8611 x8610 x8609 x8602))))
                  (g8491
                   (letrec*
                    ((x8626
                      (begin
                        (write '(funapp 2624 23))
                        (display "\n")
                        ((lambda (j7381 k7382 f7383)
                           (letrec*
                            ((g8627
                              (lambda (g7379 g7380)
                                (letrec*
                                 ((g8628
                                   (letrec*
                                    ((x8629
                                      (letrec*
                                       ((x8631
                                         (begin
                                           (write '(funapp 2633 46))
                                           (display "\n")
                                           (BSET/C j7381 k7382 g7379)))
                                        (x8630
                                         (begin
                                           (write '(funapp 2634 46))
                                           (display "\n")
                                           (BLOCK/C j7381 k7382 g7380))))
                                       (begin
                                         (write '(funapp 2635 38))
                                         (display "\n")
                                         (f7383 x8631 x8630)))))
                                    (begin
                                      (write '(funapp 2636 35))
                                      (display "\n")
                                      (boolean?/c j7381 k7382 x8629)))))
                                 g8628))))
                            g8627))
                         (begin
                           (write '(funapp 2639 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2640 23))
                           (display "\n")
                           'importer)
                         blocks-contains?)))
                     (x8625 (input))
                     (x8618
                      (letrec*
                       ((x8619
                         (letrec*
                          ((x8624 (input))
                           (x8620
                            (letrec*
                             ((x8623 (input))
                              (x8621
                               (letrec*
                                ((x8622 (input)))
                                (begin
                                  (write '(funapp 2652 59))
                                  (display "\n")
                                  (cons
                                   x8622
                                   (begin
                                     (write '(funapp 2652 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 2653 30))
                               (display "\n")
                               (cons x8623 x8621)))))
                          (begin
                            (write '(funapp 2654 27))
                            (display "\n")
                            (cons x8624 x8620)))))
                       (begin
                         (write '(funapp 2655 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2655 29))
                            (display "\n")
                            'block)
                          x8619)))))
                    (begin
                      (write '(funapp 2656 21))
                      (display "\n")
                      (x8626 x8625 x8618))))
                  (g8492
                   (letrec*
                    ((x8634
                      (begin
                        (write '(funapp 2660 23))
                        (display "\n")
                        ((lambda (j7386 k7387 f7388)
                           (letrec*
                            ((g8635
                              (lambda (g7384 g7385)
                                (letrec*
                                 ((g8636
                                   (letrec*
                                    ((x8637
                                      (letrec*
                                       ((x8639
                                         (begin
                                           (write '(funapp 2669 46))
                                           (display "\n")
                                           (BSET/C j7386 k7387 g7384)))
                                        (x8638
                                         (begin
                                           (write '(funapp 2670 46))
                                           (display "\n")
                                           (BSET/C j7386 k7387 g7385))))
                                       (begin
                                         (write '(funapp 2671 38))
                                         (display "\n")
                                         (f7388 x8639 x8638)))))
                                    (begin
                                      (write '(funapp 2672 35))
                                      (display "\n")
                                      (boolean?/c j7386 k7387 x8637)))))
                                 g8636))))
                            g8635))
                         (begin
                           (write '(funapp 2675 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2676 23))
                           (display "\n")
                           'importer)
                         blocks=?)))
                     (x8633 (input))
                     (x8632 (input)))
                    (begin
                      (write '(funapp 2680 21))
                      (display "\n")
                      (x8634 x8633 x8632))))
                  (g8493
                   (letrec*
                    ((x8642
                      (begin
                        (write '(funapp 2684 23))
                        (display "\n")
                        ((lambda (j7391 k7392 f7393)
                           (letrec*
                            ((g8643
                              (lambda (g7389 g7390)
                                (letrec*
                                 ((g8644
                                   (letrec*
                                    ((x8645
                                      (letrec*
                                       ((x8647
                                         (begin
                                           (write '(funapp 2693 46))
                                           (display "\n")
                                           (BSET/C j7391 k7392 g7389)))
                                        (x8646
                                         (begin
                                           (write '(funapp 2694 46))
                                           (display "\n")
                                           (BSET/C j7391 k7392 g7390))))
                                       (begin
                                         (write '(funapp 2695 38))
                                         (display "\n")
                                         (f7393 x8647 x8646)))))
                                    (begin
                                      (write '(funapp 2696 35))
                                      (display "\n")
                                      (boolean?/c j7391 k7392 x8645)))))
                                 g8644))))
                            g8643))
                         (begin
                           (write '(funapp 2699 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2700 23))
                           (display "\n")
                           'importer)
                         blocks-subset?)))
                     (x8641 (input))
                     (x8640 (input)))
                    (begin
                      (write '(funapp 2704 21))
                      (display "\n")
                      (x8642 x8641 x8640))))
                  (g8494
                   (letrec*
                    ((x8650
                      (begin
                        (write '(funapp 2708 23))
                        (display "\n")
                        ((lambda (j7396 k7397 f7398)
                           (letrec*
                            ((g8651
                              (lambda (g7394 g7395)
                                (letrec*
                                 ((g8652
                                   (letrec*
                                    ((x8653
                                      (letrec*
                                       ((x8655
                                         (begin
                                           (write '(funapp 2717 46))
                                           (display "\n")
                                           (BSET/C j7396 k7397 g7394)))
                                        (x8654
                                         (begin
                                           (write '(funapp 2718 46))
                                           (display "\n")
                                           (BSET/C j7396 k7397 g7395))))
                                       (begin
                                         (write '(funapp 2719 38))
                                         (display "\n")
                                         (f7398 x8655 x8654)))))
                                    (begin
                                      (write '(funapp 2720 35))
                                      (display "\n")
                                      (BSET/C j7396 k7397 x8653)))))
                                 g8652))))
                            g8651))
                         (begin
                           (write '(funapp 2723 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2724 23))
                           (display "\n")
                           'importer)
                         blocks-intersect)))
                     (x8649 (input))
                     (x8648 (input)))
                    (begin
                      (write '(funapp 2728 21))
                      (display "\n")
                      (x8650 x8649 x8648))))
                  (g8495
                   (letrec*
                    ((x8657
                      (begin
                        (write '(funapp 2732 23))
                        (display "\n")
                        ((lambda (j7400 k7401 f7402)
                           (letrec*
                            ((g8658
                              (lambda (g7399)
                                (letrec*
                                 ((g8659
                                   (letrec*
                                    ((x8660
                                      (letrec*
                                       ((x8661
                                         (begin
                                           (write '(funapp 2741 46))
                                           (display "\n")
                                           (BSET/C j7400 k7401 g7399))))
                                       (begin
                                         (write '(funapp 2742 38))
                                         (display "\n")
                                         (f7402 x8661)))))
                                    (begin
                                      (write '(funapp 2743 35))
                                      (display "\n")
                                      (real?/c j7400 k7401 x8660)))))
                                 g8659))))
                            g8658))
                         (begin
                           (write '(funapp 2746 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2747 23))
                           (display "\n")
                           'importer)
                         blocks-count)))
                     (x8656 (input)))
                    (begin
                      (write '(funapp 2750 21))
                      (display "\n")
                      (x8657 x8656))))
                  (g8496
                   (letrec*
                    ((x8663
                      (begin
                        (write '(funapp 2754 23))
                        (display "\n")
                        ((lambda (j7404 k7405 f7406)
                           (letrec*
                            ((g8664
                              (lambda (g7403)
                                (letrec*
                                 ((g8665
                                   (letrec*
                                    ((x8666
                                      (letrec*
                                       ((x8667
                                         (begin
                                           (write '(funapp 2763 46))
                                           (display "\n")
                                           (BSET/C j7404 k7405 g7403))))
                                       (begin
                                         (write '(funapp 2764 38))
                                         (display "\n")
                                         (f7406 x8667)))))
                                    (begin
                                      (write '(funapp 2765 35))
                                      (display "\n")
                                      (boolean?/c j7404 k7405 x8666)))))
                                 g8665))))
                            g8664))
                         (begin
                           (write '(funapp 2768 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2769 23))
                           (display "\n")
                           'importer)
                         blocks-overflow?)))
                     (x8662 (input)))
                    (begin
                      (write '(funapp 2772 21))
                      (display "\n")
                      (x8663 x8662))))
                  (g8497
                   (letrec*
                    ((x8671
                      (begin
                        (write '(funapp 2776 23))
                        (display "\n")
                        ((lambda (j7410 k7411 f7412)
                           (letrec*
                            ((g8672
                              (lambda (g7407 g7408 g7409)
                                (letrec*
                                 ((g8673
                                   (letrec*
                                    ((x8674
                                      (letrec*
                                       ((x8677
                                         (begin
                                           (write '(funapp 2785 46))
                                           (display "\n")
                                           (real?/c j7410 k7411 g7407)))
                                        (x8676
                                         (begin
                                           (write '(funapp 2786 46))
                                           (display "\n")
                                           (real?/c j7410 k7411 g7408)))
                                        (x8675
                                         (begin
                                           (write '(funapp 2787 46))
                                           (display "\n")
                                           (BSET/C j7410 k7411 g7409))))
                                       (begin
                                         (write '(funapp 2788 38))
                                         (display "\n")
                                         (f7412 x8677 x8676 x8675)))))
                                    (begin
                                      (write '(funapp 2789 35))
                                      (display "\n")
                                      (BSET/C j7410 k7411 x8674)))))
                                 g8673))))
                            g8672))
                         (begin
                           (write '(funapp 2792 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2793 23))
                           (display "\n")
                           'importer)
                         blocks-move)))
                     (x8670 (input))
                     (x8669 (input))
                     (x8668 (input)))
                    (begin
                      (write '(funapp 2798 21))
                      (display "\n")
                      (x8671 x8670 x8669 x8668))))
                  (g8498
                   (letrec*
                    ((x8684
                      (begin
                        (write '(funapp 2802 23))
                        (display "\n")
                        ((lambda (j7415 k7416 f7417)
                           (letrec*
                            ((g8685
                              (lambda (g7413 g7414)
                                (letrec*
                                 ((g8686
                                   (letrec*
                                    ((x8687
                                      (letrec*
                                       ((x8689
                                         (begin
                                           (write '(funapp 2811 46))
                                           (display "\n")
                                           (POSN/C j7415 k7416 g7413)))
                                        (x8688
                                         (begin
                                           (write '(funapp 2812 46))
                                           (display "\n")
                                           (BSET/C j7415 k7416 g7414))))
                                       (begin
                                         (write '(funapp 2813 38))
                                         (display "\n")
                                         (f7417 x8689 x8688)))))
                                    (begin
                                      (write '(funapp 2814 35))
                                      (display "\n")
                                      (BSET/C j7415 k7416 x8687)))))
                                 g8686))))
                            g8685))
                         (begin
                           (write '(funapp 2817 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2818 23))
                           (display "\n")
                           'importer)
                         blocks-rotate-cw)))
                     (x8679
                      (letrec*
                       ((x8680
                         (letrec*
                          ((x8683 (input))
                           (x8681
                            (letrec*
                             ((x8682 (input)))
                             (begin
                               (write '(funapp 2826 56))
                               (display "\n")
                               (cons
                                x8682
                                (begin
                                  (write '(funapp 2826 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2827 27))
                            (display "\n")
                            (cons x8683 x8681)))))
                       (begin
                         (write '(funapp 2828 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2828 29))
                            (display "\n")
                            'posn)
                          x8680))))
                     (x8678 (input)))
                    (begin
                      (write '(funapp 2830 21))
                      (display "\n")
                      (x8684 x8679 x8678))))
                  (g8499
                   (letrec*
                    ((x8696
                      (begin
                        (write '(funapp 2834 23))
                        (display "\n")
                        ((lambda (j7420 k7421 f7422)
                           (letrec*
                            ((g8697
                              (lambda (g7418 g7419)
                                (letrec*
                                 ((g8698
                                   (letrec*
                                    ((x8699
                                      (letrec*
                                       ((x8701
                                         (begin
                                           (write '(funapp 2843 46))
                                           (display "\n")
                                           (POSN/C j7420 k7421 g7418)))
                                        (x8700
                                         (begin
                                           (write '(funapp 2844 46))
                                           (display "\n")
                                           (BSET/C j7420 k7421 g7419))))
                                       (begin
                                         (write '(funapp 2845 38))
                                         (display "\n")
                                         (f7422 x8701 x8700)))))
                                    (begin
                                      (write '(funapp 2846 35))
                                      (display "\n")
                                      (BSET/C j7420 k7421 x8699)))))
                                 g8698))))
                            g8697))
                         (begin
                           (write '(funapp 2849 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2850 23))
                           (display "\n")
                           'importer)
                         blocks-rotate-ccw)))
                     (x8691
                      (letrec*
                       ((x8692
                         (letrec*
                          ((x8695 (input))
                           (x8693
                            (letrec*
                             ((x8694 (input)))
                             (begin
                               (write '(funapp 2858 56))
                               (display "\n")
                               (cons
                                x8694
                                (begin
                                  (write '(funapp 2858 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 2859 27))
                            (display "\n")
                            (cons x8695 x8693)))))
                       (begin
                         (write '(funapp 2860 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 2860 29))
                            (display "\n")
                            'posn)
                          x8692))))
                     (x8690 (input)))
                    (begin
                      (write '(funapp 2862 21))
                      (display "\n")
                      (x8696 x8691 x8690))))
                  (g8500
                   (letrec*
                    ((x8704
                      (begin
                        (write '(funapp 2866 23))
                        (display "\n")
                        ((lambda (j7425 k7426 f7427)
                           (letrec*
                            ((g8705
                              (lambda (g7423 g7424)
                                (letrec*
                                 ((g8706
                                   (letrec*
                                    ((x8707
                                      (letrec*
                                       ((x8709
                                         (begin
                                           (write '(funapp 2875 46))
                                           (display "\n")
                                           (BSET/C j7425 k7426 g7423)))
                                        (x8708
                                         (begin
                                           (write '(funapp 2876 46))
                                           (display "\n")
                                           (COLOR/C j7425 k7426 g7424))))
                                       (begin
                                         (write '(funapp 2877 38))
                                         (display "\n")
                                         (f7427 x8709 x8708)))))
                                    (begin
                                      (write '(funapp 2878 35))
                                      (display "\n")
                                      (BSET/C j7425 k7426 x8707)))))
                                 g8706))))
                            g8705))
                         (begin
                           (write '(funapp 2881 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2882 23))
                           (display "\n")
                           'importer)
                         blocks-change-color)))
                     (x8703 (input))
                     (x8702 (input)))
                    (begin
                      (write '(funapp 2886 21))
                      (display "\n")
                      (x8704 x8703 x8702))))
                  (g8501
                   (letrec*
                    ((x8712
                      (begin
                        (write '(funapp 2890 23))
                        (display "\n")
                        ((lambda (j7430 k7431 f7432)
                           (letrec*
                            ((g8713
                              (lambda (g7428 g7429)
                                (letrec*
                                 ((g8714
                                   (letrec*
                                    ((x8715
                                      (letrec*
                                       ((x8717
                                         (begin
                                           (write '(funapp 2899 46))
                                           (display "\n")
                                           (BSET/C j7430 k7431 g7428)))
                                        (x8716
                                         (begin
                                           (write '(funapp 2900 46))
                                           (display "\n")
                                           (real?/c j7430 k7431 g7429))))
                                       (begin
                                         (write '(funapp 2901 38))
                                         (display "\n")
                                         (f7432 x8717 x8716)))))
                                    (begin
                                      (write '(funapp 2902 35))
                                      (display "\n")
                                      (BSET/C j7430 k7431 x8715)))))
                                 g8714))))
                            g8713))
                         (begin
                           (write '(funapp 2905 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2906 23))
                           (display "\n")
                           'importer)
                         blocks-row)))
                     (x8711 (input))
                     (x8710 (input)))
                    (begin
                      (write '(funapp 2910 21))
                      (display "\n")
                      (x8712 x8711 x8710))))
                  (g8502
                   (letrec*
                    ((x8720
                      (begin
                        (write '(funapp 2914 23))
                        (display "\n")
                        ((lambda (j7435 k7436 f7437)
                           (letrec*
                            ((g8721
                              (lambda (g7433 g7434)
                                (letrec*
                                 ((g8722
                                   (letrec*
                                    ((x8723
                                      (letrec*
                                       ((x8725
                                         (begin
                                           (write '(funapp 2923 46))
                                           (display "\n")
                                           (BSET/C j7435 k7436 g7433)))
                                        (x8724
                                         (begin
                                           (write '(funapp 2924 46))
                                           (display "\n")
                                           (real?/c j7435 k7436 g7434))))
                                       (begin
                                         (write '(funapp 2925 38))
                                         (display "\n")
                                         (f7437 x8725 x8724)))))
                                    (begin
                                      (write '(funapp 2926 35))
                                      (display "\n")
                                      (boolean?/c j7435 k7436 x8723)))))
                                 g8722))))
                            g8721))
                         (begin
                           (write '(funapp 2929 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2930 23))
                           (display "\n")
                           'importer)
                         full-row?)))
                     (x8719 (input))
                     (x8718 (input)))
                    (begin
                      (write '(funapp 2934 21))
                      (display "\n")
                      (x8720 x8719 x8718))))
                  (g8503
                   (letrec*
                    ((x8728
                      (begin
                        (write '(funapp 2938 23))
                        (display "\n")
                        ((lambda (j7440 k7441 f7442)
                           (letrec*
                            ((g8729
                              (lambda (g7438 g7439)
                                (letrec*
                                 ((g8730
                                   (letrec*
                                    ((x8731
                                      (letrec*
                                       ((x8733
                                         (begin
                                           (write '(funapp 2947 46))
                                           (display "\n")
                                           (BSET/C j7440 k7441 g7438)))
                                        (x8732
                                         (begin
                                           (write '(funapp 2948 46))
                                           (display "\n")
                                           (BSET/C j7440 k7441 g7439))))
                                       (begin
                                         (write '(funapp 2949 38))
                                         (display "\n")
                                         (f7442 x8733 x8732)))))
                                    (begin
                                      (write '(funapp 2950 35))
                                      (display "\n")
                                      (BSET/C j7440 k7441 x8731)))))
                                 g8730))))
                            g8729))
                         (begin
                           (write '(funapp 2953 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2954 23))
                           (display "\n")
                           'importer)
                         blocks-union)))
                     (x8727 (input))
                     (x8726 (input)))
                    (begin
                      (write '(funapp 2958 21))
                      (display "\n")
                      (x8728 x8727 x8726))))
                  (g8504
                   (letrec*
                    ((x8735
                      (begin
                        (write '(funapp 2962 23))
                        (display "\n")
                        ((lambda (j7444 k7445 f7446)
                           (letrec*
                            ((g8736
                              (lambda (g7443)
                                (letrec*
                                 ((g8737
                                   (letrec*
                                    ((x8738
                                      (letrec*
                                       ((x8739
                                         (begin
                                           (write '(funapp 2971 46))
                                           (display "\n")
                                           (BSET/C j7444 k7445 g7443))))
                                       (begin
                                         (write '(funapp 2972 38))
                                         (display "\n")
                                         (f7446 x8739)))))
                                    (begin
                                      (write '(funapp 2973 35))
                                      (display "\n")
                                      (real?/c j7444 k7445 x8738)))))
                                 g8737))))
                            g8736))
                         (begin
                           (write '(funapp 2976 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2977 23))
                           (display "\n")
                           'importer)
                         blocks-max-x)))
                     (x8734 (input)))
                    (begin
                      (write '(funapp 2980 21))
                      (display "\n")
                      (x8735 x8734))))
                  (g8505
                   (letrec*
                    ((x8741
                      (begin
                        (write '(funapp 2984 23))
                        (display "\n")
                        ((lambda (j7448 k7449 f7450)
                           (letrec*
                            ((g8742
                              (lambda (g7447)
                                (letrec*
                                 ((g8743
                                   (letrec*
                                    ((x8744
                                      (letrec*
                                       ((x8745
                                         (begin
                                           (write '(funapp 2993 46))
                                           (display "\n")
                                           (BSET/C j7448 k7449 g7447))))
                                       (begin
                                         (write '(funapp 2994 38))
                                         (display "\n")
                                         (f7450 x8745)))))
                                    (begin
                                      (write '(funapp 2995 35))
                                      (display "\n")
                                      (real?/c j7448 k7449 x8744)))))
                                 g8743))))
                            g8742))
                         (begin
                           (write '(funapp 2998 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 2999 23))
                           (display "\n")
                           'importer)
                         blocks-min-x)))
                     (x8740 (input)))
                    (begin
                      (write '(funapp 3002 21))
                      (display "\n")
                      (x8741 x8740))))
                  (g8506
                   (letrec*
                    ((x8747
                      (begin
                        (write '(funapp 3006 23))
                        (display "\n")
                        ((lambda (j7452 k7453 f7454)
                           (letrec*
                            ((g8748
                              (lambda (g7451)
                                (letrec*
                                 ((g8749
                                   (letrec*
                                    ((x8750
                                      (letrec*
                                       ((x8751
                                         (begin
                                           (write '(funapp 3015 46))
                                           (display "\n")
                                           (BSET/C j7452 k7453 g7451))))
                                       (begin
                                         (write '(funapp 3016 38))
                                         (display "\n")
                                         (f7454 x8751)))))
                                    (begin
                                      (write '(funapp 3017 35))
                                      (display "\n")
                                      (real?/c j7452 k7453 x8750)))))
                                 g8749))))
                            g8748))
                         (begin
                           (write '(funapp 3020 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3021 23))
                           (display "\n")
                           'importer)
                         blocks-max-y)))
                     (x8746 (input)))
                    (begin
                      (write '(funapp 3024 21))
                      (display "\n")
                      (x8747 x8746))))
                  (g8507
                   (letrec*
                    ((x8753
                      (begin
                        (write '(funapp 3028 23))
                        (display "\n")
                        ((lambda (j7456 k7457 f7458)
                           (letrec*
                            ((g8754
                              (lambda (g7455)
                                (letrec*
                                 ((g8755
                                   (letrec*
                                    ((x8756
                                      (letrec*
                                       ((x8757
                                         (begin
                                           (write '(funapp 3037 46))
                                           (display "\n")
                                           (BSET/C j7456 k7457 g7455))))
                                       (begin
                                         (write '(funapp 3038 38))
                                         (display "\n")
                                         (f7458 x8757)))))
                                    (begin
                                      (write '(funapp 3039 35))
                                      (display "\n")
                                      (BSET/C j7456 k7457 x8756)))))
                                 g8755))))
                            g8754))
                         (begin
                           (write '(funapp 3042 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3043 23))
                           (display "\n")
                           'importer)
                         eliminate-full-rows)))
                     (x8752 (input)))
                    (begin
                      (write '(funapp 3046 21))
                      (display "\n")
                      (x8753 x8752))))
                  (g8508
                   (letrec*
                    ((x8769
                      (begin
                        (write '(funapp 3050 23))
                        (display "\n")
                        ((lambda (j7462 k7463 f7464)
                           (letrec*
                            ((g8770
                              (lambda (g7459 g7460 g7461)
                                (letrec*
                                 ((g8771
                                   (letrec*
                                    ((x8772
                                      (letrec*
                                       ((x8775
                                         (begin
                                           (write '(funapp 3059 46))
                                           (display "\n")
                                           (integer?/c j7462 k7463 g7459)))
                                        (x8774
                                         (begin
                                           (write '(funapp 3060 46))
                                           (display "\n")
                                           (integer?/c j7462 k7463 g7460)))
                                        (x8773
                                         (begin
                                           (write '(funapp 3061 46))
                                           (display "\n")
                                           (TETRA/C j7462 k7463 g7461))))
                                       (begin
                                         (write '(funapp 3062 38))
                                         (display "\n")
                                         (f7464 x8775 x8774 x8773)))))
                                    (begin
                                      (write '(funapp 3063 35))
                                      (display "\n")
                                      (TETRA/C j7462 k7463 x8772)))))
                                 g8771))))
                            g8770))
                         (begin
                           (write '(funapp 3066 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3067 23))
                           (display "\n")
                           'importer)
                         tetra-move)))
                     (x8768 (input))
                     (x8767 (input))
                     (x8758
                      (letrec*
                       ((x8759
                         (letrec*
                          ((x8762
                            (letrec*
                             ((x8763
                               (letrec*
                                ((x8766 (input))
                                 (x8764
                                  (letrec*
                                   ((x8765 (input)))
                                   (begin
                                     (write '(funapp 3083 36))
                                     (display "\n")
                                     (cons
                                      x8765
                                      (begin
                                        (write '(funapp 3083 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3084 33))
                                  (display "\n")
                                  (cons x8766 x8764)))))
                             (begin
                               (write '(funapp 3085 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3085 35))
                                  (display "\n")
                                  'posn)
                                x8763))))
                           (x8760
                            (letrec*
                             ((x8761 (input)))
                             (begin
                               (write '(funapp 3087 56))
                               (display "\n")
                               (cons
                                x8761
                                (begin
                                  (write '(funapp 3087 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3088 27))
                            (display "\n")
                            (cons x8762 x8760)))))
                       (begin
                         (write '(funapp 3089 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3089 29))
                            (display "\n")
                            'tetra)
                          x8759)))))
                    (begin
                      (write '(funapp 3090 21))
                      (display "\n")
                      (x8769 x8768 x8767 x8758))))
                  (g8509
                   (letrec*
                    ((x8785
                      (begin
                        (write '(funapp 3094 23))
                        (display "\n")
                        ((lambda (j7466 k7467 f7468)
                           (letrec*
                            ((g8786
                              (lambda (g7465)
                                (letrec*
                                 ((g8787
                                   (letrec*
                                    ((x8788
                                      (letrec*
                                       ((x8789
                                         (begin
                                           (write '(funapp 3103 46))
                                           (display "\n")
                                           (TETRA/C j7466 k7467 g7465))))
                                       (begin
                                         (write '(funapp 3104 38))
                                         (display "\n")
                                         (f7468 x8789)))))
                                    (begin
                                      (write '(funapp 3105 35))
                                      (display "\n")
                                      (TETRA/C j7466 k7467 x8788)))))
                                 g8787))))
                            g8786))
                         (begin
                           (write '(funapp 3108 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3109 23))
                           (display "\n")
                           'importer)
                         tetra-rotate-ccw)))
                     (x8776
                      (letrec*
                       ((x8777
                         (letrec*
                          ((x8780
                            (letrec*
                             ((x8781
                               (letrec*
                                ((x8784 (input))
                                 (x8782
                                  (letrec*
                                   ((x8783 (input)))
                                   (begin
                                     (write '(funapp 3123 36))
                                     (display "\n")
                                     (cons
                                      x8783
                                      (begin
                                        (write '(funapp 3123 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3124 33))
                                  (display "\n")
                                  (cons x8784 x8782)))))
                             (begin
                               (write '(funapp 3125 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3125 35))
                                  (display "\n")
                                  'posn)
                                x8781))))
                           (x8778
                            (letrec*
                             ((x8779 (input)))
                             (begin
                               (write '(funapp 3127 56))
                               (display "\n")
                               (cons
                                x8779
                                (begin
                                  (write '(funapp 3127 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3128 27))
                            (display "\n")
                            (cons x8780 x8778)))))
                       (begin
                         (write '(funapp 3129 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3129 29))
                            (display "\n")
                            'tetra)
                          x8777)))))
                    (begin
                      (write '(funapp 3130 21))
                      (display "\n")
                      (x8785 x8776))))
                  (g8510
                   (letrec*
                    ((x8799
                      (begin
                        (write '(funapp 3134 23))
                        (display "\n")
                        ((lambda (j7470 k7471 f7472)
                           (letrec*
                            ((g8800
                              (lambda (g7469)
                                (letrec*
                                 ((g8801
                                   (letrec*
                                    ((x8802
                                      (letrec*
                                       ((x8803
                                         (begin
                                           (write '(funapp 3143 46))
                                           (display "\n")
                                           (TETRA/C j7470 k7471 g7469))))
                                       (begin
                                         (write '(funapp 3144 38))
                                         (display "\n")
                                         (f7472 x8803)))))
                                    (begin
                                      (write '(funapp 3145 35))
                                      (display "\n")
                                      (TETRA/C j7470 k7471 x8802)))))
                                 g8801))))
                            g8800))
                         (begin
                           (write '(funapp 3148 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3149 23))
                           (display "\n")
                           'importer)
                         tetra-rotate-cw)))
                     (x8790
                      (letrec*
                       ((x8791
                         (letrec*
                          ((x8794
                            (letrec*
                             ((x8795
                               (letrec*
                                ((x8798 (input))
                                 (x8796
                                  (letrec*
                                   ((x8797 (input)))
                                   (begin
                                     (write '(funapp 3163 36))
                                     (display "\n")
                                     (cons
                                      x8797
                                      (begin
                                        (write '(funapp 3163 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3164 33))
                                  (display "\n")
                                  (cons x8798 x8796)))))
                             (begin
                               (write '(funapp 3165 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3165 35))
                                  (display "\n")
                                  'posn)
                                x8795))))
                           (x8792
                            (letrec*
                             ((x8793 (input)))
                             (begin
                               (write '(funapp 3167 56))
                               (display "\n")
                               (cons
                                x8793
                                (begin
                                  (write '(funapp 3167 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3168 27))
                            (display "\n")
                            (cons x8794 x8792)))))
                       (begin
                         (write '(funapp 3169 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3169 29))
                            (display "\n")
                            'tetra)
                          x8791)))))
                    (begin
                      (write '(funapp 3170 21))
                      (display "\n")
                      (x8799 x8790))))
                  (g8511
                   (letrec*
                    ((x8814
                      (begin
                        (write '(funapp 3174 23))
                        (display "\n")
                        ((lambda (j7475 k7476 f7477)
                           (letrec*
                            ((g8815
                              (lambda (g7473 g7474)
                                (letrec*
                                 ((g8816
                                   (letrec*
                                    ((x8817
                                      (letrec*
                                       ((x8819
                                         (begin
                                           (write '(funapp 3183 46))
                                           (display "\n")
                                           (TETRA/C j7475 k7476 g7473)))
                                        (x8818
                                         (begin
                                           (write '(funapp 3184 46))
                                           (display "\n")
                                           (BSET/C j7475 k7476 g7474))))
                                       (begin
                                         (write '(funapp 3185 38))
                                         (display "\n")
                                         (f7477 x8819 x8818)))))
                                    (begin
                                      (write '(funapp 3186 35))
                                      (display "\n")
                                      (boolean?/c j7475 k7476 x8817)))))
                                 g8816))))
                            g8815))
                         (begin
                           (write '(funapp 3189 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3190 23))
                           (display "\n")
                           'importer)
                         tetra-overlaps-blocks?)))
                     (x8805
                      (letrec*
                       ((x8806
                         (letrec*
                          ((x8809
                            (letrec*
                             ((x8810
                               (letrec*
                                ((x8813 (input))
                                 (x8811
                                  (letrec*
                                   ((x8812 (input)))
                                   (begin
                                     (write '(funapp 3204 36))
                                     (display "\n")
                                     (cons
                                      x8812
                                      (begin
                                        (write '(funapp 3204 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3205 33))
                                  (display "\n")
                                  (cons x8813 x8811)))))
                             (begin
                               (write '(funapp 3206 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3206 35))
                                  (display "\n")
                                  'posn)
                                x8810))))
                           (x8807
                            (letrec*
                             ((x8808 (input)))
                             (begin
                               (write '(funapp 3208 56))
                               (display "\n")
                               (cons
                                x8808
                                (begin
                                  (write '(funapp 3208 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3209 27))
                            (display "\n")
                            (cons x8809 x8807)))))
                       (begin
                         (write '(funapp 3210 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3210 29))
                            (display "\n")
                            'tetra)
                          x8806))))
                     (x8804 (input)))
                    (begin
                      (write '(funapp 3212 21))
                      (display "\n")
                      (x8814 x8805 x8804))))
                  (g8512
                   (letrec*
                    ((x8831
                      (begin
                        (write '(funapp 3216 23))
                        (display "\n")
                        ((lambda (j7489 k7490 f7491)
                           (letrec*
                            ((g8832
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
                                 ((g8833
                                   (letrec*
                                    ((x8834
                                      (letrec*
                                       ((x8845
                                         (begin
                                           (write '(funapp 3235 46))
                                           (display "\n")
                                           (COLOR/C j7489 k7490 g7478)))
                                        (x8844
                                         (begin
                                           (write '(funapp 3236 46))
                                           (display "\n")
                                           (real?/c j7489 k7490 g7479)))
                                        (x8843
                                         (begin
                                           (write '(funapp 3237 46))
                                           (display "\n")
                                           (real?/c j7489 k7490 g7480)))
                                        (x8842
                                         (begin
                                           (write '(funapp 3238 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7481)))
                                        (x8841
                                         (begin
                                           (write '(funapp 3239 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7482)))
                                        (x8840
                                         (begin
                                           (write '(funapp 3240 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7483)))
                                        (x8839
                                         (begin
                                           (write '(funapp 3241 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7484)))
                                        (x8838
                                         (begin
                                           (write '(funapp 3242 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7485)))
                                        (x8837
                                         (begin
                                           (write '(funapp 3243 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7486)))
                                        (x8836
                                         (begin
                                           (write '(funapp 3244 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7487)))
                                        (x8835
                                         (begin
                                           (write '(funapp 3245 46))
                                           (display "\n")
                                           (integer?/c j7489 k7490 g7488))))
                                       (begin
                                         (write '(funapp 3246 38))
                                         (display "\n")
                                         (f7491
                                          x8845
                                          x8844
                                          x8843
                                          x8842
                                          x8841
                                          x8840
                                          x8839
                                          x8838
                                          x8837
                                          x8836
                                          x8835)))))
                                    (begin
                                      (write '(funapp 3258 35))
                                      (display "\n")
                                      (TETRA/C j7489 k7490 x8834)))))
                                 g8833))))
                            g8832))
                         (begin
                           (write '(funapp 3261 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3262 23))
                           (display "\n")
                           'importer)
                         build-tetra-blocks)))
                     (x8830 (input))
                     (x8829 (input))
                     (x8828 (input))
                     (x8827 (input))
                     (x8826 (input))
                     (x8825 (input))
                     (x8824 (input))
                     (x8823 (input))
                     (x8822 (input))
                     (x8821 (input))
                     (x8820 (input)))
                    (begin
                      (write '(funapp 3275 21))
                      (display "\n")
                      (x8831
                       x8830
                       x8829
                       x8828
                       x8827
                       x8826
                       x8825
                       x8824
                       x8823
                       x8822
                       x8821
                       x8820))))
                  (g8513
                   (letrec*
                    ((x8856
                      (begin
                        (write '(funapp 3290 23))
                        (display "\n")
                        ((lambda (j7494 k7495 f7496)
                           (letrec*
                            ((g8857
                              (lambda (g7492 g7493)
                                (letrec*
                                 ((g8858
                                   (letrec*
                                    ((x8859
                                      (letrec*
                                       ((x8861
                                         (begin
                                           (write '(funapp 3299 46))
                                           (display "\n")
                                           (TETRA/C j7494 k7495 g7492)))
                                        (x8860
                                         (begin
                                           (write '(funapp 3300 46))
                                           (display "\n")
                                           (COLOR/C j7494 k7495 g7493))))
                                       (begin
                                         (write '(funapp 3301 38))
                                         (display "\n")
                                         (f7496 x8861 x8860)))))
                                    (begin
                                      (write '(funapp 3302 35))
                                      (display "\n")
                                      (TETRA/C j7494 k7495 x8859)))))
                                 g8858))))
                            g8857))
                         (begin
                           (write '(funapp 3305 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3306 23))
                           (display "\n")
                           'importer)
                         tetra-change-color)))
                     (x8847
                      (letrec*
                       ((x8848
                         (letrec*
                          ((x8851
                            (letrec*
                             ((x8852
                               (letrec*
                                ((x8855 (input))
                                 (x8853
                                  (letrec*
                                   ((x8854 (input)))
                                   (begin
                                     (write '(funapp 3320 36))
                                     (display "\n")
                                     (cons
                                      x8854
                                      (begin
                                        (write '(funapp 3320 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3321 33))
                                  (display "\n")
                                  (cons x8855 x8853)))))
                             (begin
                               (write '(funapp 3322 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3322 35))
                                  (display "\n")
                                  'posn)
                                x8852))))
                           (x8849
                            (letrec*
                             ((x8850 (input)))
                             (begin
                               (write '(funapp 3324 56))
                               (display "\n")
                               (cons
                                x8850
                                (begin
                                  (write '(funapp 3324 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3325 27))
                            (display "\n")
                            (cons x8851 x8849)))))
                       (begin
                         (write '(funapp 3326 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3326 29))
                            (display "\n")
                            'tetra)
                          x8848))))
                     (x8846 (input)))
                    (begin
                      (write '(funapp 3328 21))
                      (display "\n")
                      (x8856 x8847 x8846))))
                  (g8514
                   (letrec*
                    ((x8876
                      (begin
                        (write '(funapp 3332 23))
                        (display "\n")
                        ((lambda (j7499 k7500 f7501)
                           (letrec*
                            ((g8877
                              (lambda (g7497 g7498)
                                (letrec*
                                 ((g8878
                                   (letrec*
                                    ((x8879
                                      (letrec*
                                       ((x8881
                                         (begin
                                           (write '(funapp 3341 46))
                                           (display "\n")
                                           (WORLD/C j7499 k7500 g7497)))
                                        (x8880
                                         (begin
                                           (write '(funapp 3342 46))
                                           (display "\n")
                                           (string?/c j7499 k7500 g7498))))
                                       (begin
                                         (write '(funapp 3343 38))
                                         (display "\n")
                                         (f7501 x8881 x8880)))))
                                    (begin
                                      (write '(funapp 3344 35))
                                      (display "\n")
                                      (WORLD/C j7499 k7500 x8879)))))
                                 g8878))))
                            g8877))
                         (begin
                           (write '(funapp 3347 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3348 23))
                           (display "\n")
                           'importer)
                         world-key-move)))
                     (x8863
                      (letrec*
                       ((x8864
                         (letrec*
                          ((x8867
                            (letrec*
                             ((x8868
                               (letrec*
                                ((x8871
                                  (letrec*
                                   ((x8872
                                     (letrec*
                                      ((x8875 (input))
                                       (x8873
                                        (letrec*
                                         ((x8874 (input)))
                                         (begin
                                           (write '(funapp 3366 42))
                                           (display "\n")
                                           (cons
                                            x8874
                                            (begin
                                              (write '(funapp 3366 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3367 39))
                                        (display "\n")
                                        (cons x8875 x8873)))))
                                   (begin
                                     (write '(funapp 3368 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3368 41))
                                        (display "\n")
                                        'posn)
                                      x8872))))
                                 (x8869
                                  (letrec*
                                   ((x8870 (input)))
                                   (begin
                                     (write '(funapp 3372 36))
                                     (display "\n")
                                     (cons
                                      x8870
                                      (begin
                                        (write '(funapp 3372 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3373 33))
                                  (display "\n")
                                  (cons x8871 x8869)))))
                             (begin
                               (write '(funapp 3374 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3374 35))
                                  (display "\n")
                                  'tetra)
                                x8868))))
                           (x8865
                            (letrec*
                             ((x8866 (input)))
                             (begin
                               (write '(funapp 3376 56))
                               (display "\n")
                               (cons
                                x8866
                                (begin
                                  (write '(funapp 3376 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3377 27))
                            (display "\n")
                            (cons x8867 x8865)))))
                       (begin
                         (write '(funapp 3378 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3378 29))
                            (display "\n")
                            'world)
                          x8864))))
                     (x8862 (input)))
                    (begin
                      (write '(funapp 3380 21))
                      (display "\n")
                      (x8876 x8863 x8862))))
                  (g8515
                   (letrec*
                    ((x8896
                      (begin
                        (write '(funapp 3384 23))
                        (display "\n")
                        ((lambda (j7504 k7505 f7506)
                           (letrec*
                            ((g8897
                              (lambda (g7502 g7503)
                                (letrec*
                                 ((g8898
                                   (letrec*
                                    ((x8899
                                      (letrec*
                                       ((x8903
                                         (begin
                                           (write '(funapp 3393 46))
                                           (display "\n")
                                           (WORLD/C j7504 k7505 g7502)))
                                        (x8900
                                         (letrec*
                                          ((x8901
                                            (letrec*
                                             ((x8902
                                               (begin
                                                 (write '(funapp 3398 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3399 44))
                                               (display "\n")
                                               (and/c cons?/c x8902)))))
                                          (begin
                                            (write '(funapp 3400 41))
                                            (display "\n")
                                            (x8901 j7504 k7505 g7503)))))
                                       (begin
                                         (write '(funapp 3401 38))
                                         (display "\n")
                                         (f7506 x8903 x8900)))))
                                    (begin
                                      (write '(funapp 3402 35))
                                      (display "\n")
                                      (WORLD/C j7504 k7505 x8899)))))
                                 g8898))))
                            g8897))
                         (begin
                           (write '(funapp 3405 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3406 23))
                           (display "\n")
                           'importer)
                         next-world)))
                     (x8883
                      (letrec*
                       ((x8884
                         (letrec*
                          ((x8887
                            (letrec*
                             ((x8888
                               (letrec*
                                ((x8891
                                  (letrec*
                                   ((x8892
                                     (letrec*
                                      ((x8895 (input))
                                       (x8893
                                        (letrec*
                                         ((x8894 (input)))
                                         (begin
                                           (write '(funapp 3424 42))
                                           (display "\n")
                                           (cons
                                            x8894
                                            (begin
                                              (write '(funapp 3424 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3425 39))
                                        (display "\n")
                                        (cons x8895 x8893)))))
                                   (begin
                                     (write '(funapp 3426 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3426 41))
                                        (display "\n")
                                        'posn)
                                      x8892))))
                                 (x8889
                                  (letrec*
                                   ((x8890 (input)))
                                   (begin
                                     (write '(funapp 3430 36))
                                     (display "\n")
                                     (cons
                                      x8890
                                      (begin
                                        (write '(funapp 3430 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3431 33))
                                  (display "\n")
                                  (cons x8891 x8889)))))
                             (begin
                               (write '(funapp 3432 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3432 35))
                                  (display "\n")
                                  'tetra)
                                x8888))))
                           (x8885
                            (letrec*
                             ((x8886 (input)))
                             (begin
                               (write '(funapp 3434 56))
                               (display "\n")
                               (cons
                                x8886
                                (begin
                                  (write '(funapp 3434 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3435 27))
                            (display "\n")
                            (cons x8887 x8885)))))
                       (begin
                         (write '(funapp 3436 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3436 29))
                            (display "\n")
                            'world)
                          x8884))))
                     (x8882 (input)))
                    (begin
                      (write '(funapp 3438 21))
                      (display "\n")
                      (x8896 x8883 x8882))))
                  (g8516
                   (letrec*
                    ((x8917
                      (begin
                        (write '(funapp 3442 23))
                        (display "\n")
                        ((lambda (j7508 k7509 f7510)
                           (letrec*
                            ((g8918
                              (lambda (g7507)
                                (letrec*
                                 ((g8919
                                   (letrec*
                                    ((x8920
                                      (letrec*
                                       ((x8921
                                         (begin
                                           (write '(funapp 3451 46))
                                           (display "\n")
                                           (WORLD/C j7508 k7509 g7507))))
                                       (begin
                                         (write '(funapp 3452 38))
                                         (display "\n")
                                         (f7510 x8921)))))
                                    (begin
                                      (write '(funapp 3453 35))
                                      (display "\n")
                                      (BSET/C j7508 k7509 x8920)))))
                                 g8919))))
                            g8918))
                         (begin
                           (write '(funapp 3456 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3457 23))
                           (display "\n")
                           'importer)
                         ghost-blocks)))
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
                                           (write '(funapp 3475 42))
                                           (display "\n")
                                           (cons
                                            x8915
                                            (begin
                                              (write '(funapp 3475 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3476 39))
                                        (display "\n")
                                        (cons x8916 x8914)))))
                                   (begin
                                     (write '(funapp 3477 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3477 41))
                                        (display "\n")
                                        'posn)
                                      x8913))))
                                 (x8910
                                  (letrec*
                                   ((x8911 (input)))
                                   (begin
                                     (write '(funapp 3481 36))
                                     (display "\n")
                                     (cons
                                      x8911
                                      (begin
                                        (write '(funapp 3481 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3482 33))
                                  (display "\n")
                                  (cons x8912 x8910)))))
                             (begin
                               (write '(funapp 3483 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3483 35))
                                  (display "\n")
                                  'tetra)
                                x8909))))
                           (x8906
                            (letrec*
                             ((x8907 (input)))
                             (begin
                               (write '(funapp 3485 56))
                               (display "\n")
                               (cons
                                x8907
                                (begin
                                  (write '(funapp 3485 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3486 27))
                            (display "\n")
                            (cons x8908 x8906)))))
                       (begin
                         (write '(funapp 3487 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3487 29))
                            (display "\n")
                            'world)
                          x8905)))))
                    (begin
                      (write '(funapp 3488 21))
                      (display "\n")
                      (x8917 x8904))))
                  (g8517
                   (letrec*
                    ((x8923
                      (begin
                        (write '(funapp 3492 23))
                        (display "\n")
                        ((lambda (j7512 k7513 f7514)
                           (letrec*
                            ((g8924
                              (lambda (g7511)
                                (letrec*
                                 ((g8925
                                   (letrec*
                                    ((x8926
                                      (letrec*
                                       ((x8927
                                         (begin
                                           (write '(funapp 3501 46))
                                           (display "\n")
                                           (any/c j7512 k7513 g7511))))
                                       (begin
                                         (write '(funapp 3502 38))
                                         (display "\n")
                                         (f7514 x8927)))))
                                    (begin
                                      (write '(funapp 3503 35))
                                      (display "\n")
                                      (boolean?/c j7512 k7513 x8926)))))
                                 g8925))))
                            g8924))
                         (begin
                           (write '(funapp 3506 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3507 23))
                           (display "\n")
                           'importer)
                         image?)))
                     (x8922 (input)))
                    (begin
                      (write '(funapp 3510 21))
                      (display "\n")
                      (x8923 x8922))))
                  (g8518
                   (letrec*
                    ((x8930
                      (begin
                        (write '(funapp 3514 23))
                        (display "\n")
                        ((lambda (j7517 k7518 f7519)
                           (letrec*
                            ((g8931
                              (lambda (g7515 g7516)
                                (letrec*
                                 ((g8932
                                   (letrec*
                                    ((x8933
                                      (letrec*
                                       ((x8935
                                         (begin
                                           (write '(funapp 3523 46))
                                           (display "\n")
                                           (image? j7517 k7518 g7515)))
                                        (x8934
                                         (begin
                                           (write '(funapp 3524 46))
                                           (display "\n")
                                           (image? j7517 k7518 g7516))))
                                       (begin
                                         (write '(funapp 3525 38))
                                         (display "\n")
                                         (f7519 x8935 x8934)))))
                                    (begin
                                      (write '(funapp 3526 35))
                                      (display "\n")
                                      (image? j7517 k7518 x8933)))))
                                 g8932))))
                            g8931))
                         (begin
                           (write '(funapp 3529 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3530 23))
                           (display "\n")
                           'importer)
                         overlay)))
                     (x8929 (input))
                     (x8928 (input)))
                    (begin
                      (write '(funapp 3534 21))
                      (display "\n")
                      (x8930 x8929 x8928))))
                  (g8519
                   (letrec*
                    ((x8939
                      (begin
                        (write '(funapp 3538 23))
                        (display "\n")
                        ((lambda (j7523 k7524 f7525)
                           (letrec*
                            ((g8940
                              (lambda (g7520 g7521 g7522)
                                (letrec*
                                 ((g8941
                                   (letrec*
                                    ((x8942
                                      (letrec*
                                       ((x8945
                                         (begin
                                           (write '(funapp 3547 46))
                                           (display "\n")
                                           (real?/c j7523 k7524 g7520)))
                                        (x8944
                                         (begin
                                           (write '(funapp 3548 46))
                                           (display "\n")
                                           (real?/c j7523 k7524 g7521)))
                                        (x8943
                                         (begin
                                           (write '(funapp 3549 46))
                                           (display "\n")
                                           (string?/c j7523 k7524 g7522))))
                                       (begin
                                         (write '(funapp 3550 38))
                                         (display "\n")
                                         (f7525 x8945 x8944 x8943)))))
                                    (begin
                                      (write '(funapp 3551 35))
                                      (display "\n")
                                      (image? j7523 k7524 x8942)))))
                                 g8941))))
                            g8940))
                         (begin
                           (write '(funapp 3554 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3555 23))
                           (display "\n")
                           'importer)
                         circle)))
                     (x8938 (input))
                     (x8937 (input))
                     (x8936 (input)))
                    (begin
                      (write '(funapp 3560 21))
                      (display "\n")
                      (x8939 x8938 x8937 x8936))))
                  (g8520
                   (letrec*
                    ((x8950
                      (begin
                        (write '(funapp 3564 23))
                        (display "\n")
                        ((lambda (j7530 k7531 f7532)
                           (letrec*
                            ((g8951
                              (lambda (g7526 g7527 g7528 g7529)
                                (letrec*
                                 ((g8952
                                   (letrec*
                                    ((x8953
                                      (letrec*
                                       ((x8957
                                         (begin
                                           (write '(funapp 3573 46))
                                           (display "\n")
                                           (real?/c j7530 k7531 g7526)))
                                        (x8956
                                         (begin
                                           (write '(funapp 3574 46))
                                           (display "\n")
                                           (real?/c j7530 k7531 g7527)))
                                        (x8955
                                         (begin
                                           (write '(funapp 3575 46))
                                           (display "\n")
                                           (COLOR/C j7530 k7531 g7528)))
                                        (x8954
                                         (begin
                                           (write '(funapp 3576 46))
                                           (display "\n")
                                           (COLOR/C j7530 k7531 g7529))))
                                       (begin
                                         (write '(funapp 3577 38))
                                         (display "\n")
                                         (f7532 x8957 x8956 x8955 x8954)))))
                                    (begin
                                      (write '(funapp 3578 35))
                                      (display "\n")
                                      (image? j7530 k7531 x8953)))))
                                 g8952))))
                            g8951))
                         (begin
                           (write '(funapp 3581 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3582 23))
                           (display "\n")
                           'importer)
                         rectangle)))
                     (x8949 (input))
                     (x8948 (input))
                     (x8947 (input))
                     (x8946 (input)))
                    (begin
                      (write '(funapp 3588 21))
                      (display "\n")
                      (x8950 x8949 x8948 x8947 x8946))))
                  (g8521
                   (letrec*
                    ((x8962
                      (begin
                        (write '(funapp 3592 23))
                        (display "\n")
                        ((lambda (j7537 k7538 f7539)
                           (letrec*
                            ((g8963
                              (lambda (g7533 g7534 g7535 g7536)
                                (letrec*
                                 ((g8964
                                   (letrec*
                                    ((x8965
                                      (letrec*
                                       ((x8969
                                         (begin
                                           (write '(funapp 3601 46))
                                           (display "\n")
                                           (image/c j7537 k7538 g7533)))
                                        (x8968
                                         (begin
                                           (write '(funapp 3602 46))
                                           (display "\n")
                                           (real?/c j7537 k7538 g7534)))
                                        (x8967
                                         (begin
                                           (write '(funapp 3603 46))
                                           (display "\n")
                                           (real?/c j7537 k7538 g7535)))
                                        (x8966
                                         (begin
                                           (write '(funapp 3604 46))
                                           (display "\n")
                                           (image/c j7537 k7538 g7536))))
                                       (begin
                                         (write '(funapp 3605 38))
                                         (display "\n")
                                         (f7539 x8969 x8968 x8967 x8966)))))
                                    (begin
                                      (write '(funapp 3606 35))
                                      (display "\n")
                                      (image/c j7537 k7538 x8965)))))
                                 g8964))))
                            g8963))
                         (begin
                           (write '(funapp 3609 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3610 23))
                           (display "\n")
                           'importer)
                         place-image)))
                     (x8961 (input))
                     (x8960 (input))
                     (x8959 (input))
                     (x8958 (input)))
                    (begin
                      (write '(funapp 3616 21))
                      (display "\n")
                      (x8962 x8961 x8960 x8959 x8958))))
                  (g8522
                   (letrec*
                    ((x8972
                      (begin
                        (write '(funapp 3620 23))
                        (display "\n")
                        ((lambda (j7542 k7543 f7544)
                           (letrec*
                            ((g8973
                              (lambda (g7540 g7541)
                                (letrec*
                                 ((g8974
                                   (letrec*
                                    ((x8975
                                      (letrec*
                                       ((x8977
                                         (begin
                                           (write '(funapp 3629 46))
                                           (display "\n")
                                           (real?/c j7542 k7543 g7540)))
                                        (x8976
                                         (begin
                                           (write '(funapp 3630 46))
                                           (display "\n")
                                           (real?/c j7542 k7543 g7541))))
                                       (begin
                                         (write '(funapp 3631 38))
                                         (display "\n")
                                         (f7544 x8977 x8976)))))
                                    (begin
                                      (write '(funapp 3632 35))
                                      (display "\n")
                                      (image? j7542 k7543 x8975)))))
                                 g8974))))
                            g8973))
                         (begin
                           (write '(funapp 3635 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3636 23))
                           (display "\n")
                           'importer)
                         empty-scene)))
                     (x8971 (input))
                     (x8970 (input)))
                    (begin
                      (write '(funapp 3640 21))
                      (display "\n")
                      (x8972 x8971 x8970))))
                  (g8523
                   (letrec*
                    ((x8979
                      (begin
                        (write '(funapp 3644 23))
                        (display "\n")
                        ((lambda (j7546 k7547 f7548)
                           (letrec*
                            ((g8980
                              (lambda (g7545)
                                (letrec*
                                 ((g8981
                                   (letrec*
                                    ((x8982
                                      (letrec*
                                       ((x8983
                                         (letrec*
                                          ((x8984
                                            (letrec*
                                             ((x8985
                                               (begin
                                                 (write '(funapp 3657 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3658 44))
                                               (display "\n")
                                               (and/c cons?/c x8985)))))
                                          (begin
                                            (write '(funapp 3659 41))
                                            (display "\n")
                                            (x8984 j7546 k7547 g7545)))))
                                       (begin
                                         (write '(funapp 3660 38))
                                         (display "\n")
                                         (f7548 x8983)))))
                                    (begin
                                      (write '(funapp 3661 35))
                                      (display "\n")
                                      (TETRA/C j7546 k7547 x8982)))))
                                 g8981))))
                            g8980))
                         (begin
                           (write '(funapp 3664 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3665 23))
                           (display "\n")
                           'importer)
                         list-pick-random)))
                     (x8978 (input)))
                    (begin
                      (write '(funapp 3668 21))
                      (display "\n")
                      (x8979 x8978))))
                  (g8524
                   (begin
                     (write '(funapp 3669 26))
                     (display "\n")
                     (integer?/c
                      (begin (write '(funapp 3669 37)) (display "\n") 'module)
                      (begin
                        (write '(funapp 3669 45))
                        (display "\n")
                        'importer)
                      neg-1)))
                  (g8525
                   (letrec*
                    ((x8999
                      (begin
                        (write '(funapp 3673 23))
                        (display "\n")
                        ((lambda (j7550 k7551 f7552)
                           (letrec*
                            ((g9000
                              (lambda (g7549)
                                (letrec*
                                 ((g9001
                                   (letrec*
                                    ((x9002
                                      (letrec*
                                       ((x9003
                                         (begin
                                           (write '(funapp 3682 46))
                                           (display "\n")
                                           (WORLD/C j7550 k7551 g7549))))
                                       (begin
                                         (write '(funapp 3683 38))
                                         (display "\n")
                                         (f7552 x9003)))))
                                    (begin
                                      (write '(funapp 3684 35))
                                      (display "\n")
                                      (image/c j7550 k7551 x9002)))))
                                 g9001))))
                            g9000))
                         (begin
                           (write '(funapp 3687 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3688 23))
                           (display "\n")
                           'importer)
                         world->image)))
                     (x8986
                      (letrec*
                       ((x8987
                         (letrec*
                          ((x8990
                            (letrec*
                             ((x8991
                               (letrec*
                                ((x8994
                                  (letrec*
                                   ((x8995
                                     (letrec*
                                      ((x8998 (input))
                                       (x8996
                                        (letrec*
                                         ((x8997 (input)))
                                         (begin
                                           (write '(funapp 3706 42))
                                           (display "\n")
                                           (cons
                                            x8997
                                            (begin
                                              (write '(funapp 3706 53))
                                              (display "\n")
                                              '()))))))
                                      (begin
                                        (write '(funapp 3707 39))
                                        (display "\n")
                                        (cons x8998 x8996)))))
                                   (begin
                                     (write '(funapp 3708 36))
                                     (display "\n")
                                     (cons
                                      (begin
                                        (write '(funapp 3708 41))
                                        (display "\n")
                                        'posn)
                                      x8995))))
                                 (x8992
                                  (letrec*
                                   ((x8993 (input)))
                                   (begin
                                     (write '(funapp 3712 36))
                                     (display "\n")
                                     (cons
                                      x8993
                                      (begin
                                        (write '(funapp 3712 47))
                                        (display "\n")
                                        '()))))))
                                (begin
                                  (write '(funapp 3713 33))
                                  (display "\n")
                                  (cons x8994 x8992)))))
                             (begin
                               (write '(funapp 3714 30))
                               (display "\n")
                               (cons
                                (begin
                                  (write '(funapp 3714 35))
                                  (display "\n")
                                  'tetra)
                                x8991))))
                           (x8988
                            (letrec*
                             ((x8989 (input)))
                             (begin
                               (write '(funapp 3716 56))
                               (display "\n")
                               (cons
                                x8989
                                (begin
                                  (write '(funapp 3716 67))
                                  (display "\n")
                                  '()))))))
                          (begin
                            (write '(funapp 3717 27))
                            (display "\n")
                            (cons x8990 x8988)))))
                       (begin
                         (write '(funapp 3718 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3718 29))
                            (display "\n")
                            'world)
                          x8987)))))
                    (begin
                      (write '(funapp 3719 21))
                      (display "\n")
                      (x8999 x8986))))
                  (g8526
                   (letrec*
                    ((x9005
                      (begin
                        (write '(funapp 3723 23))
                        (display "\n")
                        ((lambda (j7554 k7555 f7556)
                           (letrec*
                            ((g9006
                              (lambda (g7553)
                                (letrec*
                                 ((g9007
                                   (letrec*
                                    ((x9008
                                      (letrec*
                                       ((x9009
                                         (begin
                                           (write '(funapp 3732 46))
                                           (display "\n")
                                           (BSET/C j7554 k7555 g7553))))
                                       (begin
                                         (write '(funapp 3733 38))
                                         (display "\n")
                                         (f7556 x9009)))))
                                    (begin
                                      (write '(funapp 3734 35))
                                      (display "\n")
                                      (image/c j7554 k7555 x9008)))))
                                 g9007))))
                            g9006))
                         (begin
                           (write '(funapp 3737 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3738 23))
                           (display "\n")
                           'importer)
                         blocks->image)))
                     (x9004 (input)))
                    (begin
                      (write '(funapp 3741 21))
                      (display "\n")
                      (x9005 x9004))))
                  (g8527
                   (letrec*
                    ((x9017
                      (begin
                        (write '(funapp 3745 23))
                        (display "\n")
                        ((lambda (j7558 k7559 f7560)
                           (letrec*
                            ((g9018
                              (lambda (g7557)
                                (letrec*
                                 ((g9019
                                   (letrec*
                                    ((x9020
                                      (letrec*
                                       ((x9021
                                         (begin
                                           (write '(funapp 3754 46))
                                           (display "\n")
                                           (BLOCK/C j7558 k7559 g7557))))
                                       (begin
                                         (write '(funapp 3755 38))
                                         (display "\n")
                                         (f7560 x9021)))))
                                    (begin
                                      (write '(funapp 3756 35))
                                      (display "\n")
                                      (image/c j7558 k7559 x9020)))))
                                 g9019))))
                            g9018))
                         (begin
                           (write '(funapp 3759 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3760 23))
                           (display "\n")
                           'importer)
                         block->image)))
                     (x9010
                      (letrec*
                       ((x9011
                         (letrec*
                          ((x9016 (input))
                           (x9012
                            (letrec*
                             ((x9015 (input))
                              (x9013
                               (letrec*
                                ((x9014 (input)))
                                (begin
                                  (write '(funapp 3771 59))
                                  (display "\n")
                                  (cons
                                   x9014
                                   (begin
                                     (write '(funapp 3771 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 3772 30))
                               (display "\n")
                               (cons x9015 x9013)))))
                          (begin
                            (write '(funapp 3773 27))
                            (display "\n")
                            (cons x9016 x9012)))))
                       (begin
                         (write '(funapp 3774 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3774 29))
                            (display "\n")
                            'block)
                          x9011)))))
                    (begin
                      (write '(funapp 3775 21))
                      (display "\n")
                      (x9017 x9010))))
                  (g8528
                   (letrec*
                    ((x9030
                      (begin
                        (write '(funapp 3779 23))
                        (display "\n")
                        ((lambda (j7563 k7564 f7565)
                           (letrec*
                            ((g9031
                              (lambda (g7561 g7562)
                                (letrec*
                                 ((g9032
                                   (letrec*
                                    ((x9033
                                      (letrec*
                                       ((x9035
                                         (begin
                                           (write '(funapp 3788 46))
                                           (display "\n")
                                           (BLOCK/C j7563 k7564 g7561)))
                                        (x9034
                                         (begin
                                           (write '(funapp 3789 46))
                                           (display "\n")
                                           (image/c j7563 k7564 g7562))))
                                       (begin
                                         (write '(funapp 3790 38))
                                         (display "\n")
                                         (f7565 x9035 x9034)))))
                                    (begin
                                      (write '(funapp 3791 35))
                                      (display "\n")
                                      (image/c j7563 k7564 x9033)))))
                                 g9032))))
                            g9031))
                         (begin
                           (write '(funapp 3794 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3795 23))
                           (display "\n")
                           'importer)
                         place-block)))
                     (x9023
                      (letrec*
                       ((x9024
                         (letrec*
                          ((x9029 (input))
                           (x9025
                            (letrec*
                             ((x9028 (input))
                              (x9026
                               (letrec*
                                ((x9027 (input)))
                                (begin
                                  (write '(funapp 3806 59))
                                  (display "\n")
                                  (cons
                                   x9027
                                   (begin
                                     (write '(funapp 3806 70))
                                     (display "\n")
                                     '()))))))
                             (begin
                               (write '(funapp 3807 30))
                               (display "\n")
                               (cons x9028 x9026)))))
                          (begin
                            (write '(funapp 3808 27))
                            (display "\n")
                            (cons x9029 x9025)))))
                       (begin
                         (write '(funapp 3809 24))
                         (display "\n")
                         (cons
                          (begin
                            (write '(funapp 3809 29))
                            (display "\n")
                            'block)
                          x9024))))
                     (x9022 (input)))
                    (begin
                      (write '(funapp 3811 21))
                      (display "\n")
                      (x9030 x9023 x9022))))
                  (g8529
                   (letrec*
                    ((x9037
                      (begin
                        (write '(funapp 3815 23))
                        (display "\n")
                        ((lambda (j7567 k7568 f7569)
                           (letrec*
                            ((g9038
                              (lambda (g7566)
                                (letrec*
                                 ((g9039
                                   (letrec*
                                    ((x9040
                                      (letrec*
                                       ((x9041
                                         (letrec*
                                          ((x9042
                                            (letrec*
                                             ((x9043
                                               (begin
                                                 (write '(funapp 3828 52))
                                                 (display "\n")
                                                 (listof TETRA/C))))
                                             (begin
                                               (write '(funapp 3829 44))
                                               (display "\n")
                                               (and/c cons?/c x9043)))))
                                          (begin
                                            (write '(funapp 3830 41))
                                            (display "\n")
                                            (x9042 j7567 k7568 g7566)))))
                                       (begin
                                         (write '(funapp 3831 38))
                                         (display "\n")
                                         (f7569 x9041)))))
                                    (begin
                                      (write '(funapp 3832 35))
                                      (display "\n")
                                      (WORLD/C j7567 k7568 x9040)))))
                                 g9039))))
                            g9038))
                         (begin
                           (write '(funapp 3835 23))
                           (display "\n")
                           'module)
                         (begin
                           (write '(funapp 3836 23))
                           (display "\n")
                           'importer)
                         world0)))
                     (x9036 (input)))
                    (begin
                      (write '(funapp 3839 21))
                      (display "\n")
                      (x9037 x9036)))))
                 g8529))))
             g7606))))
         g7604)))
      g7603))))
